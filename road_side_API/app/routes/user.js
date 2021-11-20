import Router from "express";
import {
  getAllUsers,
  getUserByID,
  deleteUser,
  getUserOrderHistory,
  getUserOnGoingServices,
  updateUser,
  // login,
  // register
} from "../controllers/user.js";
import { register, login } from "../controllers/auth.js";

var router = Router();

router.post("/register", register);
router.post("/login", login);

router.get("/", getAllUsers);
router.get("/:_id", getUserByID);
router.get("/:id/order-history", getUserOrderHistory);
router.get("/:id/active-services", getUserOnGoingServices);
router.delete("/:id", deleteUser);
router.put("/:id", updateUser);

export default router;
