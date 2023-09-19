import Siswa from "../models/siswaModel.js";
import User from "../models/userModel.js";
import { Op } from "sequelize";

export const getSiswa = async (req, res) => {
  try {
    let response;
    if (req.role === "admin") {
      response = await Siswa.findAll({
        attributes: ["uuid", "nama_siswa", "kode_kelas"],
      });
    } else {
      response = await Siswa.findAll({
        attributes: ["uuid", "nama_siswa", "kode_kelas"],
        where: {
          userId: req.userId,
        },
      });
    }
    res.status(200).json(response);
  } catch (error) {
    res.status(500).json({ msg: error.massage });
  }
};

export const createSiswa = async (req, res) => {
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
