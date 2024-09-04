create database industria;

use industria;

create table pessoas(
codigo integer,
nome varchar(100),
cpf int(14),
rg int(12),
email varchar(100)
);

select*from funcionarios;

alter table pessoas rename to funcionarios;

alter table funcionarios change telefone celular int(10);

alter table funcionarios add data_nascimento date;

alter table funcionarios modify column celular int(10) not null; 

describe funcionarios;

alter table funcionarios drop rg;

insert into funcionarios(codigo, nome, cpf) value(1, 'gustavo', 12039485);

select*from funcionarios where nome like 'gus%';

create table pagamentos(
cod_boleto integer primary key,
valor float
);

select*from pagamentos;
describe pagamentos;

insert into pagamentos(cod_boleto, valor) value(1, 250.00), (2, 120.00), (3, 450.00), (4, 980.00), (5, 120.00), (6, 300.00), (7, 50.00), (8, 500.00);
insert into pagamentos(cod_boleto, valor) value(9, 250.50);

select*from pagamentos where cod_boleto > 3;
select*from pagamentos where not cod_boleto = 5;
select*from pagamentos where cod_boleto  between  3 and  8;
select*from pagamentos where cod_boleto > 3;

select avg(valor) as media from pagamentos;
select min(valor) as valor_minimo from pagamentos;
select max(valor) as valor_maximo from pagamentos;
select sum(valor) as soma from pagamentos;

