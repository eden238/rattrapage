const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Examen extends Model {
    static associate(models) {
      this.belongsTo(models.Patient);
    }
  }
  Examen.init({
    type: DataTypes.STRING,
    resultat: DataTypes.STRING,
    date: DataTypes.DATE
  }, {
    sequelize,
    freezeTableName: true,
    modelName: 'Examen',
  });
  return Examen;
};