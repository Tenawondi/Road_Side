import mongoose from "mongoose";

const locationSchema = mongoose.Schema(
  {
    name: {
      type: String,
      lowercase: true,
      unique: true,
      required: true,
    },
    garages_available: [
      {
        type: [mongoose.Schema.Types.ObjectId],
        ref: "garage",
      },
    ],
  },
  {
    toObject: {
      transform: function (doc, ret) {
        ret.id = ret._id;
        delete ret._id;
      },
    },
    toJSON: {
      transform: function (doc, ret) {
        ret.id = ret._id;
        delete ret._id;
      },
    },
  }
);

const Location = mongoose.model("location", locationSchema);
export default Location;
