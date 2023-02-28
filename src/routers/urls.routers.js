import { Router } from "express";
import { authValidation } from "../middlewares/authentication.middlewares.js";
import { urlSchema } from "../schemas/urls.schemas.js";
import { shorten } from "../controllers/urls.controllers.js";
import { validateSchema } from "../middlewares/validateSchema.middleware.js";

const router = Router();

router.use(authValidation);
router.post("/urls/shorten", validateSchema(urlSchema), shorten);

export default router;