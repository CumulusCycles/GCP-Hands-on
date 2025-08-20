const express = require("express");
const app = express();
const port = process.env.PORT || 8080;

app.get("/", (req, res) => {
  res.send("App running.");
});

app.get("/health", (req, res) => {
  res.json({ status: "ok" });
});

app.get("/greeter", (req, res) => {
  const name = req.query.name || "Guest";
  res.send(`Hello, ${name}! v1.0.1`);
});

app.listen(port, () => {
  console.log(`Microservice running on port ${port}`);
});
