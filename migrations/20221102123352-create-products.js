"use strict";
module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable("Products", {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER,
      },
      product_name: {
        type: Sequelize.STRING,
      },
      brandId: {
        allowNull: false,
        type: Sequelize.INTEGER,
        references: {
          model: "brands",
          key: "id",
        },
        onDelete: "CASCADE",
        onUpdate: "CASCADE",
      },
      summary: {
        type: Sequelize.STRING,
      },
      brightness: {
        type: Sequelize.STRING,
      },
      watt: {
        type: Sequelize.STRING,
      },
      type: {
        type: Sequelize.STRING,
      },
      materials: {
        type: Sequelize.STRING,
      },
      iprating: {
        type: Sequelize.STRING,
      },
      title: {
        type: Sequelize.STRING,
      },
      subtitle: {
        type: Sequelize.STRING,
      },
      description: {
        type: Sequelize.STRING,
      },
      createdAt: {
        allowNull: false,
        type: Sequelize.DATE,
      },
      updatedAt: {
        allowNull: false,
        type: Sequelize.DATE,
      },
    });
  },
  down: async (queryInterface, Sequelize) => {
    await queryInterface.dropTable("Products");
  },
};
