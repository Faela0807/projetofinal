create database login;

use login;

create table usuario(
    idusuario int primary key auto_increment,
    nome varchar (30),
    login varchar(20) unique,
    senha varchar(50),
    perfil enum('adm','user')
);
insert into usuario values(null,'rafaela','admin1',md5('123'),'adm');

select * from usuario;