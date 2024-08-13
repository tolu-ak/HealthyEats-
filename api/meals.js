
const express = require('express')
const crypto = require('crypto')
const { connection } = require('./conn')

const mealRouter = express.Router()

mealRouter.post('/mealsearch', (req,res) => {
    const meal = req.body.meal;
    console.log(meal);
    

    //select meal and its components from database
    const sql = `
    SELECT * FROM nigerianfoods WHERE name = ?
    UNION ALL
    SELECT * FROM alternativeoptions WHERE name = ?
`;

connection.query(sql, [req.body.meal, req.body.meal], function (err, result) {
    if (err) throw err;
    console.log(result);
    res.json(result);
}); 

module.exports = mealRouter;

});
