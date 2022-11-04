const Joi = require("joi");

const postCategoryValidation = (data) => {
  const schema = Joi.object({
    category_name: Joi.string().required(),
  });
  return schema.validate(data);
};

const getDetailsCategoryValidation = (data) => {
  const schema = Joi.object({
    categoryID: Joi.number().required(),
  });
  return schema.validate(data);
};

const deleteCategoryValidation = (data) => {
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

const getDetailTagsValidation = (data) => {
  const schema = Joi.object({
    tagID: Joi.number().required(),
  });
  return schema.validate(data);
};

const deleteTagValidation = (data) => {
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

const postBrandValidation = (data) => {
  const schema = Joi.object({
    brand_name: Joi.string().required(),
    description: Joi.string().required(),
  });
  return schema.validate(data);
};
module.exports = {
  postCategoryValidation,
  getDetailsCategoryValidation,
  deleteCategoryValidation,
  updateCategoryValidation,
  postTagValidation,
  getDetailTagsValidation,
  deleteTagValidation,
  updateTagValidation,
  postMediaValidation,
  postBrandValidation,
};
