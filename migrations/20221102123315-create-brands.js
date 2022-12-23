"use strict";
module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable("Brands", {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER,
      },
      brand_name: {
        type: Sequelize.STRING,
      },
      description: {
        type: Sequelize.STRING,
      },
      count: {
        type: Sequelize.STRING,
      },
      logo: {
        type: Sequelize.STRING,
      },
      isPublished: {
        type: Sequelize.BOOLEAN,
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
    await queryInterface.dropTable("Brands");
  },
};
