import Location from "../model/Location.js";

export const addLocations = (req, res) => {
  const locations = [{ name: "wesen" }, { name: "Abo" }, { name: "mexico" }];
  Location.insertMany(locations)
    .then((data) => {
      if (!data) res.status(400).send({ messgae: "BAD REQUEST" }).end();
      res
        .status(200)
        .send({ messgae: "OK LOCATIONS ADDED", locations: data })
        .end();
    })
    .catch((err) => {
      res
        .status(500)
        .send({ messgae: "INTERNAL SERVER ERROR", locations: data })
        .end();
    });
};

export const addGarageToLocation = (req, res) => {
  const location_name = req.params.location_name;
  const garage_id = req.body.garage_id;
  console.log("#####################################");
  console.log(req.params);
  console.log("#####################################");
  console.log(req.body);
  if (!(garage_id && location_name)) {
    res
      .status(400)
      .send({ messgae: "BAD REQUEST all fields are required" })
      .end();
  }
  const query = { name: location_name };
  const updateDocument = {
    $push: { garages_available: garage_id },
  };
  Location.updateOne(query, updateDocument)
    .then((data) => {
      if (!data) {
        res.status(404).send({ messgae: "NOT FOUND couldnt update" }).end();
      }
      res.status(204).send({ message: "NO RESPONSE CONTENT" }).end();
    })
    .catch((err) => {
      res
        .status(500)
        .send({ messgae: err || "INTERNAL SERVER error" })
        .end();
    });
};

export const getNearByGarages = (req, res) => {
  //send partial data -- available garages becha
  const location_name = req.params.location_name;
  if (!location_name)
    res.status(400).send("BAD REQUEST all inputs are required").end();
  const query = { name: location_name };
  Location.findOne(query, "garages_available", (err, data) => {
    if (err)
      res
        .status(500)
        .send(err || "SERVER INTERNAL ERROR")
        .end();
    if (!data) res.status(404).send("Could not find Available garages").end();
    res.status(206).send({ message: "OK", garages: data }).end();
  });
};

export const getAllLocations = (req, res) => {
  // send back name of locations only
  Location.find({}, "name", function (err, data) {
    if (err) {
      res
        .status(500)
        .send("INTERNAL SERVER ERROR || Soemthign went wrong whilr retriving ")
        .end();
    }
    if (!data) {
      res.status(404).send("NOT FOUND || no locations found ").end();
    }
    res.status(200).send({ message: "OK", locations: data }).end();
  });
};
