create database livraria;

use livraria;

create table editora(
id_editora int not null auto_increment,
nome varchar(100),
cnpj char(14),
estado char(2),
primary key(id_editora)
);
insert into editora (id_editora,nome, cnpj, estado)
values (default, 'grupo companhia das letras','62585723000196','sp');

select * from editora;

insert into editora (id_editora,nome, cnpj, estado)
values (default, 'grupo editorial record','33217749000120','rj');

insert into editora (id_editora,nome, cnpj, estado)
values (default, 'globo livros','33113309000147','sp');

insert into editora (id_editora,nome, cnpj, estado)
values (default, 'editora moderna','62142886000101','sp');

insert into editora (id_editora,nome, cnpj, estado)
values (default, 'editora rocco','33111888000166','rj');

insert into editora (id_editora,nome, cnpj, estado)
values (default, 'saraiva educação','61365284000104','sp');

insert into editora (id_editora,nome, cnpj, estado)
values (default, 'globo livros','33113309000147','sp');

insert into editora (id_editora,nome, cnpj, estado)
values (default, 'editora panda books','03474582000109','ms');

insert into editora (id_editora,nome, cnpj, estado)
values (default, 'grupo editorial autêntica','02541982000140','mg');

insert into editora (id_editora,nome, cnpj, estado)
values (default, 'editora aleph','43210506000100','pb');

create table autor(
id_autor int not null auto_increment,
nome varchar(100),
email varchar(100),
telefone char(11),
cidade varchar(100),
primary key(id_autor)
);

insert into autor (id_autor,nome, email, telefone,cidade)
values (default, 'joão silva','joaosilva@emailcom','11987654321','sao paulo');

select * from autor;

insert into autor (id_autor,nome, email, telefone,cidade)
values (default, 'maria oliveira','mariaoliveira@emailcom','21987654321','rio de janeiro');

insert into autor (id_autor,nome, email, telefone,cidade)
values (default, 'carlos almeida','carlosalmeida@emailcom','31987654321','belo horizonte');

insert into autor (id_autor,nome, email, telefone,cidade)
values (default, 'ana costa','anacosta@emailcom','41987654321','curitiba');

insert into autor (id_autor,nome, email, telefone,cidade)
values (default, 'fernando souza','fernandosouza@emailcom','51987654321','porto alegre');

insert into autor (id_autor,nome, email, telefone,cidade)
values (default, 'juliana pereira','mariaoliveira@emailcom','21987654321','rio de janeiro');

insert into autor (id_autor,nome, email, telefone,cidade)
values (default, 'maria oliveira','julianapereira@emailcom','61987654321','brasilia');

insert into autor (id_autor,nome, email, telefone,cidade)
values (default, 'roberto lima','robertolima@emailcom','71987654321','salvador');

insert into autor (id_autor,nome, email, telefone,cidade)
values (default, 'patrícia mendes','patriciamendes@emailcom','81987654321','recife');

create table livro(
id_livro int not null auto_increment,
titulo varchar(150), descricao text, edicao varchar(10), paginas int, isbn char(13), id_editora int, id_autor int,
primary key (id_livro)
);

show tables;

insert into livro (id_livro, titulo, descricao, edicao, paginas, isbn, id_editora, id_autor)
values (default, 'o mistério da floresta','uma aventura emocionante em uma floresta cheia de segredos','1','320','9781234567890',1,2);

select * from livro;

insert into livro (id_livro, titulo, descricao, edicao, paginas, isbn, id_editora, id_autor)
values (default, 'amor em tempos modernos','uma história de amor contemporânea que desafia as convenções','2','280','9780987654321',2,3);

insert into livro (id_livro, titulo, descricao, edicao, paginas, isbn, id_editora, id_autor)
values (default, 'o enigma do tempo','um cientista descobre uma maneira de viajar no tempo, mas enfrenta consequências inesperadas','1','350','9781122334455',3,4);

insert into livro (id_livro, titulo, descricao, edicao, paginas, isbn, id_editora, id_autor)
values (default, 'a cidade perdida','arqueólogos encontram uma cidade antiga que guarda um segredo perigoso','3','400','9782233445566',5,6);

insert into livro (id_livro, titulo, descricao, edicao, paginas, isbn, id_editora, id_autor)
values (default, 'memórias de um guerreiro','as aventuras e desafios de um guerreiro em busca de redenção','1','450','9783344556677',6,7);

insert into livro (id_livro, titulo, descricao, edicao, paginas, isbn, id_editora, id_autor)
values (default, 'o segredo do lago','um jovem descobre um segredo sombrio escondido nas profundezas de um lago','2','300','9784455667788',7,8);

insert into livro (id_livro, titulo, descricao, edicao, paginas, isbn, id_editora, id_autor)
values (default, 'a jornada do herói','uma épica jornada de autodescoberta e coragem','1','500','9785566778899',9,10);

insert into livro (id_livro, titulo, descricao, edicao, paginas, isbn, id_editora, id_autor)
values (default, 'amor em tempos modernos','uma história de amor contemporânea que desafia as convenções','2','280','9780987654321',2,3);

insert into livro (id_livro, titulo, descricao, edicao, paginas, isbn, id_editora, id_autor)
values (default, 'sombras do passado','um detetive investiga um caso antigo que volta a assombrar a cidade','1','350','9787788990011',2,5);

insert into livro (id_livro, titulo, descricao, edicao, paginas, isbn, id_editora, id_autor)
values (default, 'a magia dos sonhos','uma jovem descobre que seus sonhos têm o poder de mudar a realidade','2','280','9788899001122',3,7);

insert into livro (id_livro, titulo, descricao, edicao, paginas, isbn, id_editora, id_autor)
values (default, 'o guardião das estrelas','um aventureiro viaja pelo cosmos em busca de um artefato lendário','1','420','9789900112233',4,9);

insert into livro (id_livro, titulo, descricao, edicao, paginas, isbn, id_editora, id_autor)
values (default, 'ecos do silêncio','uma história de mistério e suspense em uma pequena cidade','3','310','9781011123344',4,10);

insert into livro (id_livro, titulo, descricao, edicao, paginas, isbn, id_editora, id_autor)
values (default, 'a magia dos sonhos','uma jovem descobre que seus sonhos têm o poder de mudar a realidade','2','280','9788899001122',3,7);

insert into livro (id_livro, titulo, descricao, edicao, paginas, isbn, id_editora, id_autor)
values (default, 'a magia dos sonhos','uma jovem descobre que seus sonhos têm o poder de mudar a realidade','2','280','9788899001122',3,7);

insert into livro (id_livro, titulo, descricao, edicao, paginas, isbn, id_editora, id_autor)
values (default, 'a magia dos sonhos','uma jovem descobre que seus sonhos têm o poder de mudar a realidade','2','280','9788899001122',3,7);

show tables;

select * from autor;

select * from livro;

select autor.nome, livro.titulo
from autor join livro
on autor.id_autor = livro.id_autor;

select autor.id_autor, autor.nome, livro.titulo
from autor join livro
on autor.id_autor = livro.id_autor;

select editora.id_editora, editora.nome, livro.titulo
from editora join livro
on editora.id_editora = livro.id_editora;

select * from livro;

select * from editora;

select editora.nome, editora.cidade, livro.titulo, livro.paginas
from editora join livro on editora.id_editora = livro.id_editora;

show databases;

use livraria;

select * from editora;