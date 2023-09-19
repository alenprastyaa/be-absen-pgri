import express from "express";

import { getUser, createUser } from "../controllers/Users.js";
import { adminOnly, veryfyUser } from "../middleware/Authuser.js";

const router = express.Router();

router.get("/user", veryfyUser, getUser);
router.post("/user", createUser);
// router.post("/login", login);
// router.delete("/logout", logOut);

export default router;
