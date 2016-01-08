var express = require('express');
var router = express.Router();

var prefixTitle = function(title) {
  if(title.length > 0) return 'AriaFit Sync - ' + title;
  else return 'AriaFit Sync';
};

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: prefixTitle('') });
});

router.get('/privacy', function(req, res, next) {
  res.render('privacy', { title: prefixTitle('Privacy Policy') });
});

module.exports = router;
