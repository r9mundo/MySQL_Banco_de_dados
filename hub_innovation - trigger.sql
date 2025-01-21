create database hub_innovation;

use hub_innovation;

create table palestrante(
id_palestrante int not null auto_increment,
nome varchar (100) not null,
bio text,
email varchar(100),
primary key(id_palestrante)
);

INSERT INTO palestrante (nome, bio, email)
VALUES 
('Ana Silva', 'Especialista em Inteligência Artificial com 10 anos de experiência.', 'ana.silva@example.com'),
('Carlos Pereira', 'Engenheiro de Machine Learning e palestrante internacional.', 'carlos.pereira@example.com'),
('Mariana Souza', 'Consultora em Segurança Cibernética e autora de vários livros.', 'mariana.souza@example.com'),
('João Oliveira', 'Especialista em Big Data com vasta experiência em projetos internacionais.', 'joao.oliveira@example.com'),
('Fernanda Lima', 'Desenvolvedora web e instrutora de cursos online.', 'fernanda.lima@example.com'),
('Pedro Santos', 'Consultor em Blockchain e Criptomoedas.', 'pedro.santos@example.com'),
('Lucas Martins', 'Engenheiro de Redes Neurais e pesquisador.', 'lucas.martins@example.com'),
('Isabela Rocha', 'Especialista em DevOps e CI/CD.', 'isabela.rocha@example.com'),
('Gustavo Pereira', 'Analista de Dados e cientista de dados.', 'gustavo.pereira@example.com'),
('Mariana Silva', 'Arquiteta de soluções em computação em nuvem.', 'mariana.silva@example.com'),
('Rafael Souza', 'Especialista em Internet das Coisas (IoT).', 'rafael.souza@example.com'),
('Sofia Ribeiro', 'Engenheira de Software com foco em metodologias ágeis.', 'sofia.ribeiro@example.com'),
('Thiago Fernandes', 'Pesquisador em Robótica e automação.', 'thiago.fernandes@example.com'),
('Beatriz Oliveira', 'Designer de interfaces e experiência do usuário.', 'beatriz.oliveira@example.com'),
('Daniel Costa', 'Consultor em Inteligência de Negócios.', 'daniel.costa@example.com'),
('Eduarda Lima', 'Especialista em segurança de redes.', 'eduarda.lima@example.com'),
('Felipe Alves', 'Desenvolvedor mobile e instrutor.', 'felipe.alves@example.com'),
('Gabriela Pereira', 'Pesquisadora em Realidade Aumentada e Virtual.', 'gabriela.pereira@example.com'),
('Henrique Rocha', 'Gerente de projetos com certificação PMP.', 'henrique.rocha@example.com'),
('Juliana Martins', 'Cientista de dados e palestrante.', 'juliana.martins@example.com'),
('Leonardo Silva', 'Especialista em automação de testes.', 'leonardo.silva@example.com'),
('Manuela Souza', 'Arquiteta de software e consultora.', 'manuela.souza@example.com'),
('Nicolas Ribeiro', 'Engenheiro de sistemas e professor universitário.', 'nicolas.ribeiro@example.com');


select * from palestrante;

CREATE TABLE palestra (
    id_palestra INT NOT NULL AUTO_INCREMENT,
    titulo VARCHAR(100) NOT NULL,
    descricao TEXT,
    sala VARCHAR(50),
    horario DATETIME,
    vagas INT,
    id_palestrante INT,
    PRIMARY KEY (id_palestra)
);

