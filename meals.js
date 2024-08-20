const express = require('express');
const crypto = require('crypto');
const { connection } = require('./conn');

const mealRouter = express.Router();

mealRouter.post('/mealsearch', (req, res) => {
  const meal = req.body.meal;


  // select meal and its components from database


const sql = `
  SELECT * from nigerianfoods WHERE name LIKE ?
`

  const food = `%${meal}%`


  connection.query(sql, [food], function (err, nigerianfood) {
    if (err) throw err;
   

    const sql = ` 
        SELECT alternativenigerianfoods.* FROM alternativenigerianfoods INNER JOIN nigerianfoods ON alternativenigerianfoods.food_id = nigerianfoods.id WHERE nigerianfoods.name LIKE ?
    `;

    connection.query(sql, [food], function (err, altfood) {
      if (err) throw err;

      const data = [
        nigerianfood[0],
        altfood[0]
      ]

      console.log(data)
     return res.json(data)
    })
  });
});

module.exports = mealRouter;
