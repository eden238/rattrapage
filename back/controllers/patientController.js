const express = require('express');
const router = express();
const Patient = require('../services/patient');

router.get('/read/all', (
    async (req, res) => {

        const patients = await Patient.ReadAll();

        return res
            .status(200)
            .json(patients);
    }
));

module.exports = router;
