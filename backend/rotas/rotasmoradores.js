const express = require('express');
const router = express.Router();
const moradorController = require('../controlador/controladormoradores');

// Rota para criar um novo morador
router.post('/moradores', moradorController.createmorador);

// Rota para obter todos os moradors
router.get('/moradores', moradorController.getAllMoradores);

// Rota para obter um morador pelo ID
router.get('/moradores/:id', moradorController.getmoradorById);

// Rota para atualizar um morador
router.put('/moradores/:id', moradorController.updatemorador);

// Rota para deletar um morador
router.delete('/moradores/:id', moradorController.deletemorador);

module.exports = router;