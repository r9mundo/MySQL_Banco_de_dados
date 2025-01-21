create database	ecommerce_tr;

use ecommerce_tr;

CREATE TABLE usuario (
    id_user INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    senha VARCHAR(32) NOT NULL,
    status tinyint,
    PRIMARY KEY (id_user)
);

INSERT INTO usuario (nome, email, senha, status)
VALUES 
('João Oliveira', 'joao.oliveira@example.com', 'senha123', 1),
('Maria Fernandes', 'maria.fernandes@example.com', 'senha123', 1),
('Pedro Santos', 'pedro.santos@example.com', 'senha123', 1),
('Ana Costa', 'ana.costa@example.com', 'senha123', 1),
('Carlos Lima', 'carlos.lima@example.com', 'senha123', 1),
('Fernanda Alves', 'fernanda.alves@example.com', 'senha123', 1),
('Gustavo Pereira', 'gustavo.pereira@example.com', 'senha123', 1),
('Isabela Rocha', 'isabela.rocha@example.com', 'senha123', 1),
('Lucas Martins', 'lucas.martins@example.com', 'senha123', 1),
('Mariana Silva', 'mariana.silva@example.com', 'senha123', 1),
('Rafael Souza', 'rafael.souza@example.com', 'senha123', 1),
('Sofia Ribeiro', 'sofia.ribeiro@example.com', 'senha123', 1),
('Thiago Fernandes', 'thiago.fernandes@example.com', 'senha123', 1),
('Beatriz Oliveira', 'beatriz.oliveira@example.com', 'senha123', 1),
('Daniel Costa', 'daniel.costa@example.com', 'senha123', 1),
('Eduarda Lima', 'eduarda.lima@example.com', 'senha123', 1),
('Felipe Alves', 'felipe.alves@example.com', 'senha123', 1),
('Gabriela Pereira', 'gabriela.pereira@example.com', 'senha123', 0),
('Henrique Rocha', 'henrique.rocha@example.com', 'senha123', 0),
('Juliana Martins', 'juliana.martins@example.com', 'senha123', 0);

select * from usuario;

CREATE TABLE endereco (
    id_endereco INT NOT NULL AUTO_INCREMENT,
    logradouro VARCHAR(100) NOT NULL,
    complemento VARCHAR(100) NOT NULL,
    cep CHAR(10) NOT NULL,
    cidade VARCHAR(45) NOT NULL,
    estado VARCHAR(45) NOT NULL,
    PRIMARY KEY (id_endereco)
);

INSERT INTO endereco (logradouro, complemento, cep, cidade, estado)
VALUES 
('Rua das Flores', 'Apto 101', '79002-000', 'Campo Grande', 'MS'),
('Avenida Brasil', 'Casa 2', '79003-000', 'Campo Grande', 'MS'),
('Rua Afonso Pena', 'Bloco B', '79004-000', 'Campo Grande', 'MS'),
('Rua 13 de Maio', 'Apto 202', '79005-000', 'Campo Grande', 'MS'),
('Avenida Mato Grosso', 'Casa 3', '79006-000', 'Campo Grande', 'MS'),
('Rua Bahia', 'Bloco C', '79007-000', 'Campo Grande', 'MS'),
('Rua Ceará', 'Apto 303', '79008-000', 'Campo Grande', 'MS'),
('Avenida Afonso Pena', 'Casa 4', '79009-000', 'Campo Grande', 'MS'),
('Rua 14 de Julho', 'Bloco D', '79010-000', 'Campo Grande', 'MS'),
('Rua Rui Barbosa', 'Apto 404', '79011-000', 'Campo Grande', 'MS'),
('Avenida Ernesto Geisel', 'Casa 5', '79012-000', 'Campo Grande', 'MS'),
('Rua Pedro Celestino', 'Bloco E', '79013-000', 'Campo Grande', 'MS'),
('Rua Dom Aquino', 'Apto 505', '79014-000', 'Campo Grande', 'MS'),
('Avenida Calógeras', 'Casa 6', '79015-000', 'Campo Grande', 'MS'),
('Rua Barão do Rio Branco', 'Bloco F', '79016-000', 'Campo Grande', 'MS'),
('Rua 26 de Agosto', 'Apto 606', '79017-000', 'Campo Grande', 'MS'),
('Avenida Fernando Corrêa', 'Casa 7', '79018-000', 'Campo Grande', 'MS'),
('Rua Joaquim Murtinho', 'Bloco G', '79019-000', 'Campo Grande', 'MS'),
('Rua Maracaju', 'Apto 707', '79020-000', 'Campo Grande', 'MS'),
('Avenida Mato Grosso', 'Casa 8', '79021-000', 'Campo Grande', 'MS');

