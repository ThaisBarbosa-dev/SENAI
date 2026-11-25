
select * from produto where nome_produto like "Notebook%" 
select * from produto where nome_produto like "%O" 

----///----

select * from produto where marca like "%E" and nome_produto and estoque;

----///----

select * from produto where  nome_produto like "%Gamer%"  marca and estoque;

----///----

select * from cliente o where nome_cliente like "%Barbosa%" 

----///----

select cliente.nome_cliente, venda.data_venda, venda.preco_unitario_venda, 
venda.forma_pagamento
from cliente
inner join venda on  cliente.id_cliente = venda.id_cliente  
where nome_cliente like "C%";

----///----

select produto.nome_produto, venda.id_venda, venda.preco_unitario_venda, 
venda.forma_pagamento
from produto
inner join venda on produto.id_produto = venda.id_produto  
where forma_pagamento like "%Polegada%"; 

----///----

select 
produto.nome_produto,
cliente.nome_cliente,
venda.id_venda, 
venda.forma_pagamento, 
venda.status_venda
from venda
inner join produto on produto.id_produto = venda.id_produto 
inner join cliente on cliente.id_cliente = venda.id_cliente 
where
cliente.nome_cliente like "%Place"
or produto.nome_produto like "%Notebook%"
or cliente.nome_cliente  like  "%Ana%" 
order by 

produto.nome_produto asc,
venda.status_venda asc; 

----///----

select * from produto where nome_produto like "%O" 

----///----

select * from produto where nome_produto like "%O" 
