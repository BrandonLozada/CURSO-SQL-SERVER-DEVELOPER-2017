USE DBVENTA
GO

DECLARE @P_Nombre VARCHAR(50),
		@P_APaterno VARCHAR(50),
		@P_AMaterno VARCHAR(50),
		@P_DNI CHAR(10),
		@P_Direccion VARCHAR(250),
		@P_FecNac DATE

BEGIN
	SET NOCOUNT ON

	SET @P_Nombre = 'Ana'
	SET @P_APaterno = 'Ayala'
	SET @P_AMaterno = 'MArtinez'
	SET @P_DNI = 'cccccccccc'
	SET @P_Direccion = 'Ave. Los Angeles # 590'
	SET @P_FecNac = '1996-09-17'

	INSERT INTO CLIENTE (Nombre, APaterno, AMaterno, DNI, Direccion, FecNac)
				VALUES (@P_Nombre, @P_APaterno, @P_AMaterno, @P_DNI, @P_Direccion, @P_FecNac)

	SET NOCOUNT OFF
END



