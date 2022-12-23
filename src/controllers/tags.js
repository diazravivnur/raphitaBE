const { Tags } = require("../../models");
const validationHelper = require("../helpers/validationHelper");
const Boom = require("boom");

exports.postTag = async (request, res) => {
  try {
    // validate req.body
    const { error } = validationHelper.postTagValidation(request.body);
    if (error)
      return res.status(400).send(Boom.badRequest(error.details[0].message));
    const { tag_name } = request.body;

    // find similar category in db
    const findSimilarName = await Tags.findOne({
      where: { tag_name: tag_name },
    });
    if (findSimilarName) {
      return res.status(400).send(Boom.badRequest("TAG_ALREADY_EXIST"));
    }

    // add to db
    const response = await Tags.create({
      tag_name: tag_name,
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

exports.getAllTags = async (req, res) => {
  try {
    const response = await Tags.findAll({
      attributes: {
        exclude: ["createdAt", "updatedAt"],
      },
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

exports.getDetailTag = async (request, res) => {
  try {
    // validate req.query
    const { error } = validationHelper.tagReqQueryValidation(request.query);
    if (error)
      return res.status(400).send(Boom.badRequest(error.details[0].message));

    const { tagID } = request.query;

    // find similar category in db
    const findByID = await Tags.findByPk(tagID);
    if (findByID === null) {
      return res.status(400).send(Boom.badRequest("TAG_NOT_FOUND"));
    }

    // get data by PK
    const response = await Tags.findAll({
      where: {
        id: tagID,
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

exports.deleteTag = async (request, res) => {
  try {
    // validate req.query
    const { error } = validationHelper.tagReqQueryValidation(request.query);
    if (error)
      return res.status(400).send(Boom.badRequest(error.details[0].message));

    const { tagID } = request.query;

    // find similar tag in db
    const findByID = await Tags.findByPk(tagID);
    if (findByID === null) {
      return res.status(400).send(Boom.badRequest("TAG_NOT_FOUND"));
    }

    // get tag name for response purpose
    const response = await Tags.findAll({
      where: {
        id: tagID,
      },
    });

    // delete data by PK
    await Tags.destroy({
      where: {
        id: tagID,
      },
    });

    return res.status(200).send({
      statusCode: "200",
      status: "Succes",
      message: `Tag ${response[0].tag_name} Has Been Deleted`,
    });
  } catch (error) {
    res.status(500).send({
      status: "failed",
      message: error,
    });
  }
};

exports.updateTag = async (request, res) => {
  try {
    // validate req.body
    const { error } = validationHelper.updateTagValidation(request.body);
    if (error)
      return res.status(400).send(Boom.badRequest(error.details[0].message));

    const { tagID } = request.query;
    const { tag_name } = request.body;

    // find similar tag in db
    const findByID = await Tags.findByPk(tagID);
    if (findByID === null) {
      return res.status(400).send(Boom.badRequest("TAG_NOT_FOUND"));
    }

    // update data by PK
    await Tags.update(
      { tag_name: tag_name },
      {
        where: {
          id: tagID,
        },
      }
    );

    return res.status(200).send({
      statusCode: "200",
      status: "Success",
      message: `Tag name ${findByID.tag_name} has been updated to ${tag_name} `,
    });
  } catch (error) {
    res.status(500).send({
      status: "failed",
      message: error,
    });
  }
};
