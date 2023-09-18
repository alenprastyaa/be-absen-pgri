import express from "express";

import { getKelas } from "../controllers/Kelas.js";
import { veryfyUser } from "../middleware/Authuser.js";

const router = express.Router();

router.get("/siswa", veryfyUser, getKelas);
// router.post("/siswa", veryfyUser, createSiswa);
// router.delete("/absen/:id", veryfyUser, deleteAbsen);

export default router;
