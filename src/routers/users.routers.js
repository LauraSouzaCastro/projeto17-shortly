import { Router } from "express";
import { signUp } from "../controllers/users.controllers.js";
import { validateSchema } from "../middlewares/validateSchema.middleware.js";
import { usersSchema } from "../schemas/users.schemas.js";

const router = Router();

router.post("/signup", validateSchema(usersSchema), signUp);

export default router;