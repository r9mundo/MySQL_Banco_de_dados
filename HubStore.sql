create database hubstore;
show databases;
use hubstore;

drop table pedido_prods;
show tables;

select * from pedido_prods;

select id_pedido, data_pedido, segmento, pais, cidade, estado
from pedido_prods 
where estado = 'california';

create	view pedidos_cidade as
select ID_Produto, Categoria, segmento, SubCategoria, Valor_Venda
from pedido_prods 
where cidade = 'san diego';

select * from pedidos_cidade;

select * from pedidos_california;

select * from pedidos_california
where id_pedido = 'ca-2018-140963';

drop view pedidos_california;

create	view pedidos_california as
select id_pedido, data_pedido, segmento, pais, cidade, estado
from pedido_prods 
where estado = 'california';

CREATE TABLE pedido_prods (
    ID_Pedido VARCHAR(40),
    Data_Pedido CHAR(10),
    ID_Cliente VARCHAR(20),
    Segmento VARCHAR(50),
    Pais VARCHAR(50),
    Cidade VARCHAR(50),
    Estado VARCHAR(50),
    ID_Produto VARCHAR(20),
    Categoria VARCHAR(50),
    SubCategoria VARCHAR(50),
    Valor_Venda DECIMAL(10, 2)
);


load data infile '/var/lib/mysql-files/vendas_data.csv'
into table pedido_prods
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

SHOW VARIABLES LIKE "secure_file_priv";

/*EX 1*/
SELECT Segmento, COUNT(ID_Cliente)
FROM pedido_prods
GROUP BY Segmento;

select count(ID_Pedido)
from pedido_prods
where segmento = 'consumer';

select count(ID_Pedido)
from pedido_prods
where segmento = 'home office';

select count(ID_Pedido)
from pedido_prods
where segmento = 'corporate';

/*EX 2*/
select count(ID_Produto)
from pedido_prods
where ID_Cliente = 'BH-11710';

/*EX 3*/
select sum(Valor_Venda)
from pedido_prods
where ID_Cliente = 'BH-11710';

/*EX 4*/

/*EX 5*/
select count(ID_Pedido)
from pedido_prods
where ID_Cliente = 'AA-10315';

/*EX 6*/
SELECT ID_Cliente, SUM(Valor_Venda)
FROM pedido_prods
GROUP BY ID_Cliente;

/*EX 7*/
SELECT Categoria, COUNT(ID_Pedido)
FROM pedido_prods
GROUP BY Categoria;

select * from pedido_prods;
