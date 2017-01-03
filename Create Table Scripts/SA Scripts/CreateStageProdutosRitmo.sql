IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'ProdutosRitmo')
	CREATE TABLE [dbo].[ProdutosRitmo]
	(
		[referencia] [char](18) NOT NULL,
		[designacao] [char](60) NOT NULL,
		[familia] [varchar](18) NOT NULL,
		[stock] [numeric](13, 3) NOT NULL,
		[precovenda] [numeric](19, 6) NOT NULL,
		[pontoencomenda] [numeric](10, 3) NOT NULL,
		[fornecedor] [numeric](10, 0) NULL,
		[stockminimo] [numeric](13, 3) NOT NULL,
		[dataabertura] [datetime] NOT NULL,
		[categoria] [int] NOT NULL,
		[classificacao] [varchar](20) NOT NULL,
		[precocusto] [numeric](19, 6) NOT NULL,
		[quantidadecativa] [numeric](13, 3) NOT NULL,
		[taxaiva] [numeric](2, 0) NOT NULL,
		[data_criacao] [date] NOT NULL,
		[data_ult_gravacao] [date] NOT NULL,
	)
ELSE
	TRUNCATE TABLE [dbo].[ProdutosRitmo]