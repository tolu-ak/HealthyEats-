const mysql = require("mysql");

const connection = mysql.createConnection({
  host: process.env.DBHOSTNAME,
  user:  process.env.DBUSER,
  password: process.env.PASSWORD,
  database:"if0_37141202_healthyeatsDB",
  port: '3306',
});

// connect to database

connection.connect((err) => {
  if (err) {
    console.error("Error connecting to the database:", err.stack);
    return;
  }
  console.log("Connected to the database as id " + connection.threadId);
});

module.exports = {
  connection,
};
