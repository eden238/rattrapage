module.exports = {
  up: async  (queryInterface) => {
    return queryInterface.bulkInsert('Patient',
        generatePatient(),
        {
          updateOnDuplicate : ["id", "nom", "prenom"],
        }
    );
  },
  down: (queryInterface) => {
    return queryInterface.bulkDelete('Patient', null, {});
  }
};


const generatePatient = () => {

  const patients = [];
  for (let i = 0; i < 10; i++){
    const data = {
      id: i+1,
      nom : `patient-0${i} `,
      prenom : `patient-0${i} `,
      createdAt: new Date(),
      updatedAt: new Date(),
    };

    patients.push(data);
  }

  return patients;
};