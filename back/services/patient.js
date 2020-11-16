const Patient = require('../models').Patient;
const Examen = require('../models').Examen;
const {Op} = require("sequelize");

const ReadAll = async () => {
    const patients = await Patient.findAll()
        .catch(e => {
            console.log(e)
        });

    return patients;
};

const Read = async (id) => {
    const patient = await Patient.findByPk(id, {
        include: [{
            model: Examen,
            as: 'examen',
            where: {
                resultat: {
                    [Op.not]: null,
                }
            }
        }]
    });
    return patient;
};

module.exports = {
    ReadAll,
    Read,
};



