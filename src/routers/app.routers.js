import { Router } from "express";
import usersRouters from "./users.routers.js";
import urlsRouters from "./urls.routers.js";

const router = Router();

router.use(usersRouters);
router.use(urlsRouters);

export default router;