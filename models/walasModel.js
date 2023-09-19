import { Sequelize } from "sequelize";
import db from "../config/Database.js";
import Kelas from "./kelasModel.js";

const { DataTypes } = Sequelize;

const Walas = db.define(
  "walas",
  {
    nip: {
      type: DataTypes.INTEGER,
      allowNull: false,
      unique: true,
      validate: {
        notEmpty: true,
      },
    },
    nama_walas: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        notEmpty: true,
      },
    },
    kode_kelas: {
      type: DataTypes.INTEGER,
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

Kelas.hasMany(Walas);
Walas.belongsTo(Kelas, { foreignKey: "kode_kelas" });

export default Walas;
