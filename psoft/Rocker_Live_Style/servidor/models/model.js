const base = require('../config/database');

const ProdutoModel ={
    async listar(){
        const [linha] = await base.query(
            'SELECT id_produto, nome_peoduto, tipo, preco, estoque FROM produto ORDER BY id_produto DESC'

        );
        return linha;
    },

    async buscarId(id){
        const [linha] = await base.query(
            'SELECT ',
            [id]
        )
    },

    async criar(produto){

    },

    async atualizar(id, produto){

    },

    async excluir(id){
        const [resultado] = await base.query(
            'DELETE FROM produto WHERE id_produto = ?',
            [id]

        );
        return resultado.effectedRows;
    
    }

    
}

module.exports = ProdutoModel;