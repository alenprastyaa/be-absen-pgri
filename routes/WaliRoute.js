import express from "express";
import { getWalas, createWalas } from "../controllers/Walas.js";
import { veryfyUser } from "../middleware/Authuser.js";

const router = express.Router();

router.get("/walas", veryfyUser, getWalas);
router.post("/walas", veryfyUser, createWalas);

export default router;
