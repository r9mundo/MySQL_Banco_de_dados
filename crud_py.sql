create database crud_py;

use crud_py;

create table usuario(
	id int not null auto_increment,
    nome varchar (150) not null,
    cpf	char (11) not null,
    email varchar (150) not null,
    senha varchar (150) not null,
    primary key(id)
    );
    
select * from usuario;

CREATE TABLE produto (
    id_prod INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT,
    marca VARCHAR(100),
    modelo VARCHAR(100),
    preco DECIMAL(10, 2),
    quantidade INT,
    cor VARCHAR(50),
    peso DECIMAL(10, 2),
    PRIMARY KEY (id_prod)
);

show tables;
select * from produto;