select * from endereco;

CREATE TABLE cliente (
    id_cliente INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) NOT NULL,
    telefone varchar(50),
    sexo enum ('m','f'),
    cadastro datetime,
    id_endereco int(11),
    PRIMARY KEY (id_cliente)
);

INSERT INTO cliente (nome, cpf, telefone, sexo, cadastro, id_endereco)
VALUES 
('João Oliveira', '12345678901', '123456789', 'm', '2024-11-22 14:00:00', 1),
('Maria Fernandes', '23456789012', '987654321', 'f', '2024-11-22 14:05:00', 2),
('Pedro Santos', '34567890123', '555666777', 'm', '2024-11-22 14:10:00', 3),
('Ana Costa', '45678901234', '111222333', 'f', '2024-11-22 14:15:00', 4),
('Carlos Lima', '56789012345', '444555666', 'm', '2024-11-22 14:20:00', 5),
('Fernanda Alves', '67890123456', '777888999', 'f', '2024-11-22 14:25:00', 6),
('Gustavo Pereira', '78901234567', '000111222', 'm', '2024-11-22 14:30:00', 7),
('Isabela Rocha', '89012345678', '333444555', 'f', '2024-11-22 14:35:00', 8),
('Lucas Martins', '90123456789', '666777888', 'm', '2024-11-22 14:40:00', 9),
('Mariana Silva', '01234567890', '999000111', 'f', '2024-11-22 14:45:00', 10),
('Rafael Souza', '12345098765', '222333444', 'm', '2024-11-22 14:50:00', 11),
('Sofia Ribeiro', '23456109876', '555666777', 'f', '2024-11-22 14:55:00', 12),
('Thiago Fernandes', '34567210987', '888999000', 'm', '2024-11-22 15:00:00', 13),
('Beatriz Oliveira', '45678321098', '111222333', 'f', '2024-11-22 15:05:00', 14),
('Daniel Costa', '56789432109', '444555666', 'm', '2024-11-22 15:10:00', 15),
('Eduarda Lima', '67890543210', '777888999', 'f', '2024-11-22 15:15:00', 16),
('Felipe Alves', '78901654321', '000111222', 'm', '2024-11-22 15:20:00', 17),
('Gabriela Pereira', '89012765432', '333444555', 'f', '2024-11-22 15:25:00', 18),
('Henrique Rocha', '90123876543', '666777888', 'm', '2024-11-22 15:30:00', 19),
('Juliana Martins', '01234987654', '999000111', 'f', '2024-11-22 15:35:00', 20);

select * from cliente;

CREATE TABLE pedido (
    num_pedido INT NOT NULL AUTO_INCREMENT,
    data date NOT NULL,
    status VARCHAR(50) NOT NULL,
    id_cliente int,
    PRIMARY KEY (num_pedido)
);

INSERT INTO pedido (data, status, id_cliente)
VALUES 
('2024-11-01', 'Pendente', 1),
('2024-11-02', 'Concluído', 2),
('2024-11-03', 'Cancelado', 3),
('2024-11-04', 'Pendente', 4),
('2024-11-05', 'Concluído', 5),
('2024-11-06', 'Cancelado', 6),
('2024-11-07', 'Pendente', 7),
('2024-11-08', 'Concluído', 8),
('2024-11-09', 'Cancelado', 9),
('2024-11-10', 'Pendente', 10),
('2024-11-11', 'Concluído', 11),
('2024-11-12', 'Cancelado', 12),
('2024-11-13', 'Pendente', 13),
('2024-11-14', 'Concluído', 14),
('2024-11-15', 'Cancelado', 15),
('2024-11-16', 'Pendente', 16),
('2024-11-17', 'Concluído', 17),
('2024-11-18', 'Cancelado', 18),
('2024-11-19', 'Pendente', 19),
('2024-11-20', 'Concluído', 20);


