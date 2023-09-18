import { Sequelize } from "sequelize";
import Users from "./userModel.js";
import db from "../config/Database.js";

const { DataTypes } = Sequelize;

const Absensi = db.define(
  "absensi",
  {
    uuid: {
      type: DataTypes.STRING,
      defaultValue: DataTypes.UUIDV4,
      allowNull: false,
      validate: {
        notEmpty: true,
      },
    },
    nama_siswa: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        notEmpty: true,
      },
    },
    kelas: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        notEmpty: true,
      },
    },
    userId: {
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
    tanggal_absen: {
      type: DataTypes.DATEONLY,
      allowNull: false,
      defaultValue: new Date(),
    },
  },
  {
    freezeTableName: true,
  }
);

Users.hasMany(Absensi);
Absensi.belongsTo(Users, { foreignKey: "userId" });
export default Absensi;
