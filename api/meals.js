const express = require('express')
const crypto = require('crypto')
const { connection } = require('./conn')

const mealRouter = express.Router()

mealRouter.get('/mealsearch', (req,res) => {
    const{name,calories,carbohydrates,fat,protein,sodium,iron,cholesterol} = req.body

    //select meal and its components from database
    const sql = "SELECT * WHERE name =? FROM nigerianfoods and SELECT * WHERE name =? FROM alternativeoptions";
    connection.query(sql, function (err, result) {
        if (input) throw err;
    });
    res.json(results);
});

module.exports = mealRouter;


