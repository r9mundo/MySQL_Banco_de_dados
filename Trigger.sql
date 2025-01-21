create database segundou;

use segundou;

create table vendedor(
id int	not null auto_increment,
nome varchar (100) not null,
total_vendas decimal (10,2) not null,
comissao decimal(5,2),
salario decimal(10,2),
primary key(id)
);


insert into vendedor (nome, total_vendas, comissao)
values ("Paulo", 500000, 0.07);
insert into vendedor (nome, total_vendas, comissao)
values ("Maria", 1000000, 0.07);
insert into vendedor (nome, total_vendas, comissao)
values ("Joao", 700000, 0.07);
insert into vendedor (nome, total_vendas, comissao)
values ("Valdir", 800000, 0.08);
insert into vendedor (nome, total_vendas, comissao)
values ("Marta", 900000, 0.11);

show tables;

CREATE TRIGGER tr_calcula_sal BEFORE INSERT
ON vendedor
FOR EACH ROW
SET new.salario = new.total_vendas * new.comissao;

select * from vendedor;

create table aluno(
	id int not null,
    nome varchar(100) not null,
    n1 decimal(5,2),
    n2 decimal(5,2),
    n3 decimal(5,2),
    media decimal(5,2),
    primary key(id)
);
insert into aluno (id,nome,n1,n2,n3)
values (2,"SABRINA",9.5,8.5,9.9);
insert into aluno (id,nome,n1,n2,n3)
values (1,"Paulo",5.5,8.5,7.9);

select * from aluno;

CREATE TRIGGER tr_calcula_media BEFORE INSERT
ON aluno
FOR EACH ROW 
SET new.media = (new.n1 + new.n2 + new.n3) / 3;

create table aluno_bkp(
	id_bkp int not null auto_increment,
    nome varchar(100) not null,
    media decimal(5,2),
    primary key(id_bkp)
);

insert into aluno (id,nome,n1,n2,n3)
values (3,"JOAQUINA",9.5,8.5,9.9);
insert into aluno (id,nome,n1,n2,n3)
values (4,"MARIO",7.5,5.5,7.9);

select * from aluno_bkp;
delete from aluno where id = 2;

DELIMITER //
CREATE TRIGGER tr_delete_aluno AFTER DELETE
ON aluno
FOR EACH ROW 
BEGIN 
	insert into aluno_bkp (id_bkp,nome,media) values (old.id,old.nome,old.media);
END //
DELIMITER ;
