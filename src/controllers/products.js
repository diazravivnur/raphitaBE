const { Products, Brands, Media, MediaProducts, TagProducts, Tags } = require("../../models");
const Boom = require("boom");
const validationHelper = require("../helpers/validationHelper");
const deleteFileHelper = require("../helpers/deleteFileHelper");

exports.getAllProducts = async (req, res) => {
  try {
    const response = await Products.findAll({
      include: [
        {
          model: Brands,
        },
        {
          model: Media, 
          through: MediaProducts,
          as : 'medias'
        },
        {
          model: Tags, 
          through: TagProducts,
          as : 'tags'
        }
      ],
      attributes: {
        exclude: ["createdAt", "updatedAt"],
      },
    });

    res.status(200).send({
      statusCode: "200",
      status: "success",
      data: response,
    });
  } catch (error) {
    console.log(error);
    res.status(500).send({
      status: "failed",
      message: error,
    });
  }
};

exports.postProducts = async (request, res) => {
  try {
    // validate req.body
    const { error } = validationHelper.postProductsValidation(request.body);
    if (error)
      return res.status(400).send(Boom.badRequest(error.details[0].message));

    // add to db
    const response = await Products.create({
      ...request.body,
    });

    res.status(200).send({
      statusCode: "200",
      status: "Success",
      data: response,
    });
  } catch (error) {
    console.log(error);
    res.status(500).send({
      status: "failed",
      message: error,
    });
  }
};

exports.addProductAndMedia = async (request, res) => {
  try {
    // validate req.body
    const { error } = validationHelper.mediaProductsValidation(request.body);
    if (error)
      return res.status(400).send(Boom.badRequest(error.details[0].message));
    // add to db
    const response = await MediaProducts.create({
    ...request.body
    });

    res.status(200).send({
      statusCode: "200",
      status: "Success",
      data: response,
    });
  } catch (error) {
    console.log(error);
    res.status(500).send({
      status: "failed",
      message: error,
    });
  }
};

exports.addProductTags = async (request, res) => {
  try {
    // validate req.body
    const { error } = validationHelper.tagsProductsValidation(request.body);
    if (error)
      return res.status(400).send(Boom.badRequest(error.details[0].message));
    // add to db
    const response = await TagProducts.create({
    ...request.body
    });

    res.status(200).send({
      statusCode: "200",
      status: "Success",
      data: response,
    });
  } catch (error) {
    console.log(error);
    res.status(500).send({
      status: "failed",
      message: error,
    });
  }
};
