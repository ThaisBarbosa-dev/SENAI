CREATE DATABASE lojaRocker;

USE lojaRocker;

CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome_cliente VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    telefone VARCHAR(15),
    endereco VARCHAR(255)
);

CREATE TABLE produtos (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome_produto VARCHAR(100) NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT NOT NULL
);

CREATE TABLE vendas (
    id_venda INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL,
    data_venda DATETIME DEFAULT CURRENT_TIMESTAMP,
    data_entrega DATETIME,
    tipo_moda VARCHAR(30) UNIQUE NOT NULL, 
    FOREIGN KEY (id_cliente) REFERENCES clientes(id),
    FOREIGN KEY (id_produto) REFERENCES produtos(id)
);

CREATE TABLE moda (
    id_moda INT PRIMARY KEY AUTO_INCREMENT,
    moda_masculina VARCHAR(30) NOT NULL,
    moda_feminina VARCHAR(30) NOT NULL
);

CREATE TABLE roupas (
    id_roupa INT PRIMARY KEY AUTO_INCREMENT,
    nome_roupa VARCHAR(30) NOT NULL,
    tamanho_roupa INT
);

CREATE TABLE logistica (
    id_logistica INT PRIMARY KEY AUTO_INCREMENT,
    entrega_Pres INT,
    entrega_Deli INT
);

CREATE TABLE carrinho (
    id_carrinho INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    id_produto INT NOT NULL,
    id_roupa INT NOT NULL,
    qtd INT NOT NULL,
    preco DECIMAL NOT NULL,
    frete DECIMAL NOT NULL,
    forma_pagamento VARCHAR(30) NOT NULL

    FOREIGN KEY (id_cliente) REFERENCES clientes(id),
    FOREIGN KEY (id_produto) REFERENCES clientes(id),
    FOREIGN KEY (id_roupa) REFERENCES clientes(id),
)

USE loja;

INSERT INTO cliente (id, nome_cliente, cpf, email, telefone, endereco) 
VALUES (1, "Fulano da Silva", "123.456.789-00", "fulano@gmail.com", "123456789", "Rua A, 123");

INSERT INTO cliente (id, nome_cliente, cpf, email, telefone, endereco) 
VALUES (2, "Ciclano da Silva", "987.654.321-00", "ciclano@gmail.com", "987654321", "Rua B, 456");

INSERT INTO cliente (id, nome_cliente, cpf, email, telefone, endereco) 
VALUES (3, "Deltrano da Silva", "789.123.456-00", "deltrano@gmail.com", "789123456", "Rua C, 567");

INSERT INTO produto (id, nome_produto, tipo, preco, estoque)
VALUES (1, "Cinto com detalhes customizados", "Acessório", 1500.00, 10);

INSERT INTO produto (id, nome_produto, tipo, preco, estoque)
VALUES (2, "Colar de caveira", "Acessório/Pescoço", 3000.00, 5);

INSERT INTO produto (id, nome_produto, tipo, preco, estoque)
VALUES (3, "Bandana", "Acessório/Cabeça", 2000.00, 8);

INSERT INTO produto (id, nome_produto, tipo, preco, estoque)
VALUES (3, "Corse", "Acessório/Torso", 2000.00, 8);

INSERT INTO moda (id_moda,moda_masculina, moda_feminina)
VALUES (1, "camisa-calças-calçados Rock anos 80-90 M", "camisa-calças-calçados Rock anos 90 F");

INSERT INTO moda (id_moda, moda_masculina, moda_feminina)
VALUES (2, "camisa-calças-calçados Rock anos 60-70", "camisa-calças-calçados Rock anos 70 F");

INSERT INTO moda (id_moda, moda_masculina, moda_feminina)
VALUES (3, "camisa-calças-calçados Rock anos 2000 M", "camisa-calças-calçados Rock anos 2000 F");

INSERT INTO roupa (id_roupa, nome_roupa)
VALUES (1, "moletom RockLifeStyle");

INSERT INTO roupa (id_roupa, nome_roupa)
VALUES (2, "camisa RockLifeStyle");

INSERT INTO roupa (id_roupa, nome_roupa)
VALUES (3, "calca RockLifeStyle");

INSERT INTO logistica (id_logistica)
VALUES (1, "1", "1");

INSERT INTO logistica (id_logistica)
VALUES (1, "2", "2");

INSERT INTO logistica (id_logistica)
VALUES (1, "3", "3");




