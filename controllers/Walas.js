import Walas from "../models/walasModel.js";

export const getWalas = async (req, res) => {
  try {
    const response = await Walas.findAll({
      attributes: ["uuid", "nip", "nama_walas", "kelas"],
    });
    res.status(200).json(response);
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

export const createWalas = async (req, res) => {
  const { nip, nama_walas, kelas } = req.body;
  try {
    await Walas.create({
      nip: nip,
      nama_walas: nama_walas,
      kelas: kelas,
      userId: req.userId,
    });
    res.status(201).json({ msg: "Walas Created Successfuly" });
  } catch (error) {
    res.status(500).json({ msg: error.massage });
  }
};
