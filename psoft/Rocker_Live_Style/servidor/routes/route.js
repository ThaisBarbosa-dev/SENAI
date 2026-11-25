const express = require('express');

const router = express.Router();

const ProdutoController = require('../controllers/');

router.get('/', ProdutoController.listar)