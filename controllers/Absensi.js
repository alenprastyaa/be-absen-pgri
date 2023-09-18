import Absen from "../models/absensiModel.js";
import User from "../models/userModel.js";
import { Op } from "sequelize";
export const getAbsensi = async (req, res) => {
  try {
    let response;
    if (req.role === "admin") {
      response = await Absen.findAll({
        attributes: [
          "uuid",
          "nama_siswa",
          "kelas",
          "jenis_absen",
          "tanggal_absen",
        ],
        include: [
          {
            model: User,
            attributes: ["name", "email"],
          },
        ],
      });
    } else {
      response = await Absen.findAll({
        attributes: [
          "uuid",
          "nama_siswa",
          "kelas",
          "jenis_absen",
          "tanggal_absen",
        ],
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

export const createAbsensi = async (req, res) => {
  const { nama_siswa, kelas, jenis_absen } = req.body;
  try {
    await Absen.create({
      nama_siswa: nama_siswa,
      kelas: kelas,
      jenis_absen: jenis_absen,
      userId: req.userId,
    });
    res.status(201).json({ msg: "Absensi Created Successfuly" });
  } catch (error) {
    res.status(500).json({ msg: error.massage });
  }
};

export const deleteAbsen = async (req, res) => {
  try {
    const absen = await Absen.findOne({
      where: {
        uuid: req.params.id,
      },
    });
    if (!absen) return res.status(404).json({ msg: "Data tidak ditemukan" });
    const { nama_siswa, kelas, jenis_absen } = req.body;
    if (req.role === "admin") {
      await Absen.destroy({
        where: {
          id: absen.id,
        },
      });
    } else {
      if (req.userId !== absen.userId)
        return res.status(403).json({ msg: "Akses terlarang" });
      await absen.destroy({
        where: {
          [Op.and]: [{ id: absen.id }, { userId: req.userId }],
        },
      });
    }
    res.status(200).json({ msg: "Absen deleted successfuly" });
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};
