const { Categories } = require("../../models");
const validationHelper = require("../helpers/validationHelper");
const Boom = require("boom");

exports.postCategory = async (request, res) => {
  try {
    // validate req.body
    const { error } = validationHelper.postCategoryValidation(request.body);
    if (error)
      return res.status(400).send(Boom.badRequest(error.details[0].message));
    const { category_name } = request.body;

    // find similar category in db
    const findSimilarName = await Categories.findOne({
      where: { category_name: category_name },
    });
    if (findSimilarName) {
      return res.status(400).send(Boom.badRequest("CATEGORY_ALREADY_EXIST"));
    }

    // add to db
    const response = await Categories.create({
      category_name: category_name,
    });

    res.status(200).send({
      statusCode: "200",
      status: "Success",
      data: response,
    });
  } catch (error) {
    res.status(500).send({
      status: "failed",
      message: error,
    });
  }
};

exports.getAllCategories = async (req, res) => {
  try {
    const response = await Categories.findAll({
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
    res.status(500).send({
      status: "failed",
      message: error,
    });
  }
};

exports.getDetailsCategory = async (request, res) => {
  try {
    // validate req.query
    const { error } = validationHelper.categoryReqQueryValidation(
      request.query
    );
    if (error)
      return res.status(400).send(Boom.badRequest(error.details[0].message));

    const { categoryID } = request.query;

    // find similar category in db
    const findByID = await Categories.findByPk(categoryID);
    if (findByID === null) {
      return res.status(400).send(Boom.badRequest("CATEGORY_NOT_FOUND"));
    }

    // get data by PK
    const response = await Categories.findAll({
      where: {
        id: categoryID,
      },
    });

    return res.status(200).send({
      statusCode: "200",
      status: "Success",
      data: response,
    });
  } catch (error) {
    res.status(500).send({
      status: "failed",
      message: error,
    });
  }
};

exports.deleteCategory = async (request, res) => {
  try {
    // validate req.query
    const { error } = validationHelper.categoryReqQueryValidation(
      request.query
    );
    if (error)
      return res.status(400).send(Boom.badRequest(error.details[0].message));

    const { categoryID } = request.query;

    // find similar category in db
    const findByID = await Categories.findByPk(categoryID);
    if (findByID === null) {
      return res.status(400).send(Boom.badRequest("CATEGORY_NOT_FOUND"));
    }

    // get category name for response purpose
    const response = await Categories.findAll({
      where: {
        id: categoryID,
      },
    });

    // delete data by PK
    await Categories.destroy({
      where: {
        id: categoryID,
      },
    });

    return res.status(200).send({
      statusCode: "200",
      status: "Succes",
      message: `Category ${response[0].category_name} Has Been Deleted`,
    });
  } catch (error) {
    res.status(500).send({
      status: "failed",
      message: error,
    });
  }
};

exports.updateCategory = async (request, res) => {
  try {
    // validate req.body
    const { error } =
      validationHelper.updateCategoryValidation(request.body) &&
      validationHelper.categoryReqQueryValidation(request.query);
    if (error)
      return res.status(400).send(Boom.badRequest(error.details[0].message));

    const { categoryID } = request.query;
    const { category_name } = request.body;

    // find similar category in db
    const findByID = await Categories.findByPk(categoryID);
    if (findByID === null) {
      return res.status(400).send(Boom.badRequest("CATEGORY_NOT_FOUND"));
    }

    // update data by PK
    await Categories.update(
      { category_name: category_name },
      {
        where: {
          id: categoryID,
        },
      }
    );

    return res.status(200).send({
      statusCode: "200",
      status: "Success",
      message: `Category ${findByID.category_name} Has Been updated to ${category_name} `,
    });
  } catch (error) {
    res.status(500).send({
      status: "failed",
      message: error,
    });
  }
};
