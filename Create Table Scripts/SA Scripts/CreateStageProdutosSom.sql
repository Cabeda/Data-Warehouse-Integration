IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'ProdutosSom')	
	CREATE TABLE [dbo].[ProdutosSom]
	(
		[referencia] [char](18) NOT NULL,
		[designacao] [char](60) NOT NULL,
		[familia] [int] NOT NULL,
		[stock] [numeric](13, 3) NOT NULL,
		[precovenda] [numeric](19, 6) NOT NULL,
		[pontoencomenda] [numeric](10, 3) NOT NULL,
		[fornecedor] [numeric](10, 0) NOT NULL,
		[stockminimo] [numeric](13, 3) NOT NULL,
		[dataabertura] [datetime] NOT NULL,
		[categoria] [int] NOT NULL,
		[classificacao] [int] NOT NULL,
		[precocusto] [numeric](19, 6) NOT NULL,
		[quantidadecativa] [numeric](13, 3) NOT NULL,
		[taxaiva] [numeric](2, 0) NOT NULL,
		[data_criacao] [date] NOT NULL,
		[data_ult_gravacao] [date] NOT NULL,
	) 
ELSE
	TRUNCATE TABLE [dbo].[ProdutosSom]