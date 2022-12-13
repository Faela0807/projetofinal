mysql -u root

#criar base de dados
create database projeto1;

#conectar uma base de dados 
create table contato(
    idcontato int primary key auto_increment,
    nome varchar(50) not null, 
    email varchar(50) not null,
    telefone varchar(14) not null,
    mensagem text 
);
 
# irei inserir um registro na tabela so pra testar
# se esta ok....
insert into contato values 
(null,'testenome','teste@gmail.com','1111-1111','teste de mensagem');

#selecionar todos os campos da tabela 
select * from contato;