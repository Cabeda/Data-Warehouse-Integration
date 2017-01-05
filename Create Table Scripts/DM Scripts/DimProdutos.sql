IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'ProdutosSom')	
	CREATE TABLE [dbo].[ProdutosSom]
	(
		[productKey] [int] IDENTITY(1,1) NOT NULL,
		[referencia] [varchar](18) NOT NULL,
		[designacao] [varchar](60) NOT NULL,
		[nomefamilia] [varchar](60) NOT NULL,
		[stock] [numeric](13, 3) NOT NULL,
		[precovenda] [numeric](19, 6) NOT NULL,
		[pontoencomenda] [numeric](10, 3) NOT NULL,
		[fornecedorKey] [int] NOT NULL,
		[categoriaDesc] [varchar](35) NOT NULL,
		[classificacaoDesc] [varchar](20) NOT NULL,
		[precocusto] [numeric](19, 6) NOT NULL,
		[quantidadecativa] [numeric](13, 3) NOT NULL,
		[taxaiva] [numeric](2, 0) NOT NULL,
		[dataaberturaKey] [datetime] NOT NULL,
		[dataUltGravacaoKey] [date] NOT NULL,
		[dataCriacaoKey] [date] NOT NULL,
		[effectiveDateKey] [int] NOT NULL,
		[expiredDateKey] [int] NOT NULL,
		[isCurrent] [int] NOT NULL
	(
		[productKey] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]