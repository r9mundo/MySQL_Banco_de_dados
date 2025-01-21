create database redesocial;

use redesocial;

CREATE TABLE usuario (
id_usuario INT not null AUTO_INCREMENT,
nome VARCHAR(45) not null,
email varchar(45) not null,
avatar varchar(45) not null,
senha varchar(45) not null,
sexo ENUM('F','M') not null,
primary key (id_usuario)
);

drop table comentario;
create table categoria (
id_cat INT not null AUTO_INCREMENT,
descricao VARCHAR(100) not null,
primary key (id_cat)
);

create table post (
id_post INT not null AUTO_INCREMENT,
data datetime not null,
texto text not null,
midia varchar (100) not null,
id_cat int not null, 
id_usuario int not null,
primary key (id_post)
);

create table comentario (
id_coment INT not null AUTO_INCREMENT,
data datetime not null,
texto text not null,
nomeusuario varchar (100) not null,
id_usuario int not null, 
id_post int not null,
primary key (id_coment)
);

show tables;

INSERT INTO usuario (nome, email, avatar, senha, sexo) VALUES
('Bruno Costa', 'bruno.costa@example.com', 'Brucost', 'senha456', 'M'),
('Carla Souza', 'carla.souza@example.com', 'Carsou', 'senha789', 'F'),
('Daniel Lima', 'daniel.lima@example.com', 'Danlim', 'senha101', 'M'),
('Elisa Mendes', 'elisa.mendes@example.com', 'Elimen', 'senha202', 'F'),
('Felipe Rocha', 'felipe.rocha@example.com', 'Felroc', 'senha303', 'M'),
('Gabriela Alves', 'gabriela.alves@example.com', 'Gabalv', 'senha404', 'F'),
('Henrique Silva', 'henrique.silva@example.com', 'Hensil', 'senha505', 'M'),
('Isabela Martins', 'isabela.martins@example.com', 'Isamar', 'senha606', 'F'),
('João Pedro', 'joao.pedro@example.com', 'Joaped', 'senha707', 'M'),
('Karina Oliveira', 'karina.oliveira@example.com', 'Karoli', 'senha808', 'F'),
('Lucas Ferreira', 'lucas.ferreira@example.com', 'Lucfer', 'senha909', 'M'),
('Mariana Santos', 'mariana.santos@example.com', 'Marsan', 'senha010', 'F'),
('Nicolas Pereira', 'nicolas.pereira@example.com', 'Nicper', 'senha111', 'M'),
('Olivia Costa', 'olivia.costa@example.com', 'Olicost', 'senha212', 'F'),
('Pedro Henrique', 'pedro.henrique@example.com', 'Pedhen', 'senha313', 'M'),
('Quintino Ramos', 'quintino.ramos@example.com', 'Quiram', 'senha414', 'M'),
('Renata Lima', 'renata.lima@example.com', 'Renlim', 'senha515', 'F'),
('Samuel Borges', 'samuel.borges@example.com', 'Sambor', 'senha616', 'M'),
('Tatiana Silva', 'tatiana.silva@example.com', 'Tatsil', 'senha717', 'F'),
('Ursula Mendes', 'ursula.mendes@example.com', 'Urmen', 'senha818', 'F'),
('Victor Hugo', 'victor.hugo@example.com', 'Vichug', 'senha919', 'M'),
('Wesley Rocha', 'wesley.rocha@example.com', 'Wesroc', 'senha020', 'M'),
('Ximena Lopes', 'ximena.lopes@example.com', 'Xilop', 'senha121', 'F'),
('Yasmin Souza', 'yasmin.souza@example.com', 'Yasou', 'senha222', 'F'),
('Zeca Ferreira', 'zeca.ferreira@example.com', 'Zecfer', 'senha323', 'M'),
('Ana Paula', 'ana.paula@example.com', 'Anapa', 'senha424', 'F'),
('Brenda Lima', 'brenda.lima@example.com', 'Brelim', 'senha525', 'F'),
('Carlos Eduardo', 'carlos.eduardo@example.com', 'Caredu', 'senha626', 'M'),
('Diana Costa', 'diana.costa@example.com', 'Diacos', 'senha727', 'F');

select * from post;

INSERT INTO categoria (descricao) VALUES
('imagem'),
('vídeo'),
('stories'),
('reels'),
('carrossel'),
('texto'),
('enquete'),
('link'),
('citação'),
('evento');

