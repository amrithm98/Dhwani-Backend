module.exports = function(sequelize, DataTypes) {
    return sequelize.define('user', {
        name: DataTypes.STRING,
        email: DataTypes.STRING,
        college: DataTypes.STRING,
        accomodation: DataTypes.STRING,
        sex: DataTypes.STRING,
        phone: DataTypes.BIGINT
    });
}