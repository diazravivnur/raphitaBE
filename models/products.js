"use strict";
const { Model } = require("sequelize");
module.exports = (sequelize, DataTypes) => {
  class Products extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      Products.belongsTo(models.Brands, {
        foreignKey: "brandId",
      });
      Products.belongsToMany(models.Media, {
        through: "MediaProducts",
        as: "medias",
      });
      Products.belongsToMany(models.Tags, {
        through: "TagProducts",
        as: "tags",
      });
    }
  }
  Products.init(
    {
      product_name: DataTypes.STRING,
      title: DataTypes.STRING,
      subtitle: DataTypes.STRING,
      description: DataTypes.STRING,
    },
    {
      sequelize,
      modelName: "Products",
    }
  );
  module.exports = Products;

  return Products;
};
