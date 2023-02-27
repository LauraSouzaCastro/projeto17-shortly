import { Router } from "express";
import { signUp, signIn } from "../controllers/users.controllers.js";
import { validateSchema } from "../middlewares/validateSchema.middleware.js";
import { signUpSchema, signInSchema } from "../schemas/users.schemas.js";

const router = Router();

router.post("/signup", validateSchema(signUpSchema), signUp);
router.post("/signin", validateSchema(signInSchema), signIn);

export default router;