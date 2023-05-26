const dbConnection = require('./dbConnection');

const RecomendedSpace = function (recomendedSpace) {
    this.id = recomendedSpace.id;
    this.name = recomendedSpace.name;
    this.imageUrl = recomendedSpace.imageUrl;
    this.price = recomendedSpace.price;
    this.city = recomendedSpace.city;
    this.country = recomendedSpace.country;
    this.rating = recomendedSpace.rating;
    this.address = recomendedSpace.address;
    this.phone = recomendedSpace.phone;
    this.mapUrl = recomendedSpace.mapUrl;
    this.photos = recomendedSpace.photos;
    this.numberOfKitchens = recomendedSpace.numberOfKitchens;
    this.numberOfBedrooms = recomendedSpace.numberOfBedrooms;
    this.numberOfCupboard = recomendedSpace.numberOfCupboard;
};

RecomendedSpace.getAll = function (result) {
    dbConnection.query('SELECT * FROM recomended_space', function (err, res) {
        if (err) {
            console.log(err);
            result(null, err);
        } else {
            result(null, res.rows);
        }
    })
}

RecomendedSpace.getById = function (id, result) {
    dbConnection.query('SELECT * FROM recomended_space WHERE id = $1', [
        id
    ], function (err, res) {
        if (err) {
            console.log(err);
            result(null, err);
        } else {
            result(null, res.rows);
        }
    })
}

module.exports = RecomendedSpace;