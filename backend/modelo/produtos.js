const {Model, DataTypes} = require('sequelize');
const sequelize = require('../config/database');

class Produto extends Model {}

Produto.init({
    id_produto:  {
        type: DataTypes.INTEGER,
        primaryKey: true, 
        autoIncrement: true
    },
    nome_produto: {
        type: DataTypes.STRING,
    },
    descricao: {
        type: DataTypes.TEXT
    },
    preco: {
        type: DataTypes.DECIMAL
    }
},{
    sequelize,
    modelName: 'produtos',
    timestamps: false
})

module.exports= Produto
