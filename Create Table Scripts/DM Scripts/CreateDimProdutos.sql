IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimProdutos')	
	CREATE TABLE [dbo].[DimProdutos]
	(
		[productKey] [int] IDENTITY(1,1) NOT NULL,
		[referencia] [nvarchar](18) NOT NULL,
		[designacao] [nvarchar](60) NOT NULL,
		[nomefamilia] [nvarchar](60) NOT NULL, 
		[margemfamilia] [numeric](16, 3) NOT NULL,
		[stock] [numeric](13, 3) NOT NULL,
		[precovenda] [numeric](19, 6) NOT NULL,
		[pontoencomenda] [numeric](10, 3) NOT NULL,
		[fornecedorKey] [int] NOT NULL,
		[categoriaDesc] [nvarchar](35) NOT NULL,
		[classificacaoDesc] [nvarchar](20) NOT NULL,
		[precocusto] [numeric](19, 6) NOT NULL,
		[quantidadecativa] [numeric](13, 3) NOT NULL,
		[taxaiva] [numeric](2, 0) NOT NULL,
		[dataaberturaKey] [datetime] NOT NULL,
		[dataUltGravacaoKey] [date] NOT NULL,
		[dataCriacaoKey] [date] NOT NULL,
		[effectiveDateKey] [int] NOT NULL,
		[expiredDateKey] [int] NOT NULL,
		[isCurrent] [int] NOT NULL
		CONSTRAINT [PK_DimProdutos] PRIMARY KEY CLUSTERED 
	(
		[productKey] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]