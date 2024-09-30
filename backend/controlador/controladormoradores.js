const { where, Op } = require('sequelize');
const Morador = require('../modelo/morador');


const MoradorController = {
    createmorador: async (req, res) => {
        try {
            const novomorador = await Morador.create(req.body);
            res.json(novomorador);
        } catch (error) {
            res.status(500).send(error.message);
        }
    },

    getAllMoradores: async (req, res) => {
        try {
            const controladores = await Morador.findAll();
            res.json(controladores);
        } catch (error) {
            res.status(500).send(error.message);
        }
    },

    getmoradorByQuarto: async (req, res) => {
        try {
            const moradores = await Morador.findAll({
                where: {
                    quartos: req.params.quartos
                }
            });
            if(!moradores){
                res.status(200).body([]);
            }
            res.json(moradores)
        } catch (error) {
            res.status(500).send(error.message);
        }
    },

    updatemorador: async (req, res) => {
        try {
            const morador = await Morador.findByPk(req.params.id);
            if (!morador) {
                return res.status(404).send('morador não encontrado');
            }
            await morador.update(req.body);
            res.send('morador atualizado com sucesso');
        } catch (error) {
            res.status(500).send(error.message);
        }
    },

    deletemorador: async (req, res) => {
        try {
            const morador = await Morador.findByPk(req.params.id);
            if (!morador) {
                return res.status(404).send('morador não encontrado');
            }
            await morador.destroy();
            res.send('morador deletado com sucesso');
        } catch (error) {
            res.status(500).send(error.message);
        }
    },

    // Implementação das funções de controle de estoque
    // registrarEntrada e registrarSaida
    // ... (a ser implementado)
};

module.exports = MoradorController;