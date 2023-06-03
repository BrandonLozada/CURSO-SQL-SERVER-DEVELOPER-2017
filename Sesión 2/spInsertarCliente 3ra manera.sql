USE DBVENTA
GO

DECLARE @P_Nombre VARCHAR(50) = 'Joaquin',
		@P_APaterno VARCHAR(50) = 'Perez',
		@P_AMaterno VARCHAR(50) = 'Lopez',
		@P_DNI CHAR(10) = 'aaaaaaaaaa',
		@P_Direccion VARCHAR(205) = 'Ave. Los Angeles # 587',
		@P_FecNac DATE = '1996-05-15'

BEGIN
	SET NOCOUNT ON

	INSERT INTO CLIENTE (Nombre, APaterno, AMaterno, DNI, Direccion, FecNac)
				VALUES (@P_Nombre, @P_APaterno, @P_AMaterno, @P_DNI, @P_Direccion, @P_FecNac)

	SET NOCOUNT OFF
END
