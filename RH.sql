create database rh;
use rh;

show databases;

use rh;

create table departamento(
id_depart int not null auto_increment,
nome_departamento varchar(100),
primary key (id_depart)
);

insert into departamento values (default, "Administrativo");
insert into departamento values (default, "Contabil");
insert into departamento values (default, "Producao");
insert into departamento values (default, "Financeiro");
insert into departamento values (default, "Pessoal");
insert into departamento values (default, "Comercial");
insert into departamento values (default, "Vendas");
insert into departamento values (default, "Diretoria");
insert into departamento values (default, "TI");

select * from departamento;
show tables;

create table cargo(
id_cargo int not null auto_increment,
nome_cargo varchar(60),
id_depart int,
primary key (id_cargo)
);

insert into cargo (id_cargo,nome_cargo,id_depart) values (default, "Secretaria", 1);
insert into cargo (id_cargo,nome_cargo,id_depart) values (default, "Consultor", 7);
insert into cargo (id_cargo,nome_cargo,id_depart) values (default, "Assistente Administrativo",1);
insert into cargo (id_cargo,nome_cargo,id_depart) values (default, "Conferente",3);
insert into cargo (id_cargo,nome_cargo,id_depart) values (default, "Vendedor",6);
insert into cargo (id_cargo,nome_cargo,id_depart) values (default, "Estagiario",5);
insert into cargo (id_cargo,nome_cargo,id_depart) values (default, "Supervisor",4);
insert into cargo (id_cargo,nome_cargo,id_depart) values (default, "Gerente",2);
insert into cargo (id_cargo,nome_cargo,id_depart) values (default, "Diretor",8);

select * from cargo;

create table funcionario(
id_funcionario int not null auto_increment,
nome varchar(60), cpf char(11), idade int, salario decimal(10,2), endereco varchar(255), data_nascimento date, data_admissao date, cidade varchar(100), 
nascionalidade varchar(50), id_depart int, id_cargo int,
primary key (id_funcionario)
);

