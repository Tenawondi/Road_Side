import mongoose from "mongoose";

// schema for contact of garage
const contact_schema = mongoose.Schema({
  email: {
    type: String,
    required: true,
    lowercase: true,
  },
  phone_number: {
    type: Array,
    required: true,
  },
});

const garage_schema = mongoose.Schema(
  {
    name: {
      type: String,
    },
    user_name: {
      type: String,
      lowercase: true,
      unique: true,
    },
    password: {
      type: String,
      required: true,
      min: 6,
    },
    description: {
      type: String,
    },
    location: [String],
    contact: {
      type: [contact_schema],
      default: undefined,
    },
    opening_hour: {
      type: String,
      required: true,
    },
    closing_hour: {
      type: String,
      required: true,
    },
    services: [
      {
        type: mongoose.Schema.Types.ObjectId,
        ref: "service",
        required: true,
      },
    ],
    role: {
      type: String,
      default: "Garage",
      lowercase: true,
    },
    incoming_requests: [
      {
        type: mongoose.Schema.Types.ObjectId,
        ref: "order",
      },
    ],
    ongoing_services: [
      {
        // only order ids are stored for ongoing services
        type: mongoose.Schema.Types.ObjectId,
        ref: "order",
      },
    ],
    order_history: [
      {
        // only order ids are stored for ongoing services
        type: mongoose.Schema.Types.ObjectId,
        ref: "order",
      },
    ],
    token: {
      type: String,
    },
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

const Garage = mongoose.model("garage", garage_schema);

export default Garage;
