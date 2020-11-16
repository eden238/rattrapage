module.exports = {
  up: async  (queryInterface) => {
    return queryInterface.bulkInsert('Examen',
        generateExamen(),
        {
          updateOnDuplicate : ["id", "patientId", "type", "date", "resultat"],
        }
    );
  },
  down: (queryInterface) => {
    return queryInterface.bulkDelete('Examen', null, {});
  }
};


const generateExamen = () => {
  const types = ["analyse sanguine", "COVID Virologique", "COVID Sérologique", "analyse d\'urine", "allergie"];
  const examens = [];
  let id = 1;

  for (let i = 0; i < 10; i++){
    for (let j = 0; j < 5; j++){
      const data = {
        id: id,
        patientId : i+1,
        type : `${types[j]} `,
        date : randomDate(new Date(2012, 0, 1), new Date()),
        resultat : null,
        createdAt: new Date(),
        updatedAt: new Date(),
      };

      examens.push(data);
      id++;
    }
  }

  return examens;
};

const randomDate = (start, end) => {
  return new Date(start.getTime() + Math.random() * (end.getTime() - start.getTime()));
};