INSERT INTO funcionario (id_funcionario, nome, cpf, idade, salario, endereco, data_nascimento, data_admissao, cidade, nascionalidade, id_depart, id_cargo) 
VALUES (default, 'Ana Arruda', '12345678901', 30, 5000.00, 'Rua das Flores, 456', '1994-03-22', '2024-10-16', 'Campo Grande', 'Brasileira', 1, 2);
INSERT INTO funcionario (id_funcionario, nome, cpf, idade, salario, endereco, data_nascimento, data_admissao, cidade, nascionalidade, id_depart, id_cargo) 
VALUES (default, 'Anna Flores', '98765432100', 28, 5500.00, 'Av. Brasil, 789', '1996-07-15', '2024-10-16', 'Rio de Janeiro', 'Brasileira', 3, 4);
INSERT INTO funcionario (id_funcionario, nome, cpf, idade, salario, endereco, data_nascimento, data_admissao, cidade, nascionalidade, id_depart, id_cargo) 
VALUES (default, 'Arthur Silva', '12345678901', 32, 6000.00, 'Rua da Paz, 123', '1992-11-25', '2024-10-16', 'São Paulo', 'Brasileira', 2, 5);
INSERT INTO funcionario (id_funcionario, nome, cpf, idade, salario, endereco, data_nascimento, data_admissao, cidade, nascionalidade, id_depart, id_cargo) 
VALUES (default, 'Denyel Rodrigues', '11223344556', 29, 6200.00, 'Rua das Palmeiras, 321', '1995-08-10', '2024-10-16', 'Belo Horizonte', 'Brasileira', 4, 6);
INSERT INTO funcionario (id_funcionario, nome, cpf, idade, salario, endereco, data_nascimento, data_admissao, cidade, nascionalidade, id_depart, id_cargo) 
VALUES (default, 'Eduardo Pires', '22334455667', 34, 7000.00, 'Rua do Comércio, 456', '1990-12-05', '2024-10-16', 'Curitiba', 'Brasileira', 5, 7);
INSERT INTO funcionario (id_funcionario, nome, cpf, idade, salario, endereco, data_nascimento, data_admissao, cidade, nascionalidade, id_depart, id_cargo) 
VALUES (default, 'Eduardo Lopes', '11111111111', 25, 3000.00, 'Rua A, 100', '1999-01-01', '2024-10-16', 'São Paulo', 'Brasileira', 1, 1);
select * from funcionario;
INSERT INTO funcionario (id_funcionario, nome, cpf, idade, salario, endereco, data_nascimento, data_admissao, cidade, nascionalidade, id_depart, id_cargo) 
VALUES (default, 'Ezequiel Rocha', '22222222222', 26, 3200.00, 'Rua B, 200', '1998-02-02', '2024-10-16', 'Rio de Janeiro', 'Brasileira', 2, 2);
INSERT INTO funcionario (id_funcionario, nome, cpf, idade, salario, endereco, data_nascimento, data_admissao, cidade, nascionalidade, id_depart, id_cargo) 
VALUES (default, 'Fernanda Souza', '33333333333', 27, 3400.00, 'Rua C, 300', '1997-03-03', '2024-10-16', 'Belo Horizonte', 'Brasileira', 3, 3);
INSERT INTO funcionario (id_funcionario, nome, cpf, idade, salario, endereco, data_nascimento, data_admissao, cidade, nascionalidade, id_depart, id_cargo) 
VALUES (default, 'Gabriel Oliveira', '44444444444', 28, 3600.00, 'Rua D, 400', '1996-04-04', '2024-10-16', 'Curitiba', 'Brasileira', 4, 4);
INSERT INTO funcionario (id_funcionario, nome, cpf, idade, salario, endereco, data_nascimento, data_admissao, cidade, nascionalidade, id_depart, id_cargo) 
VALUES (default, 'Gustavo Santos', '55555555555', 29, 3800.00, 'Rua E, 500', '1995-05-05', '2024-10-16', 'Porto Alegre', 'Brasileira', 5, 5);
INSERT INTO funcionario (id_funcionario, nome, cpf, idade, salario, endereco, data_nascimento, data_admissao, cidade, nascionalidade, id_depart, id_cargo) 
VALUES (default, 'Isabela Miho', '66666666666', 30, 4000.00, 'Rua F, 600', '1994-06-06', '2024-10-16', 'Salvador', 'Brasileira', 6, 6);
INSERT INTO funcionario (id_funcionario, nome, cpf, idade, salario, endereco, data_nascimento, data_admissao, cidade, nascionalidade, id_depart, id_cargo) 
VALUES (default, 'Joao Correia', '77777777777', 31, 4200.00, 'Rua G, 700', '1993-07-07', '2024-10-16', 'Fortaleza', 'Brasileira', 7, 7);
INSERT INTO funcionario (id_funcionario, nome, cpf, idade, salario, endereco, data_nascimento, data_admissao, cidade, nascionalidade, id_depart, id_cargo) 
VALUES (default, 'Jose Junior', '88888888888', 32, 4400.00, 'Rua H, 800', '1992-08-08', '2024-10-16', 'Brasília', 'Brasileira', 8, 8);
INSERT INTO funcionario (id_funcionario, nome, cpf, idade, salario, endereco, data_nascimento, data_admissao, cidade, nascionalidade, id_depart, id_cargo) 
VALUES (default, 'Joao Oliveira', '99999999999', 33, 4600.00, 'Rua I, 900', '1991-09-09', '2024-10-16', 'Manaus', 'Brasileira', 9, 9);
INSERT INTO funcionario (id_funcionario, nome, cpf, idade, salario, endereco, data_nascimento, data_admissao, cidade, nascionalidade, id_depart, id_cargo) 
VALUES (default, 'Julie Martins', '10101010101', 34, 4800.00, 'Rua J, 1000', '1990-10-10', '2024-10-16', 'Recife', 'Brasileira', 10, 10);
INSERT INTO funcionario (id_funcionario, nome, cpf, idade, salario, endereco, data_nascimento, data_admissao, cidade, nascionalidade, id_depart, id_cargo) 
VALUES (default, 'Lara Santiago', '11111111112', 35, 5000.00, 'Rua K, 1100', '1989-11-11', '2024-10-16', 'Belém', 'Brasileira', 11, 11);
INSERT INTO funcionario (id_funcionario, nome, cpf, idade, salario, endereco, data_nascimento, data_admissao, cidade, nascionalidade, id_depart, id_cargo) 
VALUES (default, 'Luan Pereira', '12121212121', 36, 5200.00, 'Rua L, 1200', '1988-12-12', '2024-10-16', 'Goiânia', 'Brasileira', 12, 12);
INSERT INTO funcionario (id_funcionario, nome, cpf, idade, salario, endereco, data_nascimento, data_admissao, cidade, nascionalidade, id_depart, id_cargo) 
VALUES (default, 'Lucas Oliveira', '13131313131', 37, 5400.00, 'Rua M, 1300', '1987-01-13', '2024-10-16', 'Natal', 'Brasileira', 13, 13);
INSERT INTO funcionario (id_funcionario, nome, cpf, idade, salario, endereco, data_nascimento, data_admissao, cidade, nascionalidade, id_depart, id_cargo) 
VALUES (default, 'Luiz Goncalves', '14141414141', 38, 5600.00, 'Rua N, 1400', '1986-02-14', '2024-10-16', 'João Pessoa', 'Brasileira', 14, 14);

