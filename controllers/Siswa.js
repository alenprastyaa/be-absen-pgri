import Siswa from "../models/siswaModel.js";
import User from "../models/userModel.js";
import { Op } from "sequelize";

export const getSiswa = async (req, res) => {
  try {
    let response;
    if (req.role === "admin") {
      response = await Siswa.findAll({
        attributes: ["uuid","kode_kelas", "nama_siswa"],
        include: [
          {
            model: User,
            attributes: ["name", "email"],
          },
        ],
      });
    } else {
      response = await Siswa.findAll({
        attributes: ["uuid","kode_kelas", "nama_siswa"],
        where: {
          userId: req.userId,
        },
        include: [
          {
            attributes: ["name", "email"],
            model: User,
          },
        ],
      });
    }
    res.status(200).json(response);
  } catch (error) {
    res.status(500).json({ msg: error.massage });
  }
};

export const createSiswa = async (req, res) => {
  const { kode_kelas, nama_siswa } = req.body;
  try {
      await Siswa.create({
      kode_kelas : kode_kelas,
      nama_siswa: nama_siswa,
      userId: req.userId,
    });
    res.status(201).json({ msg: "Siswa Created Successfuly" });
  } catch (error) {
    res.status(500).json({ msg: error.massage });
  }
};
