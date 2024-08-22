const express = require("express");
const crypto = require("crypto");
const { connection } = require("./conn");

const authRouter = express.Router(); // Create authentication router

// Password encryption function
const encryptPassword = (password) => {
  const hash = crypto.createHash("sha256");
  hash.update(password);
  return hash.digest("hex");
};

// Sign-up route
// authRouter.post("/signup", (req, res) => {
//   const { email, password, firstame, lastname } = req.body;

//   // Encrypt the password
//   const encryptedPassword = encryptPassword(password);

//   // SQL query to insert new user
//   const sql =
//     "INSERT INTO users (firstname, lastname, email, password) VALUES (?, ?, ?, ?)";
//   connection.query(
//     sql,
//     [firstname, lastname, email, encryptedPassword],
//     (err, result) => {
//       if (err) {
//         console.error(err);
//         return res
//           .status(500)
//           .json({ success: false, message: "Error creating user" });
//       }
//       console.log("1 record inserted");
//       res
//         .status(201)
//         .json({ success: true, message: "User created successfully" });
//     }
//   );
// });

// Login route
authRouter.post("/login", (req, res) => {
  const { email, password } = req.body;
  const encryptedPassword = encryptPassword(password); // Encrypt the provided password

  const sql = "SELECT email, password FROM users WHERE email = ?";
  connection.query(sql, [email], (err, results) => {
    if (err) {
      console.error(err);
      return res
        .status(500)
        .json({ success: false, message: "Internal Server Error" });
    }

    // Check if the user is found
    if (results.length > 0) {
      const user = results[0]; // Extract result of query from database

      // Compare the encrypted password
      if (user.password === encryptedPassword) {
        console.log("You have logged in successfully!");
        return res
          .status(200)
          .json({
            success: true,
            message: "Login successful",
            redirectUrl: "/profile.html",
          });
      } else {
        return res
          .status(401)
          .json({ success: false, message: "Incorrect username or password" });
      }
    } else {
      const { email, password} = req.body;

      // Encrypt the password
      const encryptedPassword = encryptPassword(password);

      // SQL query to insert new user
      const sql =
        "INSERT INTO users (email, password) VALUES (?, ?)";
      connection.query(
        sql,
        [email, encryptedPassword],
        (err, result) => {
          if (err) {
            console.error(err);
            return res
              .status(500)
              .json({ success: false, message: "Error creating user" });
          }
          console.log("1 record inserted");
          res
            .status(201)
            .json({ success: true, message: "User created successfully" });
        }
      );

    }
  });
});

module.exports = authRouter;
