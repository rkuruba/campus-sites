const express = require('express');

const router = express.Router();

// Import the model (burger.js) to use its database functions.
const event = require('../models/event.js');

// Create all our routes and set up logic within those routes where required.
router.get('/', function(req, res) {
  event.all(function(data) {
    const hbsObject = {
      event: data
    };
    console.log(hbsObject);
    res.render('index', hbsObject);
  });
});

router.get('/events', function(req, res) {
  event.all(function(data) {
    const hbsObject = {
      event: data
    };
    console.log(hbsObject);
    res.render('event', hbsObject);
  });
});
/*

router.put("/api/burgers/:id", function(req, res) {
  const condition = "id = " + req.params.id;

  console.log('condition', condition);


  burger.update({
    devoured: req.body.devoured
  }, condition, function(result) {
    if (result.changedRows == 0) {
      // If no rows were changed, then the ID must not exist, so 404
      return res.status(404).end();
    } else {
      res.redirect("/")
      res.status(200).end();
    }
  });
});

router.post('/api/burgers', function(req, res) {
  burger.create(['burger_name', 'devoured'], [req.body.burger_name, req.body.devoured], function(result) {
    // Send back the ID of the new quote
   
    //res.json({ id: result.insertId });
    res.redirect("/");
  });
});
*/

module.exports = router;
