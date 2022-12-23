"use strict";
const { Model } = require("sequelize");
module.exports = (sequelize, DataTypes) => {
  class Brands extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      Brands.hasMany(models.Products, {
        foreignKey: "brandId",
      });
    }
  }
  Brands.init(
    {
      brand_name: DataTypes.STRING,
      description: DataTypes.STRING,
      count: DataTypes.STRING,
      logo: DataTypes.STRING,
      isPublished: DataTypes.BOOLEAN,
    },
    {
      sequelize,
      modelName: "Brands",
    }
  );

  return Brands;
};
