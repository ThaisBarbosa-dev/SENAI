require('dotenv').config();

const espress = require('express');

const cors = require('cors');

const Rotas = require("./routes/route")

const app = express();

app.use(cors());

app.use(express.json())

app.use('/api', (req, res)=>{
    res.json({mensagem:'API de produtos funcionas!d'})
});

const PORT = process.env.PORT || 3000;

app.listen(PORT, ()=>{
    console.log(`servidor rodando em http://localhost:{PORT}`);
});