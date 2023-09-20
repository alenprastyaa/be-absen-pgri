import Kelas from "../models/kelasModel.js";

export const getKelas = async (req, res) => {
  try {
    let response;
    response = await Kelas.findAll({
      attributes: ["kode_kelas", "nama_Kelas"],
    });
    res.status(200).json(response);
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

export const createkelas = async (req, res) => {
  try {
    await Kelas.create(req.body);
    res.status(201).json({ msg: "Kelas Created" });
  } catch (error) {
    console.log(error.message);
  }
};
