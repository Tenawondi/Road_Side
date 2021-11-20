import mongoose from "mongoose";

const rating_Schema = {
  garage_id: {
    type: mongoose.Schema.Types.ObjectId,
    ref: "Garage",
  },
  rating: {
    type: Number,
  },
};
const userSchema = mongoose.Schema(
  {
    first_name: {
      type: String,
      required: true,
    },
    last_name: {
      type: String,
      required: true,
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
    role: {
      type: String,
      default: "user",
      lowercase: true,
    },
    profile_picture: {
      type: String,
    },
    phone_number: {
      type: String,
      required: true,
      unique: true,
      min: 10,
    },
    email: {
      type: String,
      lowercase: true,
      unique: true,
    },
    order_history: {
      type: Array,
    },
    token: {
      type: String,
    },

    ongoing_services: {
      // can be retrived from order_history
      type: Array,
    },
    favorites: {
      type: [mongoose.Schema.Types.ObjectId],
      ref: "garage",
    },
    rated_garages: {
      type: [rating_Schema],
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

const User = mongoose.model("user", userSchema);
export default User;