INSERT INTO funcionario (id_funcionario, nome, cpf, idade, salario, endereco, data_nascimento, data_admissao, cidade, nascionalidade, id_depart, id_cargo) 
VALUES (default, 'Lua Abreu', '15151515151', 39, 5800.00, 'Rua O, 1500', '1985-03-15', '2024-10-16', 'Maceió', 'Brasileira', 15, 15);

INSERT INTO funcionario (id_funcionario, nome, cpf, idade, salario, endereco, data_nascimento, data_admissao, cidade, nascionalidade, id_depart, id_cargo) 
VALUES (default, 'Maria Miranda', '16161616161', 40, 6000.00, 'Rua P, 1600', '1984-04-16', '2024-10-16', 'Aracaju', 'Brasileira', 16, 16);

INSERT INTO funcionario (id_funcionario, nome, cpf, idade, salario, endereco, data_nascimento, data_admissao, cidade, nascionalidade, id_depart, id_cargo) 
VALUES (default, 'Mariana Arantes', '17171717171', 41, 6200.00, 'Rua Q, 1700', '1983-05-17', '2024-10-16', 'Florianópolis', 'Brasileira', 17, 17);

INSERT INTO funcionario (id_funcionario, nome, cpf, idade, salario, endereco, data_nascimento, data_admissao, cidade, nascionalidade, id_depart, id_cargo) 
VALUES (default, 'Matheus Nemer', '18181818181', 42, 6400.00, 'Rua R, 1800', '1982-06-18', '2024-10-16', 'Vitória', 'Brasileira', 18, 18);

INSERT INTO funcionario (id_funcionario, nome, cpf, idade, salario, endereco, data_nascimento, data_admissao, cidade, nascionalidade, id_depart, id_cargo) 
VALUES (default, 'Paulo Rojas', '19191919191', 43, 6600.00, 'Rua S, 1900', '1981-07-19', '2024-10-16', 'Campo Grande', 'Brasileira', 19, 19);

INSERT INTO funcionario (id_funcionario, nome, cpf, idade, salario, endereco, data_nascimento, data_admissao, cidade, nascionalidade, id_depart, id_cargo) 
VALUES (default, 'Ronaldo Silva', '20202020202', 44, 6800.00, 'Rua T, 2000', '1980-08-20', '2024-10-16', 'Cuiabá', 'Brasileira', 20, 20);

INSERT INTO funcionario (id_funcionario, nome, cpf, idade, salario, endereco, data_nascimento, data_admissao, cidade, nascionalidade, id_depart, id_cargo) 
VALUES (default, 'Sabrina Araujo', '21212121212', 45, 7000.00, 'Rua U, 2100', '1979-09-21', '2024-10-16', 'São Luís', 'Brasileira', 21, 21);

