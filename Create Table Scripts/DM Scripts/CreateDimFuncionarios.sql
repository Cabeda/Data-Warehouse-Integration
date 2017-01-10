IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimFuncionarios')
	CREATE TABLE [dbo].[DimFuncionarios]
	(
		[funcionarioKey] [int] IDENTITY(1,1) NOT NULL,
		[empresaKey] [int] NULL,
		[numero] [numeric](6, 0) NULL,
		[codigo] [varchar](20) NULL,
		[nomeCompleto] [varchar](50) NULL,
		[grupo] [varchar](20) NULL,
		[departamentoDesc] [varchar](20) NULL,
		[email] [varchar](100) NULL,
		[chefe] [varchar](20) NULL,
		[dataCriacao] [date] NULL,
		[dataUltGravacao] [date] NULL,
		[effectiveDate] [int] NULL,
		[expiredDate] [int] NULL,
		[isCurrent] [int] NULL
		CONSTRAINT [PK_DimFuncionarios] PRIMARY KEY CLUSTERED 
	(
		[funcionarioKey] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]