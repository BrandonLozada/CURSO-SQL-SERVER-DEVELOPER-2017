USE DBVENTA
GO

CREATE PROC spInsertarCliente
(@P_Nombre VARCHAR(50),
 @P_APaterno VARCHAR(50),
 @P_AMaterno VARCHAR(50),
 @P_DNI CHAR(10),
 @P_Direccion VARCHAR(250),
 @P_FecNac DATE
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO CLIENTE (Nombre, APaterno, AMaterno, DNI, Direccion, FecNac)
				VALUES (@P_Nombre, @P_APaterno, @P_AMaterno, @P_DNI, @P_Direccion, @P_FecNac)

	SET NOCOUNT OFF
END
GO
---------------------------------------------------------------------------------------------

spInsertarCliente @P_Nombre = 'Brandon',
				  @P_APaterno = 'Lozada ',
				  @P_AMaterno = 'C�rdenas',
				  @P_DNI = 'hhhhhhhhhh',
				  @P_Direccion = 'Av. Bosque Lomas # 69',
				  @P_FecNac = '1996-10-05'
GO

SELECT * FROM CLIENTE

-------------------------------------------