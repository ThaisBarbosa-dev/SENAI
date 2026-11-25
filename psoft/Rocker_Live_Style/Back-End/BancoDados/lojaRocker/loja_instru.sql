CREATE DATABASE instrumento;

USE instrumento;

CREATE TABLE instrumento (
    id_instrumento INT PRIMARY KEY AUTO_INCREMENT,
    personalizacao VARCHAR(40) NOT NULL,

);

CREATE TABLE kit (
    id_kit INT PRIMARY KEY AUTO_INCREMENT,
    customizacao_instrumento VARCHAR(30) NOT NULL
);

USE loja;

INSERT INTO instrumento (id_instrumento, personalizacao)
VALUES (1, "Guitarra com formato de estrela");

INSERT INTO instrumento (id_instrumento, personalizacao)
VALUES (2, "Bateria com gengar de estampa e com paletas com detalhes roxos");

INSERT INTO instrumento (id_instrumento, personalizacao)
VALUES (3, "Baixo com detalhes amarelos com preto e asas de anjo");

INSERT INTO kit (id_kit, customizacao_instrumento)
VALUES (1, "guitarra em formato de estrela");
INSERT INTO kit (id_kit, customizacao_instrumento)
VALUES (2, "bateria com figuras de artistas");

INSERT INTO kit (id_kit, customizacao_instrumento)
VALUES (3, "baixo com logos de bandas");

INSERT INTO logistica (id_logistica)
VALUES (1, "1", "1");

INSERT INTO logistica (id_logistica)
VALUES (1, "1", "1");

INSERT INTO logistica (id_logistica)
VALUES (1, "1", "1");




