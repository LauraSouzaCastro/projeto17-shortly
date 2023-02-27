import { Router } from "express";
import usersRouters from "./users.routers.js";

const router = Router();

router.use(usersRouters);

export default router;