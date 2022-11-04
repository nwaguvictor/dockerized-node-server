const express = require('express');
const cors = require('cors');
const http = require('http')

const app = express();

app.use(express.json());
app.use(express.urlencoded({extended: true}));
app.use(cors());

app.get('/', (req, res) => {
  res.send(`Hello server`)
})

const server = http.createServer(app);

const port = 5000;

server.listen(port, () => console.log(`Server started on port: ${port}`))

