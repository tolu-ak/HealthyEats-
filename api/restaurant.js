const express = require('express')
const crypto = require('crypto')
const { connection } = require('./conn')

const restaurantRouter = express.Router()
restaurantRouter.get('/display',(req,res) =>{

const {food, province} = req.query;    //endpoint to search restaurants by food and province
const sql = `
SELECT r.name, r.location, r.rating, r.image
FROM restaurants r
JOIN meals m ON r.id = m.restaurant_id
WHERE m.name = ? AND r.location = ?;
`;


  

    connection.query(sql, [food, province],(err, results) => {
        if (err) {
            console.error("Error retrieving restaurant data: ", err);
            res.status(500).send("Error retrieiving restaurant data");
        } else {
            if (results.length > 0) {
                res.json(results);
            } else {
                res.status(404).send("No restaurants found");
            }
        }
    });
});

module.exports = restaurantRouter;