INSERT INTO post (data, texto, midia, id_cat, id_usuario) VALUES
('2024-10-01', 'Texto do post 1', 'imagem1.jpg', 1, 1),
('2024-10-02', 'Texto do post 2', 'video1.mp4', 2, 2),
('2024-10-03', 'Texto do post 3', 'story1.jpg', 3, 3),
('2024-10-04', 'Texto do post 4', 'reel1.mp4', 4, 4),
('2024-10-05', 'Texto do post 5', 'carrossel1.jpg', 5, 5),
('2024-10-06', 'Texto do post 6', 'texto1.txt', 6, 6),
('2024-10-07', 'Texto do post 7', 'enquete1.png', 7, 7),
('2024-10-08', 'Texto do post 8', 'link1.html', 8, 8),
('2024-10-09', 'Texto do post 9', 'citacao1.png', 9, 9),
('2024-10-10', 'Texto do post 10', 'evento1.jpg', 10, 10),
('2024-10-11', 'Texto do post 11', 'imagem2.jpg', 1, 11),
('2024-10-12', 'Texto do post 12', 'video2.mp4', 2, 12),
('2024-10-13', 'Texto do post 13', 'story2.jpg', 3, 13),
('2024-10-14', 'Texto do post 14', 'reel2.mp4', 4, 14),
('2024-10-15', 'Texto do post 15', 'carrossel2.jpg', 5, 15),
('2024-10-16', 'Texto do post 16', 'texto2.txt', 6, 16),
('2024-10-17', 'Texto do post 17', 'enquete2.png', 7, 17),
('2024-10-18', 'Texto do post 18', 'link2.html', 8, 18),
('2024-10-19', 'Texto do post 19', 'citacao2.png', 9, 19),
('2024-10-20', 'Texto do post 20', 'evento2.jpg', 10, 20),
('2024-10-21', 'Texto do post 21', 'imagem3.jpg', 1, 21),
('2024-10-22', 'Texto do post 22', 'video3.mp4', 2, 22),
('2024-10-23', 'Texto do post 23', 'story3.jpg', 3, 23),
('2024-10-24', 'Texto do post 24', 'reel3.mp4', 4, 24),
('2024-10-25', 'Texto do post 25', 'carrossel3.jpg', 5, 25),
('2024-10-26', 'Texto do post 26', 'texto3.txt', 6, 26),
('2024-10-27', 'Texto do post 27', 'enquete3.png', 7, 27),
('2024-10-28', 'Texto do post 28', 'link3.html', 8, 28),
('2024-10-29', 'Texto do post 29', 'citacao3.png', 9, 29),
('2024-10-30', 'Texto do post 30', 'evento3.jpg', 10, 30);

INSERT INTO comentario (data, texto, nomeusuario, id_post, id_usuario) VALUES
('2024-10-01', 'Texto do comentario 1', 'Alice Silva', 1, 5),
('2024-10-02', 'Texto do comentario 2', 'Bruno Costa', 2, 12),
('2024-10-03', 'Texto do comentario 3', 'Carla Souza', 3, 8),
('2024-10-04', 'Texto do comentario 4', 'Daniel Lima', 4, 15),
('2024-10-05', 'Texto do comentario 5', 'Elisa Mendes', 5, 3),
('2024-10-06', 'Texto do comentario 6', 'Felipe Rocha', 6, 20),
('2024-10-07', 'Texto do comentario 7', 'Gabriela Alves', 7, 10),
('2024-10-08', 'Texto do comentario 8', 'Henrique Silva', 8, 25),
('2024-10-09', 'Texto do comentario 9', 'Isabela Martins', 9, 7),
('2024-10-10', 'Texto do comentario 10', 'João Pedro', 10, 18),
('2024-10-11', 'Texto do comentario 11', 'Karina Oliveira', 11, 2),
('2024-10-12', 'Texto do comentario 12', 'Lucas Ferreira', 12, 22),
('2024-10-13', 'Texto do comentario 13', 'Mariana Santos', 13, 14),
('2024-10-14', 'Texto do comentario 14', 'Nicolas Pereira', 14, 1),
('2024-10-15', 'Texto do comentario 15', 'Olivia Costa', 15, 30),
('2024-10-16', 'Texto do comentario 16', 'Pedro Henrique', 16, 9),
('2024-10-17', 'Texto do comentario 17', 'Quintino Ramos', 17, 6),
('2024-10-18', 'Texto do comentario 18', 'Renata Lima', 18, 13),
('2024-10-19', 'Texto do comentario 19', 'Samuel Borges', 19, 4),
('2024-10-20', 'Texto do comentario 20', 'Tatiana Silva', 20, 17),
('2024-10-21', 'Texto do comentario 21', 'Ursula Mendes', 21, 11),
('2024-10-22', 'Texto do comentario 22', 'Victor Hugo', 22, 28),
('2024-10-23', 'Texto do comentario 23', 'Wesley Rocha', 23, 19),
('2024-10-24', 'Texto do comentario 24', 'Ximena Lopes', 24, 16),
('2024-10-25', 'Texto do comentario 25', 'Yasmin Souza', 25, 21),
('2024-10-26', 'Texto do comentario 26', 'Zeca Ferreira', 26, 23),
('2024-10-27', 'Texto do comentario 27', 'Ana Paula', 27, 24),
('2024-10-28', 'Texto do comentario 28', 'Brenda Lima', 28, 26),
('2024-10-29', 'Texto do comentario 29', 'Carlos Eduardo', 29, 27),
('2024-10-30', 'Texto do comentario 30', 'Diana Costa', 30, 29);

show tables;

select * from categoria;
select * from comentario;
select * from post;
select * from usuario;

/* EX 1 */
select usuario.nome, comentario.texto
from usuario inner join comentario
on usuario.id_usuario = comentario.id_usuario;

/* EX 2 */
select usuario.nome, post.texto
from usuario inner join post
on usuario.id_usuario = post.id_post;

/* EX 3 */
select usuario.nome, comentario.texto
from usuario inner join comentario
on usuario.id_usuario = comentario.id_coment;

/* EX 4 */
select usuario.nome, post.texto, comentario.nomeusuario, post.texto
from usuario inner join post
on usuario.id_usuario = comentario.id_post;

/*correção*/

select usuario.nome, post.texto, categoria.descricao
from usuario inner join post
on usuario.id_usuario = post.id_usuario
inner join categoria
on post.id_cat = categoria.id_cat;
