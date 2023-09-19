import { Sequelize } from "sequelize";
import db from "../config/Database.js";
import Users from "./userModel.js";

const { DataTypes } = Sequelize;

const Kelas = db.define(
  "kelas",
  {
    // userId: {
    //   type: DataTypes.STRING,
    //   defaultValue: DataTypes.UUIDV4,
    //   allowNull: false,
    //   validate: {
    //     notEmpty: true,
    //   },
    // },
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

Users.hasMany(Kelas);
Kelas.belongsTo(Users, { foreignKey: "userId" });
export default Kelas;
