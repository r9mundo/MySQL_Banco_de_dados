

CREATE DATABASE pizzaria_trigger;
USE pizzaria_trigger;

CREATE TABLE produto (
    id_produto INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50),
    descricao TEXT,
    preco DECIMAL(10,2),
    estoque INT,
    PRIMARY KEY (id_produto)
);

CREATE TABLE materia_prima (
    id_materia_prima INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50),
    descricao TEXT,
    estoque INT,
    PRIMARY KEY (id_materia_prima)
);

CREATE TABLE pizza (
    id_pizza INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50),
    descricao TEXT,
    preco DECIMAL(10,2),
    PRIMARY KEY (id_pizza)
);

CREATE TABLE venda_item (
    id_venda_item INT NOT NULL AUTO_INCREMENT,
    data DATE,
    total DECIMAL(10,2),
    quantidade INT,
    preco_unitario DECIMAL(10,2),
    id_produto INT,
    PRIMARY KEY (id_venda_item)
);


show tables;

INSERT INTO produto (nome, descricao, preco, estoque)
VALUES 
('Mussarela', 'Queijo Mussarela', 20.00, 10000),
('Presunto', 'Presunto Cozido', 15.00, 8000),
('Tomate', 'Tomate Fresco', 5.00, 5000),
('Trigo', 'Farinha de Trigo', 3.00, 2000),
('Bacon', 'Bacon Fatiado', 25.00, 3000),
('Catupiry', 'Queijo Catupiry', 30.00, 1000);

select * from produto;

INSERT INTO pizza (nome, descricao, preco)
VALUES 
('Pizza de Presunto', 'Pizza com presunto, mussarela e tomate', 50.00),
('Pizza de Bacon', 'Pizza com bacon, presunto, mussarela, tomate e catupiry', 60.00);

select * from pizza;

INSERT INTO materia_prima (nome, descricao, estoque)
VALUES 
('Mussarela', 'Queijo Mussarela', 10000),
('Presunto', 'Presunto Cozido', 8000),
('Tomate', 'Tomate Fresco', 5000),
('Trigo', 'Farinha de Trigo', 2000),
('Bacon', 'Bacon Fatiado', 3000),
('Catupiry', 'Queijo Catupiry', 1000);

select * from materia_prima;

INSERT INTO venda_item (data, total, quantidade, preco_unitario, id_produto)
VALUES 
('2024-11-25', 110.00, 1, 50.00, 1),
('2024-11-25', 110.00, 1, 60.00, 2);


DELIMITER //

CREATE TRIGGER tr_atualiza_estoque
AFTER INSERT ON venda_item
FOR EACH ROW
BEGIN
    IF NEW.id_produto = 1 THEN -- Pizza de Presunto
        UPDATE materia_prima SET estoque = estoque - (500 * NEW.quantidade) WHERE nome = 'Mussarela';
        UPDATE materia_prima SET estoque = estoque - (400 * NEW.quantidade) WHERE nome = 'Presunto';
        UPDATE materia_prima SET estoque = estoque - (100 * NEW.quantidade) WHERE nome = 'Tomate';
        UPDATE materia_prima SET estoque = estoque - (200 * NEW.quantidade) WHERE nome = 'Trigo';
    ELSEIF NEW.id_produto = 2 THEN -- Pizza de Bacon
        UPDATE materia_prima SET estoque = estoque - (500 * NEW.quantidade) WHERE nome = 'Mussarela';
        UPDATE materia_prima SET estoque = estoque - (400 * NEW.quantidade) WHERE nome = 'Presunto';
        UPDATE materia_prima SET estoque = estoque - (300 * NEW.quantidade) WHERE nome = 'Tomate';
        UPDATE materia_prima SET estoque = estoque - (200 * NEW.quantidade) WHERE nome = 'Trigo';
        UPDATE materia_prima SET estoque = estoque - (200 * NEW.quantidade) WHERE nome = 'Bacon';
        UPDATE materia_prima SET estoque = estoque - (50 * NEW.quantidade) WHERE nome = 'Catupiry';
    END IF;
END;
//

DELIMITER ;

drop table venda_item;