const express = require('express');
const FibonacciRepository = require('./Repository/FibonacciRepository');
const app = express();

const fibonacciRepository = new FibonacciRepository();


app.get('/',(req, res) => {
    res.json('hello world');
});

const port = process.env.PORT || 3000;

app.listen(port,() => {
    console.log(`Listening on port ${port}`);
});