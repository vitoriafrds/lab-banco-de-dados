insert into atividades values (1, 'a rainha elizabeth tem 94 anos');

select * from atividades;

DECLARE @var varchar(300);
SET @var = (select UPPER(valor) from atividades where id = 1);
PRINT @var;


