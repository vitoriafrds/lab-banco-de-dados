--declaração das variaveis
DECLARE @lado1 NUMBER(10);
DECLARE @lado2 NUMBER(10);
DECLARE @base NUMBER(10);

DECLARE @error NVARCHAR(50);
DECLARE @isoceles NVARCHAR(50);
DECLARE @escaleno NVARCHAR(50);
DECLARE @equilatero NVARCHAR(50);

SET @error = N'Os lados precisam conter um valor > 0';
SET @isoceles = N'O triangulo é um isóceles';
SET @escaleno = N'O triangulo é um escaleno';
SET @equilatero = N'O triangulo é um equilatero';


SET @lado1 = 10
SET @lado2 = 8
SET @base = 11

--VALIDACAO DOS LADOS, NENHUM PODE SER MENOR OU IGUAL A 0
IF @lado1 <= 0
	PRINT @error;
ELSE
	BEGIN
		IF @lado2 <= 0
			PRINT @error;
	END;

--VALIDANDO SE O TRIANGULO É ISÓCELES
IF @lado1 == @lado2
	PRINT @isoceles;
ELSE 
	BEGIN
	--VALIDANDO SE É ESCALENO
		IF @lado1 != @lado2 != @base
			PRINT @escaleno
		ELSE
			BEGIN
				IF @lado1 == @lado2 == @base
					PRINT @equilatero
			END;



