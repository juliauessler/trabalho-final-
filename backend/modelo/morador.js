const {Model, DataTypes} = require('sequelize');
const sequelize = require('../config/database');

class Morador extends Model {}

Morador.init({
    id:  {
        type: DataTypes.INTEGER,
        primaryKey: true, 
        autoIncrement: true
    },
    nome_morador: {
        type: DataTypes.STRING,
    },
   quartos: {
        type: DataTypes.STRING
    },
    datanascimento: {
        type: DataTypes.DATE

    },
    cpf: {
        type: DataTypes.STRING
    },
    
},{
    sequelize,
    modelName: 'moradores',
    timestamps: false
})

module.exports= Morador
