import express from "express";

import {
  getAbsensi,
  createAbsensi,
  deleteAbsen,
} from "../controllers/Absensi.js";
import { veryfyUser } from "../middleware/Authuser.js";

const router = express.Router();

router.get("/absen", veryfyUser, getAbsensi);
router.post("/absen", veryfyUser, createAbsensi);
router.delete("/absen/:id", veryfyUser, deleteAbsen);

export default router;
