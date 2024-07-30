var http = require('http');
http.createServer(function (req, res) {
  res.write('./alex.html');
  res.end();
}).listen(8080);
