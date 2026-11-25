select * from produto where data_cadastro between "2024-03-01"

----///----

select 
nome_produto, marca, estoque, data_cadastro
from produto where data_cadastro between "2024-01-01"
and "2024-02-01" 
and "2024-03-01";

----///----
select * from cliente where data_cadastro between "2023-01-01";

----///----

select 
nome_produto, email, cidade, estado, data_cadastro
from  cliente where data_cadastro between "2023-01-01" and "2023-01-15";

----///----

select * from venda where data_venda between "2025-05-01"

----///----

select 
nome_cliente, data_venda, preco_unitario, forma_pagamento 
from venda where data_venda between "2025-12-24" and "2026-01-15" 
order by  preco_unitario asc; 

----///----

select 
cliente.nome_cliente,
cliente.email,
produto.nome_produto,
produto.marca,
produto.categoria,
venda.forma_pagamento,
venda.data_venda,
venda.status,
from venda 
inner join produto on produto.id_produto = venda.id_produto 
inner join cliente on cliente.id_cliente = venda.id_cliente 
where venda.data_venda >= "2025-12-01"
and status_venda in ("Cancelado" or "Concluida")
 
order by  venda.status asc; 





