IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'FamiliasRitmo')
	CREATE TABLE [dbo].[FamiliasRitmo]
	(
		[codigo] [varchar](18) NOT NULL,
		[nome] [varchar](60) NULL,
		[margem] [numeric](16, 3) NULL,
		[taxaiva] [numeric](2, 0) NULL,
		[classificacao] [varchar](20) NULL,
		[data_criacao] [date] NOT NULL,
		[data_ult_gravacao] [date] NOT NULL,
	)
ELSE
	TRUNCATE TABLE [dbo].[FamiliasRitmo]
 

