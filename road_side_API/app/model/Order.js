import mongoose from "mongoose";

const order_schema = mongoose.Schema(
  {
    user_id: {
      type: mongoose.Schema.Types.ObjectId,
      ref: "user",
      required: true,
    },
    garage_id: {
      type: mongoose.Schema.Types.ObjectId,
      ref: "garage",
      required: true,
    },
    service_id: {
      type: mongoose.Schema.Types.ObjectId,
      ref: "service",
      required: true,
    },
    description: {
      type: String,
    },
    issued_date: {
      type: Date,
      default: Date.now,
      required: true,
    },
    completed_at: {
      type: Date,
    },
    status: {
      type: String,
    },
    is_placed: {
      type: String,
      default: "pending",
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

const Order = mongoose.model("order", order_schema);
export default Order;
