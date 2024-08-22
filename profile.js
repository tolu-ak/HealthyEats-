const express = require("express");
const { connection } = require("./conn");

const profileRouter = express.Router();

profileRouter.post("/", (req, res) => {
  const { email,firstname, lastname, age, gender, healthGoal } = req.body;

  // Check input
  if (!firstname || !lastname || age === undefined || !gender || !healthGoal) {
    return res
      .status(400)
      .json({ success: false, message: "All fields are required" });
  }
  console.log(firstname, lastname, age, gender, healthGoal);
  // Update user profile in the database
  const sql = `
        UPDATE users 
        SET firstname = ?, lastname = ?, age = ?, gender = ?, personal_health_goal = ? 
        WHERE email = ?
    `;

  connection.query(
    sql,
    [firstname, lastname, age, gender, healthGoal, email],
    (err, results) => {
      if (err) {
        console.error("Error updating profile: ", err);
        return res
          .status(500)
          .json({ success: false, message: "Error updating profile" });
      } else {
        if (results.affectedRows > 0) {
          res
            .status(200)
            .json({ success: true, message: "Profile updated successfully" });
        } else {
          res.status(404).json({ success: false, message: "User not found" });
        }
      }
    }
  );
});

module.exports = profileRouter;
