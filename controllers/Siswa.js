import Siswa from "../models/siswaModel.js";
import User from "../models/userModel.js";
import { Op } from "sequelize";

export const getSiswa = async (req, res) => {
  try {
    let response;
    if (req.role === "admin") {
      response = await Siswa.findAll({
        attributes: ["nis", "nama_siswa", "kode_kelas"],
        include: [
          {
            model: User,
          },
        ],
      });
    } else {
      response = await Siswa.findAll({
        attributes: ["nis", "nama_siswa", "kode_kelas"],
        include: [
          {
            model: User,
          },
        ],
=======
        attributes: ["uuid", "nama_siswa", "kode_kelas"],
      });
    res.status(200).json(response);
  } catch (error) {
    res.status(500).json({ msg: error.massage });
  }
};

export const createSiswa = async (req, res) => {
  const { nis, nama_siswa, kode_kelas } = req.body;
  try {
    await Siswa.create({
      nis: nis,
      nama_siswa: nama_siswa,
      kode_kelas: kode_kelas,
=======
  const { nama_siswa, kelas } = req.body;
  try {
    await Siswa.create({
      nama_siswa: nama_siswa,
      kelas: kelas,
      userId: req.userId,
    });
    res.status(201).json({ msg: "Siswa Created Successfuly" });
  } catch (error) {
    res.status(500).json({ msg: error.massage });
  }
};
