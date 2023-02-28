import { Router } from "express";
import { signUp, signIn, getUser } from "../controllers/users.controllers.js";
import { validateSchema } from "../middlewares/validateSchema.middleware.js";
import { signUpSchema, signInSchema } from "../schemas/users.schemas.js";
import { authValidation } from "../middlewares/authentication.middlewares.js";

const router = Router();

router.post("/signup", validateSchema(signUpSchema), signUp);
router.post("/signin", validateSchema(signInSchema), signIn);
router.get("/users/me", authValidation, getUser);

export default router;