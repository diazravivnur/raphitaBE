const express = require("express");

const router = express.Router();

const { auth } = require("../middlewares/auth");
const { uploadFile } = require("../middlewares/UploadFile");
const { uploadMedia } = require("../middlewares/UploadMediaFile");

const {
  postCategory,
  getAllCategories,
  getDetailsCategory,
  deleteCategory,
  updateCategory,
} = require("../controllers/category");

const { postTag, getAllTags, getDetailTag, deleteTag, updateTag } = require("../controllers/tags");

const {
  postMedia,
  getAllMedia,
  getDetailsMedia,
  deleteMedia,
  updateMedia,
  postMediaAndProducts,
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
  getDetailProduct,
  getAllProductsWhereBrand,
  getAllProductsWhereTag,
  getProductsRecommendation,
} = require("../controllers/products");

const { register, loginUser } = require("../controllers/users");

// ROUTE CATEGORY API
router.post("/category", auth, postCategory);
router.get("/categories", getAllCategories);
router.get("/category", getDetailsCategory);
router.delete("/category", auth, deleteCategory);
router.put("/category", auth, updateCategory);

// ROUTE TAG API
router.post("/tag", auth, postTag);
router.get("/tags", getAllTags);
router.get("/tag", getDetailTag);
router.delete("/tag", auth, deleteTag);
router.put("/tag", auth, updateTag);

// ROUTE MEDIA API
router.post("/media", uploadMedia("media_files"), postMedia);
router.post("/v2/product", uploadMedia("media_files"), postMediaAndProducts);
router.get("/medias", getAllMedia);
router.get("/media", getDetailsMedia);
router.delete("/media", auth, deleteMedia);
router.put("/media", auth, uploadFile("media_file"), updateMedia);

// ROUTE BRAND API
router.post("/brand", uploadMedia("media_files"), postBrands);
router.get("/brands", getAllBrands);
router.get("/brand", getDetailsBrand);
router.delete("/brand", auth, deleteBrand);
router.put("/brand/logo", auth, uploadFile("media_file"), updateBrandLogo);
router.put("/brand/data", auth, uploadFile("media_file"), updateBrandData);
router.put("/brand/publish", auth, setPublishedBrand);
router.put("/brand/unpublish", auth, unPublishBrand);

// ROUTE PRODUCTS API
router.get("/products", getAllProducts);
router.post("/product", uploadMedia("media_files"), postProducts);
router.post("/product-media", auth, addProductAndMedia);
router.post("/product-tag", auth, addProductTags);
router.get("/product", getDetailProduct);
router.get("/product-brand", getAllProductsWhereBrand);
router.get("/product-tag", getAllProductsWhereTag);
router.get("/product-recommendation", getProductsRecommendation);

// ROUTE USERS API
router.post("/register", register);
router.post("/login", loginUser);

module.exports = router;
