const express = require("express");

const router = express.Router();

const { auth } = require("../middlewares/auth");
const { uploadFile } = require("../middlewares/uploadFile");

const {
  postCategory,
  getAllCategories,
  getDetailsCategory,
  deleteCategory,
  updateCategory,
} = require("../controllers/category");

const {
  postTag,
  getAllTags,
  getDetailTag,
  deleteTag,
  updateTag,
} = require("../controllers/tags");

const {
  postMedia,
  getAllMedia,
  getDetailsMedia,
  deleteMedia,
  updateMedia,
} = require("../controllers/media");

const {
  postBrands,
  getAllBrands,
  getDetailsBrand,
  deleteBrand,
  updateBrandLogo,
  updateBrandData,
} = require("../controllers/brands");

// ROUTE CATEGORY API
router.post("/category", postCategory);
router.get("/categories", getAllCategories);
router.get("/category", getDetailsCategory);
router.delete("/category", deleteCategory);
router.put("/category", updateCategory);

// ROUTE TAG API
router.post("/tag", postTag);
router.get("/tags", getAllTags);
router.get("/tag", getDetailTag);
router.delete("/tag", deleteTag);
router.put("/tag", updateTag);

// ROUTE MEDIA API
router.post("/media", uploadFile("media_file"), postMedia);
router.get("/medias", getAllMedia);
router.get("/media", getDetailsMedia);
router.delete("/media", deleteMedia);
router.put("/media", uploadFile("media_file"), updateMedia);

// ROUTE BRAND API
router.post("/brand", uploadFile("media_file"), postBrands);
router.get("/brands", getAllBrands);
router.get("/brand", getDetailsBrand);
router.delete("/brand", deleteBrand);
router.put("/brand/logo/:brandID", uploadFile("media_file"), updateBrandLogo);
router.put("/brand/data/:brandID", uploadFile("media_file"), updateBrandData);

module.exports = router;
