IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'Zonas')
	CREATE TABLE [dbo].[Zonas]
	(
		[codigo] [numeric](5, 0) NOT NULL,
		[zona] [varchar](50) NULL,
	)
ELSE
	TRUNCATE TABLE [dbo].[Zonas]