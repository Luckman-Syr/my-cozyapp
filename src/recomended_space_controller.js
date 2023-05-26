const recomendedSpaceModel = require('./recomended_space_model');

const getAllRecomendedSpace = (req, res) => {
    recomendedSpaceModel.getAll((err, results) => {
        if (err) {
            console.log(err);
            res.status(500).send('Internal Server Error');
        } else {
            res.status(200).send(results);
        }
    });
}
const getByIdRecomendedSpace = (req, res) => {
    recomendedSpaceModel.getById(req.params.id, (err, results) => {
        if (err) {
            console.log(err);
            res.status(500).send('Internal Server Error');
        } else {
            res.status(200).send(results);
        }
    });
}

module.exports = {
    getAllRecomendedSpace,
    getByIdRecomendedSpace
}