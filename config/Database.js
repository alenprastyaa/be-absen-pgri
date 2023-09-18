import { Sequelize } from "sequelize";

const db = new Sequelize("absen-pgri", "root", "", {
  host: "localhost",
  dialect: "mysql",
});

export default db;
