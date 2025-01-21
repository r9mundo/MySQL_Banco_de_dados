create database delimiter;

use delimiter;

delimiter !!
create procedure sp_cadastrar_user(pnome varchar(100),plogin varchar(100))
begin
	
    insert into usuario values (default, pnome, plogin);
    select * from usuario where id = last_insert_id();

end !!
delimiter ;

show tables;

create table usuario(
id int not	null auto_increment,
nome varchar(100) not null,
login varchar(100) not	null,
primary key(id)
);

select	* from	usuario;

/* PROCEDURE CADASTRAR*/
delimiter !!
create procedure sp_cadastrar_user(pnome varchar(100),plogin varchar(100))
begin
	
    insert into usuario values (default, pnome, plogin);
    select * from usuario where id = last_insert_id();
end !!
delimiter ;

CALL sp_cadastrar_user('Ana Silva', 'ana.silva@example.com');
CALL sp_cadastrar_user('Bruno Costa', 'bruno.costa@example.com');
CALL sp_cadastrar_user('Carla Souza', 'carla.souza@example.com');
CALL sp_cadastrar_user('Daniel Lima', 'daniel.lima@example.com');
CALL sp_cadastrar_user('Elisa Fernandes', 'elisa.fernandes@example.com');
CALL sp_cadastrar_user('Felipe Rocha', 'felipe.rocha@example.com');
CALL sp_cadastrar_user('Gabriela Alves', 'gabriela.alves@example.com');
CALL sp_cadastrar_user('Henrique Pereira', 'henrique.pereira@example.com');
CALL sp_cadastrar_user('Isabela Martins', 'isabela.martins@example.com');
CALL sp_cadastrar_user('João Oliveira', 'joao.oliveira@example.com');
CALL sp_cadastrar_user('kkkk Oliveira', 'kkkk.oliveira@example.com');
CALL sp_cadastrar_user('llll Oliveira', 'llll.oliveira@example.com');


/* PROCEDURE DELETAR*/
delimiter !!
create procedure sp_deletar_user_por_id(user_id int)
begin
    delete from usuario where id = user_id;
end !!
delimiter ;

select * from usuario;

CALL sp_deletar_user_por_id(7);

DROP PROCEDURE IF EXISTS sp_deletar_user;

delete from usuario
where id = 1;

/* PROCEDURE ATUALIZAR*/
delimiter !!
create procedure sp_atualizar_user(pid int, pnovo_nome varchar(100), pnovo_login varchar(100))
begin
    update usuario
    set nome = pnovo_nome, login = pnovo_login
    where id = pid;
end !!
delimiter ;

CALL sp_atualizar_user(1, 'Novo Nome', 'novo.login@example.com');

SHOW TABLES LIKE 'usuario';

DELIMITER $$

CREATE PROCEDURE sp_atualizar_user(
    IN pid INT, 
    IN pnovo_nome VARCHAR(100), 
    IN pnovo_login VARCHAR(100)
)
BEGIN
    UPDATE usuario
    SET nome = pnovo_nome, login = pnovo_login
    WHERE id = pid;
END $$

DELIMITER ;


DROP PROCEDURE IF EXISTS sp_atualizar_user;

delimiter !!
create procedure sp_atualizar_user(pid int, pnovo_nome varchar(100), pnovo_login varchar(100))
begin
    update usuario
    set nome = pnovo_nome, login = pnovo_login
    where id = pid;
end !!
delimiter ;

select * from usuario;

CALL sp_atualizar_user(13, ' Nome13', 'nome2.login@example.com');