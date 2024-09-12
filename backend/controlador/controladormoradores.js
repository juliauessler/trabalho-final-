const morador = require('../modelo/morador');


const moradorController = {
    createmorador: async (req, res) => {
        try {
            const novomorador = await morador.create(req.body);
            res.json(novomorador);
        } catch (error) {
            res.status(500).send(error.message);
        }
    },

    getAllMoradores: async (req, res) => {
        try {
            const controladores = await morador.findAll();
            res.json(controladores);
        } catch (error) {
            res.status(500).send(error.message);
        }
    },

    getmoradorById: async (req, res) => {
        try {
            const morador = await morador.findByPk(req.params.id);
            if (!morador) {
                return res.status(404).send('morador não encontrado');
            }
            res.json(morador);
        } catch (error) {
            res.status(500).send(error.message);
        }
    },

    updatemorador: async (req, res) => {
        try {
            const morador = await morador.findByPk(req.params.id);
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
            const morador = await morador.findByPk(req.params.id);
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

module.exports = moradorController;