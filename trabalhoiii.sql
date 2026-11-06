create database trabalhoIII;
use trabalhoIII;

create table usuario (
id_usuario int primary key auto_increment,
email varchar(100),
senha varchar(50)
);

insert into usuario (email, senha) values
('user@gmail.com', '123456');

insert into usuario (email, senha) values
('suhgomes100@outlook.com', '@Gscr1612');