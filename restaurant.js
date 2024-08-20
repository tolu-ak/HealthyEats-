const express = require('express')
const crypto = require('crypto')
const { connection } = require('./conn')

const restaurantRouter = express.Router()
restaurantRouter.post('/restaurantsearch',(req,res) =>{
console.log(req.body);
const {meal, province} = req.body;    //endpoint to search restaurants by food and province
console.log(meal,province)
// const sql = `
// SELECT r.name, r.location, r.rating, r.image
// FROM restaurants r
// JOIN meals m ON r.id = m.restaurant_id
// WHERE m.name = ? AND r.location = ?;
// `;


const restaurant = `%${meal}%`

const sql= `
SELECT r.name,r.location,r.link,r.rating,r.image
FROM restaurants r
JOIN restaurant_food rf ON r.id = rf.restaurant_id
JOIN nigerianfoods nf ON rf.food_id = nf.id
WHERE nf.name LIKE ?
`;


  

    connection.query(sql, [restaurant],(err, results) => {
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