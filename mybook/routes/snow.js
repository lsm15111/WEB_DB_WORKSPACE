var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  //res.send('winter1 wind1 snow1');
  res.render('snow', { msg: 'winter2 wind2 snow2'});
});

module.exports = router;
