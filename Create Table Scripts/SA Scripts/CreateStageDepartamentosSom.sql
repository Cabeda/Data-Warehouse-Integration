IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DepartamentosSom')			
	CREATE TABLE [dbo].[DepartamentosSom]
	(
		[codigo] [int] NOT NULL,
		[departamento] [nvarchar](20) NOT NULL,
	)
ELSE
	TRUNCATE TABLE [dbo].[DepartamentosSom]
