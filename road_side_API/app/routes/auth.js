import { register, login } from "../controllers/auth.js";
import Router from "express";

var router = Router();


router.post("/register", register);
router.post("/login", login);

export default router;
