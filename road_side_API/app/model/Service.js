import mongoose from "mongoose";

const serviceSchema = mongoose.Schema(
    {
        name: String,
    }, 
    {
        toObject: {
          transform: function (doc, ret) {
            ret.id = ret._id
            delete ret._id;
          }
        },
        toJSON: {
          transform: function (doc, ret) {
            ret.id = ret._id
            delete ret._id;
          }
        }
    }
)


const Service = mongoose.model("service", serviceSchema);
export default Service;