import User  from '../model/User.js';
import bcrypt from "bcryptjs";
import { ObjectId } from "bson";
import jwt from 'jsonwebtoken';
export const getAllUsers = (req, res, next) => {
  res
  .status(200)
  .send({
    message: "OK",
    users: [{name:"meti"}, {name:"Adane"}]
  })
  .end();
};

export const getUserByID = (req, res, next) => {
  const user_id = req.params.id;
  if (!user_id) {
    res
    .status(400)
    .send({message:"BAD REQUEST id needs to be specified"})
    .end();
  }
  User.findById(user_id)
  .populate("favorites", "name location contact description")
  .then(data => {
    if (!data) {
      return res.status(404).send({message: "USER NOT FOUND"}).end()
    }
    res.status(200).send({message:"OK", user: data}).end()

  }).catch (error => {
    if (error.name === "CastError") {
      return res
        .status(422)
        .send({message: "BAD REQUEST INVLAID ID TYPE "})
        .end()
    } 
    return res
    .status(500).
    send({message: "INTERNAL SERVER ERROR"})
    .end()
  }) 
  

};

export const deleteUser = async (req, res) => {
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
      const userExists = await User.findById(id);
      if (!userExists) {
        return res
          .status(404)
          .send({ messgage: "NOT FOUND no User with this id" })
          .end();
      } else {
        try {
          const deletedUser = await User.findByIdAndRemove(id);
          return res
            .status(204)
            .send({ messgage: "NO CONTENT User deleted", deletedUser });
        } catch (error) {
          return res
            .status(500)
            .send({ message: error || "INTERNAL SERVER ERROR", deletedUser })
            .end();
        }
      }
    };

    export const updateUser = async (req, res) => {
      const id = req.params.id;
      if (!req.body) {
        return res
          .status(400)
          .send({
            message: "BAD REQUEST Data to update can not be empty!",
          })
          .end();
      }
      if (!ObjectId.isValid(id))
    return res
      .status(422)
      .send({ message: "Unprocessable Entity invalid id type" })
      .end();
  const isPasswordUpdated = req.body.password;
  // hash password if user has updated password
  if (isPasswordUpdated) {
    req.body.password = await bcrypt.hash(req.body.password, 10);
  }
  try {
    const isUpdated = await User.findByIdAndUpdate(id, req.body);
    if (!isUpdated)
      return res
        .status(404)
        .send({
          message: `NOT FOUND`,
        })
        .end();
    else {
      const updatedUserData = await User.findById(id);
      return res
        .status(201)
        .send({
          message: "User updated",
          user: updatedUserData,
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


export const getUserOrderHistory = async (req, res) => {
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
      const user = await User.findById(id).populate("order_history");
  if (!user) {
    return res
      .status(404)
      .send({ messgage: "NOT FOUND no User with this id" })
      .end();
  } else {
    return res
      .status(200)
      .send({
        messgage: "OK",
        order_history: user.order_history,
      })
      .end();
  }
};

export const getUserOnGoingServices = async (req, res) => {
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
      const user = await User.findById(id).populate("ongoing_services");
      if (!user) {
        return res
          .status(404)
          .send({ messgage: "NOT FOUND no User with this id" })
          .end();
      } else {
        return res
          .status(200)
          .send({
            messgage: "OK",
            services: user.ongoing_services,
          })
          .end();
      }
};



    















