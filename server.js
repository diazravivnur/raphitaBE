const express = require("express");
const routers = require("./src/routers");
const bodyParser = require("body-parser");

const cors = require("cors");
const app = express();

const port = 5000;
app.use(express.json({ limit: '15mb' }));
app.use(
  bodyParser.urlencoded({
    extended: false,
  })
);
app.use(express.urlencoded({ extended: true }));
app.use(cors());
app.use(bodyParser.json());
app.use("/api/raphita", routers);
app.use(express.static("uploads"));
app.use("/uploads", express.static("uploads"));

app.listen(port, () => console.log(`Running on port ${port}`));
