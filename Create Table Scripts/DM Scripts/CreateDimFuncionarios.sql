IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimFuncionarios')
	CREATE TABLE [dbo].[DimFuncionarios]
	(
		[funcionarioKey] [int] IDENTITY(1,1) NOT NULL,
		[empresaKey] [int] NULL,
		[numero] [numeric](6, 0) NULL,
		[codigo] [varchar](20) NULL,
		[nome_completo] [varchar](50) NULL,
		[grupo] [varchar](20) NULL,
		[departamentoDesc] [varchar](20) NULL,
		[email] [varchar](100) NULL,
		[chefe] [varchar](20) NULL,
		[data_criacao] [date] NULL,
		[data_ult_gravacao] [date] NULL,
		[dataCriacaoKey] [int] NULL,
		[dataUltGravacaoKey] [int] NULL,
		[effectiveDateKey] [int] NULL,
		[expiredDateKey] [int] NULL,
		[isCurrent] [int] NULL
		CONSTRAINT [PK_DimFuncionarios] PRIMARY KEY CLUSTERED 
	(
		[funcionarioKey] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]