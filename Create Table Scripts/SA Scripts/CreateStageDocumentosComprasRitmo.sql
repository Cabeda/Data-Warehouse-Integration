IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DocumentosComprasRitmo')
CREATE TABLE [dbo].[DocumentosComprasRitmo]
	(
		[costamp] [char](25) NOT NULL,
		[anodocumento] [numeric](4, 0) NOT NULL,
		[numerodocumento] [varchar](20) NOT NULL,
		[datadocumento] [date] NOT NULL,
		[fornecedor] [numeric](10, 0) NOT NULL,
		[funcionario] [numeric](6, 0) NOT NULL,
		[centrocusto] [varchar](20) NOT NULL,
		[moeda] [varchar](11) NOT NULL,
		[datapagamento] [date] NOT NULL,
		[zona] [numeric](5, 0) NOT NULL,
		[totaliliquidoprods] [numeric](19, 6) NOT NULL,
		[totaldesconto] [numeric](19, 6) NOT NULL,
		[frete] [numeric](19, 6) NULL,
		[totalbaseincidenciaiva] [numeric](19, 6) NOT NULL,
		[totaliva] [numeric](19, 6) NOT NULL,
		[valortotal] [numeric](19, 6) NOT NULL,
		[data_criacao] [date] NOT NULL,
		[data_ult_gravacao] [date] NOT NULL
	) 
ELSE
	TRUNCATE TABLE [dbo].[DocumentosComprasRitmo]