INSERT INTO palestra (titulo, descricao, sala, horario, vagas, id_palestrante)
VALUES 
('Palestra sobre IA', 'Discussão sobre os avanços em Inteligência Artificial', 'Sala 101', '2024-11-20 10:00:00', 50, 1),
('Workshop de Machine Learning', 'Introdução prática ao Machine Learning', 'Sala 202', '2024-11-21 14:00:00', 30, 2),
('Seminário de Segurança Cibernética', 'Técnicas e práticas de segurança na era digital', 'Sala 303', '2024-11-22 09:00:00', 40, 3),
('Introdução ao Big Data', 'Conceitos e aplicações de Big Data', 'Sala 104', '2024-11-23 11:00:00', 60, 4),
('Desenvolvimento Web', 'Técnicas modernas de desenvolvimento web', 'Sala 105', '2024-11-24 13:00:00', 45, 5),
('Blockchain e Criptomoedas', 'Entendendo a tecnologia por trás das criptomoedas', 'Sala 106', '2024-11-25 15:00:00', 35, 6),
('Redes Neurais', 'Fundamentos e aplicações de redes neurais', 'Sala 107', '2024-11-26 10:00:00', 50, 7),
('DevOps e CI/CD', 'Práticas de DevOps e integração contínua', 'Sala 108', '2024-11-27 14:00:00', 40, 8),
('Análise de Dados', 'Ferramentas e técnicas para análise de dados', 'Sala 109', '2024-11-28 09:00:00', 55, 9),
('Computação em Nuvem', 'Serviços e arquiteturas de computação em nuvem', 'Sala 110', '2024-11-29 11:00:00', 50, 10),
('Internet das Coisas (IoT)', 'Aplicações e desafios do IoT', 'Sala 111', '2024-11-30 13:00:00', 45, 11),
('Engenharia de Software', 'Princípios e práticas de engenharia de software', 'Sala 112', '2024-12-01 15:00:00', 40, 12),
('Robótica', 'Introdução à robótica e suas aplicações', 'Sala 113', '2024-12-02 10:00:00', 50, 13),
('Design de Interfaces', 'Melhores práticas para design de interfaces', 'Sala 114', '2024-12-03 14:00:00', 35, 14),
('Metodologias Ágeis', 'Implementação de metodologias ágeis', 'Sala 115', '2024-12-04 09:00:00', 60, 15),
('Inteligência de Negócios', 'Uso de BI para tomada de decisões', 'Sala 116', '2024-12-05 11:00:00', 55, 16),
('Segurança de Redes', 'Proteção de redes e dados', 'Sala 117', '2024-12-06 13:00:00', 45, 17),
('Desenvolvimento Mobile', 'Criação de aplicativos móveis', 'Sala 118', '2024-12-07 15:00:00', 40, 18),
('Realidade Aumentada e Virtual', 'Explorando AR e VR', 'Sala 119', '2024-12-08 10:00:00', 50, 19),
('Gestão de Projetos', 'Ferramentas e técnicas de gestão de projetos', 'Sala 120', '2024-12-09 14:00:00', 35, 20),
('Ciência de Dados', 'Introdução à ciência de dados', 'Sala 121', '2024-12-10 09:00:00', 60, 21),
('Automação de Testes', 'Práticas de automação de testes', 'Sala 122', '2024-12-11 11:00:00', 55, 22),
('Arquitetura de Software', 'Design e arquitetura de software', 'Sala 123', '2024-12-12 13:00:00', 45, 23);

select * from palestra;

drop table palestra;

CREATE TABLE usuario (
    id_usuario INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    fone VARCHAR(20),
    data_nascimento DATE,
    id_palestra INT,
    PRIMARY KEY (id_usuario)
);

