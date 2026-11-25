const ProdutoModel = require('../models/model');

const ProdutoController = {
    async listar(req, res){
        try{
            const produtos = await ProdutoModel.listar();
            return res.status(200).json(produtos)
        }catch(erro){
            console.error('erro ao listar produtos', erro);
            return res.status(500).json({mensagem: 'erro consulta produtos'})

        }
    },
    
}