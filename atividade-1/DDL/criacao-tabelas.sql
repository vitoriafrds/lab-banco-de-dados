CREATE DATABASE fatec;
USE fatec;

CREATE TABLE CURSO (
codigo_curso int not null,
nome varchar(70) not null
);
alter table CURSO add primary key (codigo_curso);

CREATE TABLE ALUNO(
RA char(7) not null,
nome varchar(70) not null,
codigo_curso int not null
);
alter table ALUNO add primary key (RA);
alter table ALUNO add constraint FK_CURSO foreign key (codigo_curso) references CURSO (codigo_curso);

CREATE TABLE PALESTRA (
codigo_palestra int, 
titulo varchar(500) not null,
carga_horaria int null,
data_palestra datetime not null
);
alter table PALESTRA add primary key (codigo_palestra);
CREATE TABLE PALESTRANTE(
codigo_palestrante int,
nome varchar(70) not null,
empresa varchar(100) not null
);
alter table palestrante add primary key (codigo_palestrante);
alter table palestra add column codigo_palestrante int not null;

CREATE TABLE ALUNOS_INSCRITOS(
RA char(7) not null,
codigo_palestra int 
);
alter table ALUNOS_INSCRITOS add constraint FK_ALUNO foreign key (RA) references ALUNO (RA);
alter table ALUNOS_INSCRITOS add constraint FK_PALESTRA foreign key (codigo_palestra) references 
PALESTRA (codigo_palestra);

CREATE TABLE PESSOA(
RG varchar(9) not null,
orgao_expedidor char(5) not null,
nome varchar(250) not null
);

alter table PESSOA add primary key (RG, orgao_expedidor);

CREATE TABLE PESSOA_INSCRITA(
codigo_palestra int not null,
RG varchar(9) not null,
orgao_expedidor char(5) not null
);
alter table PESSOA_INSCRITA add constraint FK_PESSOA foreign key (RG, orgao_expedidor) 
references PESSOA (RG, orgao_expedidor);
alter table PESSOA_INSCRITA add constraint FK_PALESTRA_PESSOA foreign key (codigo_palestra) references PALESTRA
(codigo_palestra);




	