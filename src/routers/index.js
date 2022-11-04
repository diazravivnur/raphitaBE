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
router.get("/category/:categoryID", getDetailsCategory);
router.delete("/category/:categoryID", deleteCategory);
router.put("/category/:categoryID", updateCategory);

// ROUTE TAG API
router.post("/tag", postTag);
router.get("/tags", getAllTags);
router.get("/tag/:tagID", getDetailTag);
router.delete("/tag/:tagID", deleteTag);
router.put("/tag/:tagID", updateTag);

// ROUTE MEDIA API
router.post("/media", uploadFile("media_file"), postMedia);
router.get("/media", getAllMedia);
router.get("/media/:mediaID", getDetailsMedia);
router.delete("/media/:mediaID", deleteMedia);
router.put("/media/:mediaID", uploadFile("media_file"), updateMedia);

// ROUTE BRAND API
router.post("/brand", uploadFile("media_file"), postBrands);
router.get("/brands", getAllBrands);
router.get("/brand/:brandID", getDetailsBrand);
router.delete("/brand/:brandID", deleteBrand);
router.put("/brand/logo/:brandID", uploadFile("media_file"), updateBrandLogo);
router.put("/brand/data/:brandID", uploadFile("media_file"), updateBrandData);

module.exports = router;
