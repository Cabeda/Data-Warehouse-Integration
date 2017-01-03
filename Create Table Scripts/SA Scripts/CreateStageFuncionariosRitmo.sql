IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'FuncionariosRitmo')
	CREATE TABLE [dbo].[FuncionariosRitmo]
	(
		[numero] [numeric](6, 0) NOT NULL,
		[iniciais] [varchar](3) NOT NULL,
		[codigo] [varchar](20) NOT NULL,
		[nome] [varchar](30) NOT NULL,
		[grupo] [varchar](20) NOT NULL,
		[departamento] [varchar](20) NOT NULL,
		[email] [varchar](100) NOT NULL,
		[chefe] [numeric](6, 0) NULL,
		[data_criacao] [date] NOT NULL,
		[data_ult_gravacao] [date] NOT NULL
	) 
ELSE
	TRUNCATE TABLE [dbo].[FuncionariosRitmo]
