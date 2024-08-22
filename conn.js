const mysql = require('mysql2');

console.log(process.env.DBHOSTNAME, process.env.DBUSER, process.env.PASSWORD);

const connection = mysql.createConnection({
  host: process.env.DBHOSTNAME,
  user: process.env.DBUSER,
  password: process.env.PASSWORD,
  database: process.env.DBNAME,
  port: process.env.DBPORT,
});

// connect to database

connection.connect(err => {
  if (err) {
    console.error('Error connecting to the database:', err.stack);
    return;
  }
  console.log('Connected to the database as id ' + connection.threadId);
});

module.exports = {
  connection
};

