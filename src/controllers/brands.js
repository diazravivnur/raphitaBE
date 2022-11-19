const { Brands } = require("../../models");
const Boom = require("boom");
const validationHelper = require("../helpers/validationHelper");
const deleteFileHelper = require("../helpers/deleteFileHelper");

const mediaLocation = "http://localhost:5000/";

exports.postBrands = async (request, res) => {
  try {
    const { error } = validationHelper.postBrandValidation(request.body);
    if (error)
      return res.status(400).send(Boom.badRequest(error.details[0].message));
    const logoFile = request.files.media_file[0].filename;
    // add to db

    const response = await Brands.create({
      ...request.body,
      logo: mediaLocation + logoFile,
      isPublished: false,
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

exports.getAllBrands = async (req, res) => {
  try {
    const response = await Brands.findAll({
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

exports.getDetailsBrand = async (request, res) => {
  try {
    // validate req.query
    const { error } = validationHelper.brandReqQueryValidation(request.query);
    if (error)
      return res.status(400).send(Boom.badRequest(error.details[0].message));

    const { brandID } = request.query;

    // find similar category in db
    const findByID = await Brands.findByPk(brandID);
    if (findByID === null) {
      return res.status(400).send(Boom.badRequest("BRAND_NOT_FOUND"));
    }

    // get data by PK
    const response = await Brands.findAll({
      where: {
        id: brandID,
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

exports.deleteBrand = async (request, res) => {
  try {
    // validate req.query
    const { error } = validationHelper.brandReqQueryValidation(request.query);
    if (error)
      return res.status(400).send(Boom.badRequest(error.details[0].message));

    const { brandID } = request.query;

    // find similar category in db
    const findByID = await Brands.findByPk(brandID);
    if (findByID === null) {
      return res
        .status(400)
        .send(Boom.badRequest(`Brand on id ${brandID} Not Found`));
    }

    // delete file on folder uploads
    deleteFileHelper.deleteFileUnlink(findByID.logo.slice(22));

    // delete data by PK
    await Brands.destroy({
      where: {
        id: brandID,
      },
    });

    return res.status(200).send({
      statusCode: "200",
      status: "Succes",
      message: `Brand id ${brandID} Has Been Deleted`,
    });
  } catch (error) {
    res.status(500).send({
      status: "failed",
      message: error,
    });
  }
};

exports.setPublishedBrand = async (request, res) => {
  try {
    // validate req.query
    const { error } = validationHelper.brandReqQueryValidation(request.query);
    if (error)
      return res.status(400).send(Boom.badRequest(error.details[0].message));

    const { brandID } = request.query;

    // find similar category in db
    const findByID = await Brands.findByPk(brandID);
    if (findByID === null) {
      return res
        .status(400)
        .send(Boom.badRequest(`Brand on id ${brandID} Not Found`));
    }
    await Brands.update(
      { isPublished: true },
      {
        where: {
          id: brandID,
        },
      }
    );
    return res.status(200).send({
      statusCode: "200",
      status: "Succes",
      message: `Brand id ${brandID} Has Been Published`,
    });
  } catch (error) {
    res.status(500).send({
      status: "failed",
      message: error,
    });
  }
};

exports.unPublishBrand = async (request, res) => {
  try {
    // validate req.query
    const { error } = validationHelper.brandReqQueryValidation(request.query);
    if (error)
      return res.status(400).send(Boom.badRequest(error.details[0].message));

    const { brandID } = request.query;

    // find similar category in db
    const findByID = await Brands.findByPk(brandID);
    if (findByID === null) {
      return res
        .status(400)
        .send(Boom.badRequest(`Brand on id ${brandID} Not Found`));
    }
    await Brands.update(
      { isPublished: false },
      {
        where: {
          id: brandID,
        },
      }
    );
    return res.status(200).send({
      statusCode: "200",
      status: "Succes",
      message: `Brand id ${brandID} Has Been Unpublished`,
    });
  } catch (error) {
    res.status(500).send({
      status: "failed",
      message: error,
    });
  }
};

exports.updateBrandLogo = async (request, res) => {
  try {
    const { brandID } = request.query;
    const logoFile = request.files.media_file[0].filename;

    // find similar category in db
    const findByID = await Brands.findByPk(brandID);
    if (findByID === null) {
      return res
        .status(400)
        .send(Boom.badRequest(`Brand on id ${brandID} Not Found`));
    }

    // delete file on folder uploads
    deleteFileHelper.deleteFileUnlink(findByID.logo.slice(22));

    // update data by PK
    await Brands.update(
      { logo: mediaLocation + logoFile },
      {
        where: {
          id: brandID,
        },
      }
    );
    const response = await Brands.findAll({
      where: {
        id: brandID,
      },
    });

    return res.status(200).send({
      statusCode: "200",
      status: "Success",
      message: `Brand Logo ${findByID.logo} Has Been Updated to ${logoFile}`,
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

exports.updateBrandData = async (request, res) => {
  try {
    const { brandID } = request.query;
    const logoFile = request.files.media_file[0].filename;
    const { error } = validationHelper.postBrandValidation(request.body);
    if (error)
      return res.status(400).send(Boom.badRequest(error.details[0].message));

    // find similar category in db
    const findByID = await Brands.findByPk(brandID);
    if (findByID === null) {
      return res
        .status(400)
        .send(Boom.badRequest(`Brand on id ${brandID} Not Found`));
    }

    // update data by PK
    await Brands.update(
      { logo: mediaLocation + logoFile, ...request.body },
      {
        where: {
          id: brandID,
        },
      }
    );
    const response = await Brands.findAll({
      where: {
        id: brandID,
      },
    });

    return res.status(200).send({
      statusCode: "200",
      status: "Success",
      message: `Brand Logo ${findByID.logo} Has Been Updated to ${logoFile}`,
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
