module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable('Examen', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      patientId: {
        allowNull: false,
        type : Sequelize.INTEGER,
        references: {
          model: 'Patient',
          key: 'id'
        },
        onDelete: 'CASCADE',
      },

      type: {
        type: Sequelize.STRING
      },
      date: {
        type: Sequelize.DATE
      },
      resultat: {
        type: Sequelize.STRING
      },
      createdAt: {
        allowNull: false,
        type: Sequelize.DATE
      },
      updatedAt: {
        allowNull: false,
        type: Sequelize.DATE
      }
    });
  },
  down: async (queryInterface, Sequelize) => {
    await queryInterface.dropTable('Examen');
  }
};