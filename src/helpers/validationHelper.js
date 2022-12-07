const Joi = require("joi");

const postCategoryValidation = (data) => {
  const schema = Joi.object({
    category_name: Joi.string().required(),
  });
  return schema.validate(data);
};

const categoryReqQueryValidation = (data) => {
  const schema = Joi.object({
    categoryID: Joi.number().required(),
  });
  return schema.validate(data);
};

const updateCategoryValidation = (data) => {
  const schema = Joi.object({
    category_name: Joi.string().required(),
  });
  return schema.validate(data);
};

const postTagValidation = (data) => {
  const schema = Joi.object({
    tag_name: Joi.string().required(),
  });
  return schema.validate(data);
};

const tagReqQueryValidation = (data) => {
  const schema = Joi.object({
    tagID: Joi.number().required(),
  });
  return schema.validate(data);
};

const updateTagValidation = (data) => {
  const schema = Joi.object({
    tag_name: Joi.string().required(),
  });
  return schema.validate(data);
};

const postMediaValidation = (data) => {
  const schema = Joi.object({
    media_file: Joi.string().required(),
  });
  return schema.validate(data);
};

const mediaReqQueryValidation = (data) => {
  const schema = Joi.object({
    mediaID: Joi.number().required(),
  });
  return schema.validate(data);
};

const postBrandValidation = (data) => {
  const schema = Joi.object({
    brand_name: Joi.string().required(),
    description: Joi.string().required(),
  });
  return schema.validate(data);
};

const brandReqQueryValidation = (data) => {
  const schema = Joi.object({
    brandID: Joi.number().required(),
  });
  return schema.validate(data);
};

const paramsValidation = Joi.object({
  brandID: Joi.number().required(),
}).unknown(true);

const bodyValidation = Joi.object({
  media_file: Joi.string().required(),
}).unknown(true);

const updateBrandValidation = (data) => {
  const schema = Joi.object({
    query: paramsValidation,
    body: bodyValidation,
  });
  return schema.validate(data);
};

const postProductsValidation = (data) => {
  const schema = Joi.object({
    product_name: Joi.string().required(),
    brightness: Joi.string().required(),
    watt: Joi.string().required(),
    type: Joi.string().required(),
    materials: Joi.string().required(),
    iprating: Joi.string().required(),
    summary: Joi.string().required(),
    brandId: Joi.number().required(),
    description: Joi.string().optional(),
  });
  return schema.validate(data);
};

const mediaProductsValidation = (data) => {
  const schema = Joi.object({
    mediaId: Joi.number().required(),
    ProductId: Joi.number().required(),
  });
  return schema.validate(data);
};

const tagsProductsValidation = (data) => {
  const schema = Joi.object({
    tagId: Joi.number().required(),
    ProductId: Joi.number().required(),
  });
  return schema.validate(data);
};

const productReqQueryValidation = (data) => {
  const schema = Joi.object({
    productID: Joi.number().required(),
  });
  return schema.validate(data);
};


module.exports = {
  postCategoryValidation,
  categoryReqQueryValidation,
  updateCategoryValidation,
  postTagValidation,
  tagReqQueryValidation,
  mediaReqQueryValidation,
  updateTagValidation,
  postMediaValidation,
  postBrandValidation,
  brandReqQueryValidation,
  updateBrandValidation,
  postProductsValidation,
  mediaProductsValidation,
  tagsProductsValidation,
  productReqQueryValidation
};
