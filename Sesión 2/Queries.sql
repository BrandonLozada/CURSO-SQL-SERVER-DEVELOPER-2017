USE DBVENTA

SELECT * FROM CLIENTE
WHERE Nombre LIKE '%a%'
--WHERE FecNac = '1996-10-05'


SELECT IdCliente AS NoCliente,
	   CONCAT(Nombre, ' ', APaterno, ' ', AMaterno) AS NombreC,
	   DNI,
	   Direccion,
	   FecNac,
	   CONVERT(VARCHAR(15), FecNac, 103) AS FecNaciF1,
	   FORMAT(FecNac, 'dd/MM/yyyy') AS FecNacF2,
	   IIF(IsActivo = 1, 'Activo', 'Inactivo') AS EstatusF1,
	   CASE WHEN IsActivo = 1 THEN 'Activo' ELSE 'Inactivo' END AS EstatusF2,
	   IsActivo,
	   FORMAT(FecRegistro, 'dd/MM/yyyy') AS FecRegistroF1,
	   FecRegistro
FROM CLIENTE
