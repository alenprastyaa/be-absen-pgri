import { Sequelize } from "sequelize";
import db from "../config/Database.js";

const { DataTypes } = Sequelize;

const Kelas = db.define(
  "kelas",
  {
    uuid: {
      type: DataTypes.STRING,
      defaultValue: DataTypes.UUIDV4,
      allowNull: false,
      validate: {
        notEmpty: true,
      },
    },
    kode_kelas: {
      type: DataTypes.INTEGER,
      allowNull: false,
      unique: true,
      validate: {
        notEmpty: true,
      },
    },
    nama_kelas: {
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

export default Kelas;
