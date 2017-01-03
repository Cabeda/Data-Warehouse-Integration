IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'Armazens')
	CREATE TABLE [dbo].[Armazens]
	(
		[codigo] [numeric](5, 0) NOT NULL,
		[armazem] [varchar](50) NULL,
	)
ELSE
	TRUNCATE TABLE [dbo].[Armazens]

