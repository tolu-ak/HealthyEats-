const express = require('express');
const { connection } = require('./conn');

const profileRouter = express.Router();

profileRouter.post('/update', (req, res) => {
    const { email, firstname, lastname, age, gender, healthGoal } = req.body;

    // Check input
    if (!email || !firstname || !lastname || age === undefined || !gender || !healthGoal) {
        return res.status(400).send("All fields are required");
    }

    // Update user profile in the database
    const sql = `
        UPDATE users 
        SET firstname = ?, lastname = ?, age = ?, gender = ?, healthGoal = ? 
        WHERE email = ?
    `;

    connection.query(sql, [firstname, lastname, age, gender, healthGoal, email], (err, results) => {
        if (err) {
            console.error("Error updating profile: ", err);
            return res.status(500).send("Error updating profile");
        } else {
            if (results.affectedRows > 0) {
                res.status(200).send("Profile updated successfully");
            } else {
                res.status(404).send("User not found");
            }
        }
    });
});

module.exports = profileRouter;
