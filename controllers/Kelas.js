import Kelas from "../models/kelasModel.js";
import User from "../models/userModel.js";

export const getKelas = async (req, res) => {
  try {
    let response;
    if (req.role === "admin") {
      response = await Kelas.findAll({
        attributes: ["uuid", "nama_Kelas", "nama_walas"],
        include: [
          {
            model: User,
            attributes: ["name", "email"],
          },
        ],
      });
    } else {
      response = await Kelas.findAll({
        attributes: ["uuid", "nama_Kelas", "nama_walas"],
        include: [
          {
            model: User,
            attributes: ["name", "email"],
          },
        ],
      });
    }
    res.status(200).json(response);
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};
