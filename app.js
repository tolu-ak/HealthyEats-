require('dotenv').config();
const express = require("express"); //import express library so you can use its features  express is a framework for node that makes building websites easier
const mysql = require("mysql"); // import sql client library and allow it to interact with database
const morgan = require("morgan"); //imports morgan
// const bodyParser = require("body-parser"); //imports body-parser that helps parse requests in a middleware
const cors = require("cors"); //protects it so someone from another IP address cant access it
const { connection } = require("./conn"); //import database connection


const path = require("path");
const app = express(); //create express function, app is an instance of express
console.log(process.env.PORT);
const port = process.env.PORT || 3000; //3000 is the port number that the server will listen for incoming requests on.

app.use(cors()); //cors grants it access for all routes- allows all origins
app.use(morgan('tiny'));
app.use(express.json());
// app.use(bodyParser.json()); // middleware to parse JSON bodies


//temporary database that i am not using anymore

// const users = { user: "password" }; //temporary database that will add the persons's name
// // 'user': 'password' // username: password //user is a key
// // }
// //a key can only exist in a object is if a value is associated with it

// // Login endpoint
// app.post("/login", (req, res) => {
//   //define POST route for login.
//   const { username, password } = req.body; //extract user and pass form request body
//   if (users[username]) {
//     //checks if the value of username is in users
//     if (users[username] === password) {
//       // checks if the password matches
//       return res.json({ success: true, redirectUrl: "/profile.html" });
//     } else {
//       return res.json({
//         success: false,
//         message: "Invalid username or password",
//       });
//     }
//   } else {
//     users[username] = password; // Adds the new username and password to the database
//     return res.json({
//       success: true,
//       message: "User registered successfully",
//       redirectUrl: "/profile.html",
//     });
//   }
// });





//connect to DB

// connection.connect((err) => {
//   if (err) {
//     throw err;
//   } else {
//     console.log("Connected to DB");
//   }
// });


// const { pool } = require("./conn");

// pool.getConnection((err, connection) => {
//   if (err) throw err;
//   console.log("Connected to the database!");
//   connection.release(); // Release the connection back to the pool
// });






//import routers 
const authRouter= require('./authentication');
const profileRouter= require('./profile');
const mealsRouter = require('./meals');
const restaurantRouter = require('./restaurant');
const questionsRouter= require('./questions');



//use routers
app.use('/auth',authRouter);
app.use('/meal',mealsRouter);
app.use('/rest',restaurantRouter);
app.use('/question',questionsRouter);
app.use('/profile',profileRouter);



app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}/`); //starting the server, listen on the defined port & run a message when it starts
});

// to run write npm because it is the package manager like a tool that helps to run this script so in this case 
// it is npm run start
