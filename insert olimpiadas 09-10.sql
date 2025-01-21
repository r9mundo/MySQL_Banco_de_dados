create database olimpiadas;
use olimpiadas;

create table atletas(
id int not null auto_increment,
nome varchar(40),
modalidade varchar(40),
idade int,
peso decimal(5,2),
altura decimal(3,2),
medalhas int,
nacionalidade char(3),
constraint primary key (id)
);

insert into atletas values (default, "Marcelo Huertas","Basquete",28,105,1.90,7,"BRA");

select * from atletas;

insert into atletas values (default, "Takaro Nomura","Katate",31,79,1.80,17,"JPN");
insert into atletas values (default, "Joseph Augustin","Karate",23,72,1.77,8,"FRA");
insert into atletas values (default, "Sophie Dominique","Volei",23,70,1.79,12,"FRA");
insert into atletas values (default, "Juan Carlos Angel","Volei",26,76,1.88,4,"ARG");
insert into atletas values (default, "Manoel Hernandes","Judo",31,83,1.98,2,"ARG");
insert into atletas values (default, "Amara Zuri","Basquete",32,86,1.95,1,"ZAF");
insert into atletas values (default, "Kornelia Ender","Natação",27,69,1.76,9,"DEU");
insert into atletas values (default, "Oscar Schmidt","Basquete",58,58,2.05,12,"BRA");
insert into atletas values (default, "Natasha Hoffmann","Natação",25,69,1.78,10,"DEU");
insert into atletas values (default, "Maria Fernandes","Handebol",26,75,1.79,11,"ESP");
insert into atletas values (default, "Maria Mendonza","Handebol",29,64,1.68,15,"CUB");
insert into atletas values (default, "Maria Carmen","Handebol",19,65,1.69,3,"ESP");
insert into atletas values (default, "Elijah Philips","Remo",22,66,1.67,7,"USA");
insert into atletas values (default, "Noah Oliver","Natação",30,101,1.98,8,"USA");
insert into atletas values (default, "Mike James","Basquete",24,102,1.99,9,"USA");
insert into atletas values (default, "Francesco Rossi","Basquete",34,100,1.90,11,"ITA");
insert into atletas values (default, "Bohdan Beneys","Atletismo",30,89,1.82,10,"SWE");
insert into atletas values (default, "Arnost Bedrich","Atletismo",21,75,1.83,13,"CZE");
insert into atletas values (default, "Jose Rodriguez","Triatlo",23,88,1.84,1,"VEN");

select * from atletas
where id = 13;

SELECT * FROM atletas 
WHERE id BETWEEN 5 AND 15;

SELECT * FROM atletas 
WHERE idade > 30;

select avg(altura) from atletas;

SELECT SUM(idade) FROM atletas;

SELECT *
FROM atletas
WHERE nome LIKE 'M%'; 

SELECT *
FROM atletas
WHERE nome LIKE '%s'; 

select min(idade) from atletas;
select max(peso) from atletas;




