const express = require('express');
const app = express();
const port = 3000;

app.get('/', function(req, res) {
  res.send('Hello, world!');
});

const serverStarted = () => {
  console.log(`Server listening at http://localhost:${port}`);
};

app.listen(port, serverStarted);
