import Router from 'express';
import { addGarageToLocation, getAllLocations, getNearByGarages } from '../controllers/location.js';
var router = Router();

router.get("/", getAllLocations);
// router.get("/register", addGarageToLocation);
router.get("/:id", getNearByGarages);

export default router;