select * from pedido;

show tables;

CREATE TABLE pagamento (
    id_pag INT NOT NULL AUTO_INCREMENT,
    tipo VARCHAR(50),
    valor_pago decimal (7,2),
    data date,
    num_pedido int,
    PRIMARY KEY (id_pag)
);



CREATE TABLE categoria (
    id_cat INT NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(50),
    PRIMARY KEY (id_cat)
);

CREATE TABLE fabricante (
    id_fab INT NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(50),
    PRIMARY KEY (id_fab)
);


CREATE TABLE produto (
    id_prod INT NOT NULL AUTO_INCREMENT,
    nome_prod VARCHAR(50),
    descricao text,
    modelo VARCHAR(50),
    estoque int,
    id_categoria int,
    id_fabricante int,
    PRIMARY KEY (id_prod)
);

INSERT INTO produto (nome_prod, descricao, modelo, estoque, id_categoria, id_fabricante)
VALUES 
('Produto A', 'Descrição do Produto A', 'Modelo A', 100, 1, 1),
('Produto B', 'Descrição do Produto B', 'Modelo B', 200, 2, 2),
('Produto C', 'Descrição do Produto C', 'Modelo C', 150, 3, 3),
('Produto D', 'Descrição do Produto D', 'Modelo D', 300, 4, 4),
('Produto E', 'Descrição do Produto E', 'Modelo E', 250, 5, 5),
('Produto F', 'Descrição do Produto F', 'Modelo F', 50, 6, 6),
('Produto G', 'Descrição do Produto G', 'Modelo G', 75, 7, 7),
('Produto H', 'Descrição do Produto H', 'Modelo H', 125, 8, 8),
('Produto I', 'Descrição do Produto I', 'Modelo I', 175, 9, 9),
('Produto J', 'Descrição do Produto J', 'Modelo J', 225, 10, 10);

DELIMITER //

CREATE TRIGGER atualiza_status_pedido
AFTER INSERT ON pagamento
FOR EACH ROW
BEGIN
    UPDATE pedido
    SET status = 'Concluído'
    WHERE num_pedido = NEW.num_pedido AND status = 'Pendente';
END;
//

DELIMITER ;

INSERT INTO pagamento (tipo, valor_pago, data, num_pedido)
VALUES 
('Cartão de Crédito', 150.00, '2024-11-01', 1);

select * from pedido;

CREATE TABLE pedido_item (
    id_item_ped INT NOT NULL AUTO_INCREMENT,
    quant int,
    valor_unit decimal(10,2),
    total decimal(10,2),
    id_prod int,
    num_pedido int,
    PRIMARY KEY (id_item_ped)
);

DELIMITER //

CREATE TRIGGER tr_atualiza_estoque_produto
AFTER INSERT ON pedido_item
FOR EACH ROW
BEGIN
    UPDATE produto
    SET estoque = estoque - NEW.quant
    WHERE id_prod = NEW.id_prod;
END;
//

DELIMITER ;

select * from produto;


INSERT INTO pedido_item (quant, valor_unit, total, id_prod, num_pedido)
VALUES 
(2, 50.00, 100.00, 1, 1);

INSERT INTO pedido_item (quant, valor_unit, total, id_prod, num_pedido)
VALUES 
(2, 50.00, 100.00, 1, 1),
(1, 200.00, 200.00, 2, 2),
(3, 75.00, 225.00, 3, 3),
(4, 25.00, 100.00, 4, 4),
(5, 10.00, 50.00, 5, 5),
(2, 150.00, 300.00, 6, 6),
(1, 500.00, 500.00, 7, 7),
(3, 100.00, 300.00, 8, 8),
(4, 20.00, 80.00, 9, 9),
(2, 250.00, 500.00, 10, 10);





