import { Sequelize } from "sequelize";
import db from "../config/Database.js";

const { DataTypes } = Sequelize;

const Walas = db.define(
  "walas",
  {
    uuid: {
      type: DataTypes.STRING,
      defaultValue: DataTypes.UUIDV4,
      allowNull: false,
      validate: {
        notEmpty: true,
      },
    },
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
      unique: true,
      validate: {
        notEmpty: true,
      },
    },
  },
  {
    freezeTableName: true,
  }
);

export default Walas;
