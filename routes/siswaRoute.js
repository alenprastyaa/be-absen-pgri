import express from "express";

import { getSiswa, createSiswa } from "../controllers/Siswa.js";
import { veryfyUser } from "../middleware/Authuser.js";

const router = express.Router();

router.get("/siswa", veryfyUser, getSiswa);
router.post("/siswa", veryfyUser, createSiswa);
// router.delete("/absen/:id", veryfyUser, deleteAbsen);

export default router;
