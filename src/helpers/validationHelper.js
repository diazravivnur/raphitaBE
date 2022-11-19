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
};
