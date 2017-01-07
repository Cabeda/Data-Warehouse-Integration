IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimFuncionarios')
	CREATE TABLE [dbo].[DimFuncionarios]
	(
		[funcionarioKey] [int] IDENTITY(1,1) NOT NULL,
		[empresaKey] [int] NOT NULL,
		[numero] [numeric](6, 0) NOT NULL,
		[codigo] [nvarchar](20) NOT NULL,
		[nome_completo] [nvarchar](50) NULL,
		[grupo] [nvarchar](20) NOT NULL,
		[departamentoDesc] [nvarchar](20) NOT NULL,
		[email] [nvarchar](100) NOT NULL,
		[chefeKey] [int] NOT NULL,
		[data_criacao] [date] NOT NULL,
		[data_ult_gravacao] [date] NOT NULL,
		[dataCriacaoKey] [int] NOT NULL,
		[dataUltGravacaoKey] [int] NOT NULL,
		[effectiveDateKey] [int] NOT NULL,
		[expiredDateKey] [int] NOT NULL,
		[isCurrent] [int] NOT NULL
		CONSTRAINT [PK_DimFuncionarios] PRIMARY KEY CLUSTERED 
	(
		[funcionarioKey] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]