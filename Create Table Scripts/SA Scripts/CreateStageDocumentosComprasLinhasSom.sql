IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DocumentosComprasLinhasSom')	
	CREATE TABLE [dbo].[DocumentosComprasLinhasSom]
	(
		[clstamp] [char](25) NOT NULL,
		[costamp] [char](25) NOT NULL,
		[anodocumento] [numeric](4, 0) NOT NULL,
		[numerodocumento] [varchar](20) NOT NULL,
		[datadocumento] [date] NOT NULL,
		[lordem] [numeric](10, 0) NOT NULL,
		[armazem] [numeric](5, 0) NOT NULL,
		[centrocusto] [int] NOT NULL,
		[produto] [char](18) NOT NULL,
		[quantidade] [numeric](14, 4) NOT NULL,
		[iva] [numeric](19, 2) NOT NULL,
		[precounitario] [numeric](19, 6) NOT NULL,
		[valoriliquido] [numeric](19, 6) NOT NULL,
		[valordesconto] [numeric](19, 6) NOT NULL,
		[valortotal] [numeric](19, 6) NOT NULL,
		[data_criacao] [date] NOT NULL,
		[data_ult_gravacao] [date] NOT NULL
	 ) 
ELSE
	TRUNCATE TABLE [dbo].[DocumentosComprasLinhasSom]