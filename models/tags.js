"use strict";
const { Model } = require("sequelize");
module.exports = (sequelize, DataTypes) => {
  class Tags extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      Tags.belongsToMany(models.Products, {
        through: "TagProducts",
        as: "Tags",
        foreignKey: "tagId",
      });
    }
  }
  Tags.init(
    {
      tag_name: DataTypes.STRING,
    },
    {
      sequelize,
      modelName: "Tags",
    }
  );
  return Tags;
};
