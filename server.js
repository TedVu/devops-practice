const express = require("express");
const app = express();

const port = 3000;
app.get("/", (req, res) => {
  res.send("Hello World\n");
});

app.listen(3000, () => {
  console.log(`My RESTAPI running on port ${port}`);
});

app.get("/user", (req, res) => {
  res.send("Hello User\n");
});
