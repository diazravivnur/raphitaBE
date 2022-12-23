const { Products, Brands, Media, MediaProducts, TagProducts, Tags } = require("../../models")
const { Op } = require("sequelize")
const Boom = require("boom")
const validationHelper = require("../helpers/validationHelper")
const deleteFileHelper = require("../helpers/deleteFileHelper")
const sequelize = require("sequelize")

exports.getAllProducts = async (request, res) => {
  // validate req.body
  const { error } = validationHelper.getAllProductsValidation(request.query)
  if (error) return res.status(400).send(Boom.badRequest(error.details[0].message))
  try {
    const { page, brandId, tagId } = request.query
    const pageInt = parseInt(page)
    let products
    if (brandId) {
      products = await Products.findAll({
        where: {
          brandId: { [Op.like]: `%${brandId}%` },
        },
        include: [
          {
            model: Brands,
          },
          {
            model: Media,
            through: MediaProducts,
            as: "medias",
          },
          {
            model: Tags,
            through: TagProducts,
            as: "tags",
          },
        ],
        attributes: {
          exclude: ["createdAt", "updatedAt"],
        },
      })
    } else if (tagId) {
      products = await Products.findAll({
        include: [
          {
            model: Brands,
          },
          {
            model: Tags,
            as: "tags",
            through: TagProducts,
            where: { id: { [Op.like]: tagId } },
          },
          {
            model: Media,
            through: MediaProducts,
            as: "medias",
          },
        ],
        attributes: {
          exclude: ["createdAt", "updatedAt"],
        },
      })
    } else {
      products = await Products.findAll({
        include: [
          {
            model: Brands,
          },
          {
            model: Media,
            through: MediaProducts,
            as: "medias",
          },
          {
            model: Tags,
            through: TagProducts,
            as: "tags",
          },
        ],
        attributes: {
          exclude: ["createdAt", "updatedAt"],
        },
      })
    }

    const response = await paginationFunction(products, pageInt)

    res.status(200).send({
      statusCode: "200",
      status: "success",
      data: response,
    })
  } catch (error) {
    console.log(error)
    res.status(500).send({
      status: "failed",
      message: error,
    })
  }
}

exports.postProducts = async (request, res) => {
  try {
    // validate req.body
    const { error } = validationHelper.postProductsValidation(request.body)
    if (error) return res.status(400).send(Boom.badRequest(error.details[0].message))

    // add to db
    const response = await Products.create({
      ...request.body,
    })

    res.status(200).send({
      statusCode: "200",
      status: "Success",
      data: response,
    })
  } catch (error) {
    console.log(error)
    res.status(500).send({
      status: "failed",
      message: error,
    })
  }
}

exports.addProductAndMedia = async (request, res) => {
  try {
    // validate req.body
    const { error } = validationHelper.mediaProductsValidation(request.body)
    if (error) return res.status(400).send(Boom.badRequest(error.details[0].message))
    // add to db
    const response = await MediaProducts.create({
      ...request.body,
    })

    res.status(200).send({
      statusCode: "200",
      status: "Success",
      data: response,
    })
  } catch (error) {
    console.log(error)
    res.status(500).send({
      status: "failed",
      message: error,
    })
  }
}

exports.addProductTags = async (request, res) => {
  try {
    // validate req.body
    const { error } = validationHelper.tagsProductsValidation(request.body)
    if (error) return res.status(400).send(Boom.badRequest(error.details[0].message))
    // add to db
    const response = await TagProducts.create({
      ...request.body,
    })

    res.status(200).send({
      statusCode: "200",
      status: "Success",
      data: response,
    })
  } catch (error) {
    console.log(error)
    res.status(500).send({
      status: "failed",
      message: error,
    })
  }
}

exports.getDetailProduct = async (request, res) => {
  try {
    const { error } = validationHelper.productReqQueryValidation(request.query)
    if (error) return res.status(400).send(Boom.badRequest(error.details[0].message))
    const { productID } = request.query

    // find similar category in db
    const findByID = await Products.findByPk(productID)
    if (findByID === null) {
      return res.status(400).send(Boom.badRequest("MEDIA_NOT_FOUND"))
    }

    // get data by PK
    const response = await Products.findAll({
      where: {
        id: productID,
      },
      include: [
        {
          model: Brands,
        },
        {
          model: Media,
          through: MediaProducts,
          as: "medias",
        },
        {
          model: Tags,
          through: TagProducts,
          as: "tags",
        },
      ],
      attributes: {
        exclude: ["createdAt", "updatedAt"],
      },
    })

    return res.status(200).send({
      statusCode: "200",
      status: "Success",
      data: response,
    })
  } catch (error) {
    res.status(500).send({
      status: "failed",
      message: error,
    })
  }
}

exports.getAllProductsWhereBrand = async (request, res) => {
  const { error } = validationHelper.productFindBrandReqQueryValidation(request.query)
  if (error) return res.status(400).send(Boom.badRequest(error.details[0].message))
  const { brandId, page } = request.query
  const pageInt = parseInt(page)
  try {
    const products = await Products.findAll({
      where: {
        brandId: brandId,
      },
      include: [
        {
          model: Brands,
        },
        {
          model: Media,
          through: MediaProducts,
          as: "medias",
        },
        {
          model: Tags,
          through: TagProducts,
          as: "tags",
        },
      ],
      attributes: {
        exclude: ["createdAt", "updatedAt"],
      },
    })
    const response = await paginationFunction(products, pageInt)

    res.status(200).send({
      statusCode: "200",
      status: "success",
      data: response,
    })
  } catch (error) {
    console.log(error)
    res.status(500).send({
      status: "failed",
      message: error,
    })
  }
}

exports.getAllProductsWhereTag = async (request, res) => {
  const { error } = validationHelper.productFindTagReqQueryValidation(request.body)
  if (error) return res.status(400).send(Boom.badRequest(error.details[0].message))
  const { tagId, page } = request.body
  const pageInt = parseInt(page)
  try {
    const products = await Products.findAll({
      include: [
        {
          model: Tags,
          as: "tags",
          through: { where: { tagId: tagId } },
        },
      ],
      attributes: {
        exclude: ["createdAt", "updatedAt"],
      },
    })

    const response = await paginationFunction(products, pageInt)

    res.status(200).send({
      statusCode: "200",
      status: "success",
      data: response,
    })
  } catch (error) {
    console.log(error)
    res.status(500).send({
      status: "failed",
      message: error,
    })
  }
}

const paginationFunction = async (data, page) => {
  const limit = 12
  const startIndex = (page - 1) * limit
  const endIndex = page * limit

  const results = {}
  if (endIndex < data.length) {
    results.next = {
      page: page + 1,
    }
  }
  if (startIndex > 0) {
    results.previous = {
      page: page - 1,
    }
  }
  results.currentPage = {
    startPage: 1,
    page,
    endPage: Math.ceil(data.length / limit),
  }
  results.count = data.length
  results.rows = data.slice(startIndex, endIndex)
  return results
}
