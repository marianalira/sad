create table UNIDADE_GESTORA (
	cod_unidade_gestora serial CONSTRAINT pk_unidade primary key,
	descricao varchar(100) not null
);
create table ORGAO_SUPERIOR (
	cod_orgao serial CONSTRAINT pk_orgao  primary key,
	nome_orgao varchar(100) not null
);
create table FAVORECIDO (
	cod_favorecido serial CONSTRAINT pk_favorecido primary key,
	nome_favorecido varchar(100) not null,
	cnpj_favorecido int not null
);
create table FONTE_RECURSO (
	cod_fonte serial CONSTRAINT pk_fonte primary key,
	descricao_fonte varchar(100) not null
);
create table DATA_DESPESA (
	cod_data serial CONSTRAINT pk_data primary key,
	data_despesa date not null
);
create table ESFERA (
	cod_esfera serial CONSTRAINT pk_esfera primary key,
	descricao_esfera varchar(100) not null
);
create table DESPESA (
	esfera int not null,
	data_despesa int not null,
	fonte int not null,
	favorecido int not null,
	unidade_gestora int not null,
	orgao int not null,
	FOREIGN KEY (esfera) REFERENCES ESFERA (cod_esfera),
	FOREIGN KEY (data_despesa) REFERENCES DATA_DESPESA (cod_data),
	FOREIGN KEY (fonte) REFERENCES FONTE_RECURSO (cod_fonte),
	FOREIGN KEY (favorecido) REFERENCES FAVORECIDO (cod_favorecido),
	FOREIGN KEY (unidade_gestora) REFERENCES UNIDADE_GESTORA (cod_unidade_gestora),
	FOREIGN KEY (orgao) REFERENCES ORGAO_SUPERIOR (cod_orgao)
);

insert into orgao_superior (nome_orgao) values 
	('SECRETARIA DE ESTADO'),
	('SECRETARIA DE ARTES E CULTURA'),
	('SECRETARIA DE SAÚDE'),
	('SECRETARIA DE ESPORTES');

insert into esfera (descricao_esfera) values 
	('INVESTIMENTOS'),
	('CULTURA E LAZER');
	
insert into favorecido (nome_favorecido, cnpj_favorecido) values 
	('SEGG', 11),
	('SETC', 22),
	('SEDUC', 33),
	('SEFAZ',44);

insert into fonte_recurso (descricao_fonte) values 
	('EMPRÉSTIMO'),
	('PAGAMENTO');
	
insert into unidade_gestora (descricao) values 
	('UNIDADE1'),
	('UNIDADE2');
	
insert into data_despesa (data_despesa) values
	('25-03-2018'),
	('25-02-2019'),
	('25-01-2020');

insert into despesa (esfera, data_despesa, fonte, favorecido, unidade_gestora, orgao) 
	values
		(1,1,1,1,1,1),
		(1,2,1,2,1,1);


