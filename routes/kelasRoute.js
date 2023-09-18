import express from "express";

import { getKelas, createkelas } from "../controllers/Kelas.js";
import { veryfyUser } from "../middleware/Authuser.js";

const router = express.Router();

router.get("/kelas", veryfyUser, getKelas);
router.post("/kelas", veryfyUser, createkelas);
// router.delete("/absen/:id", veryfyUser, deleteAbsen);

export default router;