INSERT INTO funcionario (id_funcionario, nome, cpf, idade, salario, endereco, data_nascimento, data_admissao, cidade, nascionalidade, id_depart, id_cargo) 
VALUES (default, 'Valdir Ferreira', '22222222222', 46, 7200.00, 'Rua V, 2200', '1978-10-22', '2024-10-16', 'Teresina', 'Brasileira', 22, 22);

INSERT INTO funcionario (id_funcionario, nome, cpf, idade, salario, endereco, data_nascimento, data_admissao, cidade, nascionalidade, id_depart, id_cargo) 
VALUES (default, 'Vinicius Lopes', '23232323232', 47, 7400.00, 'Rua W, 2300', '1977-11-23', '2024-10-16', 'Macapá', 'Brasileira', 23, 23);

INSERT INTO funcionario (id_funcionario, nome, cpf, idade, salario, endereco, data_nascimento, data_admissao, cidade, nascionalidade, id_depart, id_cargo) 
VALUES (default, 'Vinicius Marques', '24242424242', 48, 7600.00, 'Rua X, 2400', '1976-12-24', '2024-10-16', 'Palmas', 'Brasileira', 24, 24);

INSERT INTO funcionario (id_funcionario, nome, cpf, idade, salario, endereco, data_nascimento, data_admissao, cidade, nascionalidade, id_depart, id_cargo) 
VALUES (default, 'Yuri Maeda', '25252525252', 49, 7800.00, 'Rua Y, 2500', '1975-01-25', '2024-10-16', 'Boa Vista', 'Brasileira', 25, 25);

INSERT INTO funcionario (id_funcionario, nome, cpf, idade, salario, endereco, data_nascimento, data_admissao, cidade, nascionalidade, id_depart, id_cargo) 
VALUES (default, 'R R', '33262626248', 43, 7800.00, 'Rua Y, 2500', '1975-01-25', '1981-09-09', 'Boa Vista', 'Brasileira', 33, 33);

delete from funcionario where id_funcionario = 19;

create table dependente(
id_dependente int not null auto_increment, n_certidao varchar(30), nome_completo varchar(60), data_nascimento date, local_nascimento varchar(45),
id_funcinario int, primary key (id_dependente)
);
INSERT INTO dependente (id_dependente, n_certidao, nome_completo, data_nascimento, local_nascimento, id_funcionario)
VALUES (default, '561255562652', 'Jose Soares', '2005-04-10', 'São Paulo', 30);

show tables;

select * from dependente;
select * from funcionario;

INSERT INTO dependente (id_dependente, n_certidao, nome_completo, data_nascimento, local_nascimento, id_funcionario)
values (default, '561255562653', 'Maria Silva', '2006-05-11', 'Rio de Janeiro', 31);

select * from departamento;
select * from cargo;

update funcionario set salario = 6500
where id_funcionario = 8;

delete from funcionario where id_funcionario = 8;

update funcionario set endereco = "Av. Afonso pena"
where id_funcionario < 5;

select nome, data_nascimento from funcionario;

select cpf, nome, salario
from funcionario
where id_funcionario = 10;

select cpf, nome, salario
from funcionario
where nome like '%M';

select cpf, nome, salario
from funcionario
where nome like '%MARIA%';

SELECT nome, day(data_nascimento), month(data_nascimento), year(data_nascimento)
from funcionario;

select current_date();

select now();

select timestampdiff(year, data_nascimento,now())
from funcionario;

select timestampdiff(year, data_nascimento,now()),
timestampdiff(month, data_nascimento,now()),
timestampdiff(day, data_nascimento,now())
from funcionario;

select timestampdiff(year, data_nascimento,now()),
timestampdiff(month, data_nascimento,now()),
timestampdiff(day, data_nascimento,now())
where id_funcionario = 33;

select nome, timestampdiff(year, data_nascimento,now()) as idade
from funcionario
order by idade desc;

select * from funcionario
order by nome desc;

select * from funcionario
where id_funcionario > 8 and id_funcionario < 18;

select count(id_funcionario) from funcionario;

select * from dependente;

select max(timestampdiff(year, data_nascimento,now()))
from dependente;

select nome_completo, data_nascimento
from dependente
where data_nascimento = (select max(data_nascimento) from dependente;


