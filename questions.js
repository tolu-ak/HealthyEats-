const express = require('express');
const { connection } = require('./conn');

const questionRouter = express.Router();

questionRouter.post('/submit', (req, res) => {
    const { question } = req.body;

    if (!question) {
        return res.status(400).send("Question is required");
    }

    const sql = "INSERT INTO questions (question) VALUES (?)";

    connection.query(sql, [question], (err, results) => {
        if (err) {
            throw(err);
            console.error("Error inserting question: ", err);
        } else {
            res.status(200).send("Question submitted successfully");
        }
    });
});

module.exports = questionRouter;

