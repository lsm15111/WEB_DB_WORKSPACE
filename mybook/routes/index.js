var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  // res.render('index', { title: 'Express 08-23-화요일' });
  res.send('<h1><font color=blue>hello Go GilDong 고길동</font></h1>');
});

module.exports = router;
