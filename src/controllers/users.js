const { Op } = require("sequelize");
const { Users } = require("../../models");
const Boom = require("boom");
const validationHelper = require("../helpers/validationHelper");

const bcrypt = require("bcrypt");
const jwt = require("jsonwebtoken");
require("dotenv").config();
const secretKey = process.env.SECRETKEY;
// const jwt_decode = require('jwt-decode');

exports.register = async (request, res) => {
  const { error } = validationHelper.registerValidation(request.body);
  if (error) {
    return res.status(400).send(Boom.badRequest(error.details[0].message));
  }

  try {
    const { password, email, user_name } = request.body;

    const passwordHashed = await bcrypt.hash(password, 10);

    await Users.create({
      email: email,
      password: passwordHashed,
      user_name: user_name,
    });
    res.send({
      status: "success",
      message: "Successfully Create User",
      data: {
        users: email,
      },
    });
  } catch (error) {
    console.log(error);
    res.status(500).send({
      status: "failed",
      message: "server error",
    });
  }
};

exports.loginUser = async (request, res) => {
  const { error } = validationHelper.loginValidation(request.body);
  if (error) {
    return res.status(400).send(Boom.badRequest(error.details[0].message));
  }
  const { password, email } = request.body;

  try {
    const validateUser = await Users.findOne({
      where: {
        email: { [Op.like]: `%${email}%` },
      },
    });

    const isValidPassword = await bcrypt.compare(password, validateUser.password);

    if (!isValidPassword) {
      return res.status(400).send(Boom.badRequest("Email and Password don't match"));
    }

    const token = jwt.sign(
      {
        id: validateUser.id,
      },
      secretKey
    );

    res.send({
      status: "success",
      data: {
        user: {
          token,
        },
      },
    });
  } catch (error) {
    console.log(error);
    res.status(500).send({
      status: "failed",
      message: "server error",
    });
  }
};
