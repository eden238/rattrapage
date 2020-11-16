const express = require('express');
const router = express();
const Examen = require('../services/examen');

router.get('/read/by/patient/:id', (
    async (req, res) => {

        const examens = await Examen.ReadByPatient(req.params.id);

        switch (examens) {
            case -1 :
                return res
                    .status(404)
                    .json({
                        error: 'aucun patient trouvé avec cet id.'
                    });
            case null :
                return res
                    .status(500)
                    .json({
                        error: 'Une erreur s\'est produite.'
                    });
            default :
                return res
                    .status(200)
                    .json(examens);
        }
    }
));

router.put('/add/result', (
    async (req, res) => {

        const examen = await Examen.AddResult(req.body.resultat, req.body.id);

        switch (examen) {
            case -1 :
                return res
                    .status(404)
                    .json({
                        error: 'aucun examen trouvé avec cet id.'
                    });
            case null :
                return res
                    .status(500)
                    .json({
                        error: 'Une erreur s\'est produite.'
                    });
            default :
                return res
                    .status(200)
                    .json(examen);
        }
    }
));

module.exports = router;
