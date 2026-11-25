CREATE DATABASE LojaRockStyle;

USE RockLifeStyle;

CREATE TABLE categoria (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT;
    instrumento VARCHAR(40) NOT NULL,
    roupas VARCHAR(40) NOT NULL,

    FOREIGN KEY (instrumento) REFERENCES categoria
    FOREIGN KEY (roupas) REFERENCES categoria 
)

