import bcrypt from "bcryptjs";
import { ObjectId } from "bson";
import jwt from "jsonwebtoken";
import Garage from "../model/Garage.js";
import Location from "../model/Location.js";

export const getAllGarages = async (req, res, next) => {
  try {
    const garages = await Garage.find(
      {},
      "_id name description opening_hour closing_hour location services contact"
    ).populate("services");

    if (!garages) {
      return res
        .status(204)
        .send({ messgage: "NO CONTENT no garges registered" })
        .end();
    } else {
      return res.status(200).send({ messgage: "OK", garages });
    }
  } catch (err) {
    res
      .status(500)
      .send({ messgage: err || "INTERNAL SERVER ERROR" })
      .end();
  }
};

export const getGarageById = async (req, res, next) => {
  const id = req.params.id;

  if (!id)
    return res
      .status(400)
      .send({ messgage: "BAD REQUEST missing inputs" })
      .end();
  if (!ObjectId.isValid(id))
    return res
      .status(422)
      .send({ message: "Unprocessable Entity invalid id type" })
      .end();
  try {
    const garageData = await Garage.findById(id)
      .populate("services")
      .populate("ongoing_services")
      .populate("order_history");
    if (!garageData)
      return res
        .status(404)
        .send({ messgage: "NOT FOUND no garage with this id" })
        .end();
    return res.status(200).send({ messgage: "OK", garage: garageData });
  } catch (error) {
    return res.status(500).send({ message: "INTERNAL SERVER ERROR" }).end();
  }
};

export const addNewGarage = async (req, res, next) => {
  let garage = req.body;

  if (!(garage && Object.keys(garage).length >= 8)) {
    return res
      .status(400)
      .send({ message: "BAD REQUEST missing inputs" })
      .end();
  }
  const query = {
    $or: [{ name: garage.name }, { user_name: garage.user_name }],
  };

  const garageExists = await Garage.find(query);
  if (garageExists.length)
    return res.status(409).send("Garage already exists").end();
  //Encrypt password
  try {
    let pin = Math.floor(1000 + Math.random() * 9000);
    console.log(pin);
    garage.password = await bcrypt.hash(pin.toString(), 10);
    console.log(garage.password);
    const newGarage = await new Garage(garage).save();
    if (!newGarage)
      return res
        .status(500)
        .send({ message: "INTERNAL SERVER ERROR on saving" })
        .end();

    const updateDocument = {
      $push: { garages_available: newGarage._id },
    };
    garage.location.forEach(async (location) => {
      let query = { name: location };
      await Location.updateOne(query, updateDocument);
    });
    const token = jwt.sign(
      { id: garage._id, user_name: garage.user_name },
      process.env.TOKEN_KEY,
      {
        expiresIn: "2h",
      }
    );
    // save garage token
    garage = newGarage;
    garage.token = token;
    return res.status(201).send({ message: "CREATED", garage }).end();
  } catch (error) {
    console.log("error catched", error);
    return res
      .status(500)
      .send({ messgae: error || "INTERNAL SERVER error" })
      .end();
  }
};

export const updateGarage = async (req, res, next) => {
  const garage = req.body;
  if (!garage) {
    return res
      .status(400)
      .send({
        message: "Data to update can not be empty!",
      })
      .end();
  }
  const id = req.params.id;
  if (garage.password) {
    garage.password = await bcrypt.hash(garage.password, 10);
  }

  try {
    const isUpdated = await Garage.findByIdAndUpdate(id, garage);
    if (!isUpdated)
      return res
        .status(404)
        .send({
          message: `NOT FOUND`,
        })
        .end();
    else {
      const updatedGarageData = await Garage.findById(id).populate("services");
      return res
        .status(201)
        .send({
          message: "User updated",
          garage: updatedGarageData,
        })
        .end();
    }
  } catch (error) {
    console.log(error);
    return res
      .status(500)
      .send({
        message: error || "Error updating Tutorial with id=" + id,
      })
      .end();
  }
};
export const deleteGarage = async (req, res, next) => {
  const id = req.params.id;
  if (!id)
    return res
      .status(400)
      .send({ messgage: "BAD REQUEST missing inputs" })
      .end();
  if (!ObjectId.isValid(id))
    return res
      .status(422)
      .send({ message: "Unprocessable Entity invalid id type" })
      .end();

  const userExists = await Garage.findById(id);
  console.log(userExists);
  if (!userExists) {
    return res
      .status(404)
      .send({ messgage: "NOT FOUND no garage with this id" })
      .end();
  } else {
    try {
      const deletedGarage = await Garage.findByIdAndRemove(id);
      return res
        .status(204)
        .send({ messgage: "NO CONTENT garage deleted", deletedGarage });
    } catch (error) {
      return res
        .status(500)
        .send({ message: error || "INTERNAL SERVER ERROR", deletedGarage })
        .end();
    }
  }
};
