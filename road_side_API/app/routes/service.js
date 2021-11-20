import { getAllServices } from "../controllers/service.js";
import Router from "express";

var router = Router();
router.get("/", getAllServices);

export default router;
