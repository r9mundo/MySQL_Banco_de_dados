create database netflix;

use netflix;

CREATE TABLE usuario (
    id_usuario INT not null AUTO_INCREMENT,
    nome VARCHAR(100),
    cpf char(11),
    email varchar(100),
    senha varchar(100),
    primary key (id_usuario)
);
use netflix;

CREATE TABLE serie (
    id_serie INT not null AUTO_INCREMENT,
    nome VARCHAR(100),
    sinopse varchar(100),
    temporadas smallint,
    primary key (id_serie)
);
CREATE table play (
    id_play INT not null AUTO_INCREMENT,
    data DATE,
    id_usuario int,
    id_serie int,
    primary key (id_play)
    );
    
INSERT INTO usuario (nome, cpf, email, senha) VALUES
('Alice Silva', '12345678901', 'alice.silva@example.com', 'senha123'),
('Bruno Costa', '23456789012', 'bruno.costa@example.com', 'senha234'),
('Carla Souza', '34567890123', 'carla.souza@example.com', 'senha345'),
('Daniel Lima', '45678901234', 'daniel.lima@example.com', 'senha456'),
('Eduarda Alves', '56789012345', 'eduarda.alves@example.com', 'senha567'),
('Felipe Rocha', '67890123456', 'felipe.rocha@example.com', 'senha678'),
('Gabriela Mendes', '78901234567', 'gabriela.mendes@example.com', 'senha789'),
('Henrique Oliveira', '89012345678', 'henrique.oliveira@example.com', 'senha890'),
('Isabela Ferreira', '90123456789', 'isabela.ferreira@example.com', 'senha901'),
('João Pereira', '01234567890', 'joao.pereira@example.com', 'senha012'),
('Karina Santos', '12345098765', 'karina.santos@example.com', 'senha345'),
('Lucas Martins', '23456109876', 'lucas.martins@example.com', 'senha456'),
('Mariana Gomes', '34567210987', 'mariana.gomes@example.com', 'senha567'),
('Nicolas Ribeiro', '45678321098', 'nicolas.ribeiro@example.com', 'senha678'),
('Olivia Cardoso', '56789432109', 'olivia.cardoso@example.com', 'senha789'),
('Pedro Almeida', '67890543210', 'pedro.almeida@example.com', 'senha890'),
('Quintino Barros', '78901654321', 'quintino.barros@example.com', 'senha901'),
('Rafaela Teixeira', '89012765432', 'rafaela.teixeira@example.com', 'senha012'),
('Samuel Vieira', '90123876543', 'samuel.vieira@example.com', 'senha123'),
('Tatiana Cunha', '01234987654', 'tatiana.cunha@example.com', 'senha234'),
('Ursula Nunes', '12345098765', 'ursula.nunes@example.com', 'senha345'),
('Victor Lopes', '23456109876', 'victor.lopes@example.com', 'senha456'),
('Wesley Araujo', '34567210987', 'wesley.araujo@example.com', 'senha567'),
('Ximena Farias', '45678321098', 'ximena.farias@example.com', 'senha678'),
('Yasmin Batista', '56789432109', 'yasmin.batista@example.com', 'senha789');

select * from usuario;

INSERT INTO serie (nome, sinopse, temporadas) VALUES
('Stranger Things', 'Crianças enfrentam eventos sobrenaturais em sua cidade.', 4),
('The Witcher', 'Caçador de monstros busca seu lugar em um mundo perverso.', 3),
('La Casa de Papel', 'Criminosos realizam grande assalto na Casa da Moeda da Espanha.', 5),
('Bridgerton', 'Vida da alta sociedade londrina na era Regencial.', 2),
('The Crown', 'Vida da Rainha Elizabeth II e eventos históricos.', 5),
('Ozark', 'Consultor financeiro envolve família no mundo do crime.', 4),
('Narcos', 'Ascensão e queda do narcotraficante Pablo Escobar.', 3),
('Black Mirror', 'Antologia sobre o futuro próximo e tecnologia moderna.', 5),
('Lucifer', 'Senhor do Inferno abre boate e trabalha com a polícia.', 6),
('Money Heist: Korea', 'Adaptação coreana de La Casa de Papel.', 1);

select * from serie;

INSERT INTO play (data, id_usuario, id_serie) VALUES
('2024-01-01', 1, 1),
('2024-01-02', 2, 2),
('2024-01-03', 3, 3),
('2024-01-04', 4, 4),
('2024-01-05', 5, 5),
('2024-01-06', 6, 6),
('2024-01-07', 7, 7),
('2024-01-08', 8, 8),
('2024-01-09', 9, 9),
('2024-01-10', 10, 10),
('2024-01-11', 11, 1),
('2024-01-12', 12, 2),
('2024-01-13', 13, 3),
('2024-01-14', 14, 4),
('2024-01-15', 15, 5);

INSERT INTO plays (data, id_usuario, id_serie) VALUES
('01-01-2024', 1, 1),
('02-01-2024', 2, 2),
('03-01-2024', 3, 3),
('04-01-2024', 4, 4),
('05-01-2024', 5, 5),
('06-01-2024', 6, 6),
('07-01-2024', 7, 7),
('08-01-2024', 8, 8),
('09-01-2024', 9, 9),
('10-01-2024', 10, 10),
('11-01-2024', 11, 1),
('12-01-2024', 12, 2),
('13-01-2024', 13, 3),
('14-01-2024', 14, 4),
('15-01-2024', 15, 5);

select * from play;
select * from usuario;
select * from serie;

/* EX 1 */
select usuario.nome, usuario.email, play.data
from usuario inner join play
on usuario.id_usuario = play.id_usuario;

/* EX 2 */
select serie.nome, play.data
from serie inner join play
on serie.id_serie = play.id_serie;

select * from play;

/* EX 3 */
SELECT usuario.nome AS nome_usuario, serie.nome AS nome_serie
FROM usuario
INNER JOIN serie ON usuario.id_usuario = serie.id_serie
INNER JOIN play ON serie.id_serie = play.id_play;

SELECT usuario.nome, serie.nome
FROM usuario INNER JOIN play 
ON usuario.id_usuario = play.id_usuario
INNER JOIN serie ON play.id_serie = serie.id_serie;

