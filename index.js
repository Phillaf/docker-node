var express = require('express');
var app = express();

app.get('/', function (req, res) {
  res.send('Hello World');
  console.log(req.headers);
});

app.listen(80, function() {
  console.log('Example app listening on port 80');
});
