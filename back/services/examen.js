const Examen = require('../models').Examen;
const Patient = require('../models').Patient;

const ReadByPatient = async (id) => {
    const patient = await PatientExist(id);

    if (!patient){
        return -1;
    }
    const examens = await Examen.findAll({
        where: {
            patientId : id,
            resultat: null
        }
    });

    return examens;
};

const AddResult = async (resultat, id) => {
    const examen = await ExamenExist(id);

    if (!examen){
        return -1;
    }

    const examenUpdated = await Examen.update({
        resultat : resultat
    }, {
        where: {
            id : id
        }
    }).catch(e => console.log(e));

    if (examenUpdated){
        return id
    }

    return null;
};

module.exports = {
    ReadByPatient,
    AddResult
};


async function ExamenExist(id){
    const examen = await Examen.findByPk(id);
    return examen;
}

async function PatientExist(id){
    const patient = await Patient.findByPk(id);
    return patient;
}


