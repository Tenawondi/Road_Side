import Service from "../model/Service.js";
export const addServices = (req, res) => {
  const arrServices = [
    { name: "quick fix" },
    { name: "towing" },
    { name: "wash" },
  ];
  if (!arrServices) {
    res.status(400).send({ message: "BAD REQUEST BODY CANT BE EMPTY" }).end();
  }
  Service.insertMany(arrServices)
    .then((data) => {
      if (!data) {
        console.log("No data was sent back ");
        res.status(204).send({ message: "NO CONTENT", services: data }).end();
      }
      res.status(200).send({ message: "Services Added", services: data }).end();
    })
    .catch((error) => {
      console.log(error);
      res.status(500).send({ message: "INTERNAL SERVER ERROR" }).end();
    });
};

export const getAllServices = async (req, res, next) => {
  const services = await Service.find({});
  res.status(200).send({ message: "OK", services });
};
