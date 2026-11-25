// Importa o Model, responsavel por conversar com o banco de dados.
const ProdutoModel = require('../models/produtoModel');

// Agrupa as funcoes que atendem as requisicoes HTTP.
const ProdutoController = {
    // GET /api/produtos/listar - lista todos os produtos.
    async listar(req, res) {
        try {
            const produtos = await ProdutoModel.listarTodos(); // Consulta o Model.
            return res.status(200).json(produtos); // Responde com a lista em JSON.
        } catch (erro) {
            console.error('Erro ao listar produtos:', erro); // Registra o erro no terminal.
            return res.status(500).json({ mensagem: 'Erro ao consultar produtos.' });
        }
    },

    // GET /api/produtos/buscarPorID/:id - consulta um produto especifico.
    async buscarPorId(req, res) {
        try {
            const id = Number(req.params.id); // Converte o parametro da URL em numero.
            if (!Number.isInteger(id) || id <= 0) {
                return res.status(400).json({ mensagem: 'ID invalido.' });
            }

            const produto = await ProdutoModel.buscarPorId(id); // Procura o produto.
            if (!produto) {
                return res.status(404).json({ mensagem: 'Produto nao encontrado.' });
            }

            return res.status(200).json(produto); // Retorna o produto encontrado.
        } catch (erro) {
            console.error('Erro ao buscar produto:', erro);
            return res.status(500).json({ mensagem: 'Erro ao consultar produto.' });
        }
    },

    // POST /api/produtos/criar - cadastra um novo produto.
    async criar(req, res) {
        try {
            const { nome, descricao, preco } = req.body; // Le os dados enviados pelo Front-end.
            const precoNumero = Number(preco); // Converte o preco para numero.

            // Valida os campos obrigatorios antes de acessar o banco.
            if (!nome || !String(nome).trim() || preco === undefined ||
                preco === '' || !Number.isFinite(precoNumero) || precoNumero < 0) {
                return res.status(400).json({
                    mensagem: 'Informe um nome e um preco valido (maior ou igual a zero).'
                });
            }

            const id = await ProdutoModel.criar({
                nome: String(nome).trim(),
                descricao: descricao ? String(descricao).trim() : null,
                preco: precoNumero
            });

            return res.status(201).json({
                mensagem: 'Produto cadastrado com sucesso.',
                id
            });
        } catch (erro) {
            console.error('Erro ao cadastrar produto:', erro);
            return res.status(500).json({ mensagem: 'Erro ao cadastrar produto.' });
        }
    },

    // PUT /api/produtos/atualizar/:id - atualiza um produto existente.
    async atualizar(req, res) {
        try {
            const id = Number(req.params.id);
            const { nome, descricao, preco } = req.body;
            const precoNumero = Number(preco);

            if (!Number.isInteger(id) || id <= 0) {
                return res.status(400).json({ mensagem: 'ID invalido.' });
            }

            if (!nome || !String(nome).trim() || preco === undefined ||
                preco === '' || !Number.isFinite(precoNumero) || precoNumero < 0) {
                return res.status(400).json({ mensagem: 'Nome e/ou preco invalido.' });
            }

            // Valida se o produto existe antes de tentar atualizar.
            const produtoExiste = await ProdutoModel.buscarPorId(id);
            if (!produtoExiste) {
                return res.status(404).json({ mensagem: 'Produto nao encontrado.' });
            }

            await ProdutoModel.atualizar(id, {
                nome: String(nome).trim(),
                descricao: descricao ? String(descricao).trim() : null,
                preco: precoNumero
            });

            return res.status(200).json({ mensagem: 'Produto atualizado com sucesso.' });
        } catch (erro) {
            console.error('Erro ao atualizar produto:', erro);
            return res.status(500).json({ mensagem: 'Erro ao atualizar produto.' });
        }
    },

    async excluir (re, res){
        try {
            const id = Number(req.pararms.id); // fazer função para validar o id, e depois so chamar

             if (!Number.isInteger(id) || id <= 0) {
                return res.status(400).json({ mensagem: 'ID invalido.' });
            }

            const quantidadeExcluida = await ProdutoModel.excluir(id); // executa o delete

          const quantidadeExcluida = await ProdutoModel.excluir(id); //executa o delete

if(quantidadeExcluida === 0) {
    return res.status(400).json({mensagem: 'Produto não encontrado'});
}

return res.status(200).json({ mensagem: 'Produto excluido com sucesso!'})
catch (erro) {
    console.error('Erro ao excluir produto', erro)
    return res.status(500).json({mensagem: 'Erro ao excluir produto.'})
`


module.exports = ProdutoController;
