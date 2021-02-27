DECLARE @numero NUMBER(10);
DECLARE @multiplo NVARCHAR(50);
DECLARE @naoMultiplo NVARCHAR(50);


SET @numero = 15;
SET @multiplo = N'O numero é multiplo de 2, 3 e 5';
SET @naoMultiplo = N'O numero não é múltiplo'


IF @numero % 2 and @numero % 3 and @numero %5 
	PRINT @multiplo;
ELSE 
	PRINT @naoMultiplo