INSERT INTO usuario (nome, email, fone, data_nascimento, id_palestra)
VALUES 
('João Oliveira', 'joao.oliveira@example.com', '123456789', '1990-05-15', 1),
('Maria Fernandes', 'maria.fernandes@example.com', '987654321', '1985-08-22', 2),
('Pedro Santos', 'pedro.santos@example.com', '555666777', '1992-11-30', 3),
('Ana Costa', 'ana.costa@example.com', '111222333', '1988-01-10', 4),
('Carlos Lima', 'carlos.lima@example.com', '444555666', '1991-02-20', 5),
('Fernanda Alves', 'fernanda.alves@example.com', '777888999', '1987-03-30', 6),
('Gustavo Pereira', 'gustavo.pereira@example.com', '000111222', '1993-04-25', 7),
('Isabela Rocha', 'isabela.rocha@example.com', '333444555', '1989-05-15', 8),
('Lucas Martins', 'lucas.martins@example.com', '666777888', '1990-06-05', 9),
('Mariana Silva', 'mariana.silva@example.com', '999000111', '1986-07-25', 10),
('Rafael Souza', 'rafael.souza@example.com', '222333444', '1992-08-15', 11),
('Sofia Ribeiro', 'sofia.ribeiro@example.com', '555666777', '1985-09-05', 12),
('Thiago Fernandes', 'thiago.fernandes@example.com', '888999000', '1991-10-25', 13),
('Beatriz Oliveira', 'beatriz.oliveira@example.com', '111222333', '1987-11-15', 14),
('Daniel Costa', 'daniel.costa@example.com', '444555666', '1990-12-05', 15),
('Eduarda Lima', 'eduarda.lima@example.com', '777888999', '1989-01-25', 16),
('Felipe Alves', 'felipe.alves@example.com', '000111222', '1993-02-15', 17),
('Gabriela Pereira', 'gabriela.pereira@example.com', '333444555', '1988-03-05', 18),
('Henrique Rocha', 'henrique.rocha@example.com', '666777888', '1991-04-25', 19),
('Juliana Martins', 'juliana.martins@example.com', '999000111', '1986-05-15', 20),
('Leonardo Silva', 'leonardo.silva@example.com', '222333444', '1992-06-05', 21),
('Manuela Souza', 'manuela.souza@example.com', '555666777', '1985-07-25', 22),
('Nicolas Ribeiro', 'nicolas.ribeiro@example.com', '888999000', '1990-08-15', 23);

select * from usuario;

select * from palestra;

DROP TRIGGER IF EXISTS AtualizarVagasPalestra;

DELIMITER $$

CREATE TRIGGER AtualizarVagasPalestra
AFTER INSERT ON usuario
FOR EACH ROW
BEGIN
    UPDATE palestra
    SET vagas = vagas - 1
    WHERE id_palestra = NEW.id_palestra;
END$$

DELIMITER ;

SELECT 
    u.nome AS NomeUsuario,
    u.email AS EmailUsuario,
    p.titulo AS TituloPalestra,
    p.descricao AS DescricaoPalestra,
    p.sala AS SalaPalestra,
    p.horario AS HorarioPalestra
FROM 
    usuario u
INNER JOIN 
    palestra p ON u.id_palestra = p.id_palestra
ORDER BY 
    p.horario, u.nome;
    
DELIMITER $$

DROP TRIGGER IF EXISTS DevolverVagasPalestra$$

CREATE TRIGGER DevolverVagasPalestra
AFTER DELETE ON usuario
FOR EACH ROW
BEGIN
    UPDATE palestra
    SET vagas = vagas + 1
    WHERE id_palestra = OLD.id_palestra;
END$$

DELIMITER ;

select palestrante.nome, palestra.titulo
from palestrante inner join	palestra
on palestrante.id_palestrante = palestrante.id_palestrante;

show tables;

insert into usuario values (default,'jose','ze@ze.com', '23654789','2007-07-11',1);

DELIMITER $$

CREATE TRIGGER AtualizarVagasPalestra
AFTER INSERT ON usuario
FOR EACH ROW
BEGIN
    UPDATE palestra
    SET vagas = vagas - 1
    WHERE id_palestra = NEW.id_palestra;
END$$

DELIMITER ;


select * from palestra;

DELIMITER $$

delete from usuario where id.usuario=1 ;

CREATE TRIGGER DevolverVagasPalestra
AFTER DELETE ON usuario
FOR EACH ROW
BEGIN
    UPDATE palestra
    SET vagas = vagas + 1
    WHERE id_palestra = OLD.id_palestra;
END$$

DELIMITER ;