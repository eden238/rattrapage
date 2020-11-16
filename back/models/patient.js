const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Patient extends Model {
    static associate(models) {
      this.hasMany(models.Examen);
    }
  }
  Patient.init({
    nom: DataTypes.STRING,
    prenom: DataTypes.STRING
  }, {
    sequelize,
    freezeTableName: true,
    modelName: 'Patient',
  });
  return Patient;
};