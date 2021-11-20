import Router from "express";

import {
  acceptOrder,
  cancelOrder,
  completeOrder,
  getIncomingOrder,
  placeOrder,
  rejectOrder,
} from "../controllers/order.js";
import { login } from "../controllers/auth.js";
const router = Router();

router.post("/place_order", placeOrder);
router.get("/:id/incoming", getIncomingOrder);
router.patch("/:id/accept/:order_id", acceptOrder);
router.patch("/:id/reject/:order_id", rejectOrder);
router.delete("/:id/cancel/:order_id", cancelOrder);
router.patch("/:id/complete/:order_id", completeOrder);
router.post("/login", login);

export default router;
