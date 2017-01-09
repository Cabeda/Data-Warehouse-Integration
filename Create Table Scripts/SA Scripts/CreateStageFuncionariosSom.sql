IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'FuncionariosSom')
	CREATE TABLE [dbo].[FuncionariosSom]
	(
		[numero] [numeric](6, 0) NOT NULL,
		[iniciais] [varchar](3) NOT NULL,
		[codigo] [varchar](20) NOT NULL,
		[nome_proprio] [nvarchar](20) NULL,
		[apelido] [nvarchar](20) NULL,
		[grupo] [varchar](20) NOT NULL,
		[departamento] [int] NOT NULL,
		[email] [varchar](100) NOT NULL,
		[chefe] [numeric](6, 0) NULL,
		[data_criacao] [date] NOT NULL,
		[data_ult_gravacao] [date] NOT NULL
	 ) 
 ELSE
	TRUNCATE TABLE [dbo].[FuncionariosSom]