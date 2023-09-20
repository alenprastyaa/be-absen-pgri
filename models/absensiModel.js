import { Sequelize } from "sequelize";
import Kelas from "./kelasModel.js";
import Siswa from "./siswaModel.js";
import db from "../config/Database.js";

const { DataTypes } = Sequelize;

const Absensi = db.define(
  "absensi",
  {
    nis: {
      type: DataTypes.INTEGER,
      allowNull: false,
      validate: {
        notEmpty: true,
      },
    },
    jenis_absen: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        notEmpty: true,
      },
    },
  },
  {
    freezeTableName: true,
  }
);
// Siswa.hasOne(Absensi);
// Absensi.belongsTo(Siswa, { foreignKey: "nis" });

Kelas.hasMany(Absensi);
Absensi.belongsTo(Kelas, { foreignKey: "userId" });

Absensi.belongsTo(Siswa, { foreignKey: "nis", targetKey: "nis" });

Kelas.hasMany(Absensi);
Absensi.belongsTo(Kelas, { foreignKey: "kode_kelas" });
export default Absensi;
