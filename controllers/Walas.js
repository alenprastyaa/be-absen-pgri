import Walas from "../models/walasModel.js";
import Kelas from "../models/kelasModel.js";

export const getWalas = async (req, res) => {
  try {
    const response = await Walas.findAll({
      attributes: ["nip", "nama_walas", "kode_kelas"],
      include: [
        {
          model: Kelas,
        },
      ],
    });
    res.status(200).json(response);
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

export const createWalas = async (req, res) => {
  const { nip, nama_walas, kode_kelas } = req.body;
  try {
    await Walas.create({
      nip: nip,
      nama_walas: nama_walas,
      kode_kelas: kode_kelas,
      userId: req.userId,
    });
    res.status(201).json({ msg: "Walas Created Successfuly" });
  } catch (error) {
    res.status(500).json({ msg: error.massage });
  }
};
