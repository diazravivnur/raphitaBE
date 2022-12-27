const express = require("express");
const routers = require("./src/routers");

const cors = require("cors");
const app = express();

const port = 5000;

app.use(express.json());
app.use(cors());
app.use("/api/raphita", routers);
app.use(express.static("uploads"));
app.use("/uploads", express.static("uploads"));

app.listen(port, () => console.log(`Running on port ${port}`));
