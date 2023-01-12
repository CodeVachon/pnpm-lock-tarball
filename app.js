const express = require("express");
const { capitalize } = require("@codevachon/utilities");
const app = express();
const port = 3000

app.get('/', (request, response, next) => {
    response.json(capitalize("hello world"));
})

app.listen(port, () => {
    console.log(`Example app listening on port ${port}`);
});
