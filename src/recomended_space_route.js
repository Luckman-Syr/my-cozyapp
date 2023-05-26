const recomendedSpaceController = require('./recomended_space_controller');

const router = require('express').Router();

router.get('/', recomendedSpaceController.getAllRecomendedSpace);
router.get('/:id', recomendedSpaceController.getByIdRecomendedSpace);


module.exports = router;