const { Media } = require("../../models");
const Boom = require("boom");
const mediaLocation = "http://localhost:5000/";

exports.postMedia = async (request, res) => {
  try {
    const media = request.files.media_file[0].filename;
    // add to db
    const response = await Media.create({
      media_url: mediaLocation + media,
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

exports.getAllMedia = async (req, res) => {
  try {
    const response = await Media.findAll({
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

exports.getDetailsMedia = async (request, res) => {
  try {
    const { mediaID } = request.params;

    // find similar category in db
    const findByID = await Media.findByPk(mediaID);
    if (findByID === null) {
      return res.status(400).send(Boom.badRequest("MEDIA_NOT_FOUND"));
    }

    // get data by PK
    const response = await Media.findAll({
      where: {
        id: mediaID,
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

exports.deleteMedia = async (request, res) => {
  const { mediaID } = request.params;
  try {
    // find similar category in db
    const findByID = await Media.findByPk(mediaID);
    if (findByID === null) {
      return res.status(400).send(Boom.badRequest("MEDIA_NOT_FOUND"));
    }

    // delete data by PK
    await Media.destroy({
      where: {
        id: mediaID,
      },
    });

    return res.status(200).send({
      statusCode: "200",
      status: "Succes",
      message: `Media id ${mediaID} Has Been Deleted`,
    });
  } catch (error) {
    res.status(500).send({
      status: "failed",
      message: error,
    });
  }
};

exports.updateMedia = async (request, res) => {
  try {
    const { mediaID } = request.params;
    const media = request.files.media_file[0].filename;

    // find similar category in db
    const findByID = await Media.findByPk(mediaID);
    if (findByID === null) {
      return res.status(400).send(Boom.badRequest("MEDIA_NOT_FOUND"));
    }

    // update data by PK
    await Media.update(
      { media_url: mediaLocation + media },
      {
        where: {
          id: mediaID,
        },
      }
    );

    return res.status(200).send({
      statusCode: "200",
      status: "Success",
      message: `Media ID ${findByID.media_url} Has Been Updated to ${media}`,
    });
  } catch (error) {
    console.log(error);
    res.status(500).send({
      status: "failed",
      message: error,
    });
  }
};
