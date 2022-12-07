const express = require("express");

const router = express.Router();

const { auth } = require("../middlewares/auth");
const { uploadFile } = require("../middlewares/uploadFile");
const { uploadMediaFile } = require("../middlewares/uploadMediaFile");

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
  setPublishedBrand,
  unPublishBrand,
} = require("../controllers/brands");

const {
  getAllProducts,
  postProducts,
  addProductAndMedia,
  addProductTags,
  getDetailProduct
} = require("../controllers/products");

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
router.put("/brand/logo", uploadFile("media_file"), updateBrandLogo);
router.put("/brand/data", uploadFile("media_file"), updateBrandData);
router.put("/brand/publish", setPublishedBrand);
router.put("/brand/unpublish", unPublishBrand);

// ROUTE PRODUCTS API
router.get("/products", getAllProducts);
router.post("/product", postProducts);
router.post("/product-media", addProductAndMedia);
router.post("/product-tag", addProductTags);
router.get("/product", getDetailProduct);

module.exports = router;
