-- drop database dbinfox;
-- create database dbinfox;
-- use dbinfox;

create table tbusuarios(
	iduser int primary key,
    usuario varchar (50) not null, 
	fone varchar (15),
    login varchar (15) not null unique,
    senha varchar (15) not null,
    perfil varchar(20)
);


 describe tbusuarios;
 
 select * from tbusuarios;
 select *from tbusuarios where iduser= 1;
 
 /* incluir dados na tabela CREATE */
insert into tbusuarios(iduser,usuario,fone,login,senha) values (1 ,'José do Egito', '777 - 777', 'Jose','123');
insert into tbusuarios(iduser,usuario,fone,login,senha) values (2 ,'Moises do Egito', '555 - 555', 'moises','321');
insert into tbusuarios(iduser,usuario,fone,login,senha) values (3 ,'Paulo de Tarso', '333 - 333', 'paulo','123456');
insert into tbusuarios(iduser,usuario,fone,login,senha) values (4 ,'Simão Pedro', '444 - 4444', 'simão','789');
insert into tbusuarios(iduser,usuario,fone,login,senha) values (5 ,'Administrador', '888 - 888', 'admin','admin');


/* Modificar dados de uma tabela UPDATE*/
update tbusuarios set fone = '222 - 222' where iduser = 3;

/* Excluir um dado da tabela DELETE (exclui o registro inteiro */
delete from tbusuarios where iduser = 4; 

create table tbclientes(
	idcli int primary key auto_increment,
    nomecli varchar (50) not null,
    endcli varchar (100),
    fonecli varchar (20) not null,
    emailcli varchar (50)
);



insert into tbclientes(nomecli,endcli,fonecli,emailcli) values('Linus Torvalds', 'Rua: São caetano N 550', '895 - 652', 'linus@torvalds.com');
describe tbclientes;
select *from tbclientes;


create table tbos(
	os int primary key auto_increment,
    data_os timestamp default current_timestamp, /* Gera automaticamente data e hora direto do servidor no momento da emissao */
    equipamento varchar (150) not null,
    defeito varchar (150) not null,
    servico varchar (150),
    tecnico varchar (50),
    valor decimal (10,2),
    idcli int not null,
    foreign key (idcli) references tbclientes(idcli)
);

insert into tbos (equipamento,defeito,servico,tecnico,valor,idcli) values ('Notebook','Não liga','Troca de fonte', 'rafael', 95.99, '1');
 describe tbos;
select *from tbos;
 /* O codigo abaixo traz as informações de dua tabelas*/
 
 select
 O.os,equipamento,defeito,servico,valor,
 C.nomecli,fonecli
 from tbos as O
 inner join tbclientes as C
 on (O.idcli = C.idcli);
 
 
 