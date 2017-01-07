IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'FactDocumentosCompras')
CREATE TABLE [dbo].[FactDocumentosCompras]
	(
		[fornecedorKey] [int]  NOT NULL,
		[empresaKey] [int]  NOT NULL,
		[produtoKey] [int]  NOT NULL,
		[dataDocumentoKey] [int]  NOT NULL,
		[funcionarioKey] [int]  NOT NULL,
		[costamp] [char](25) NOT NULL,
		[numerodocumento] [varchar](20) NOT NULL,
		[moedaKey] [int] NOT NULL,
		[dataPagamentoKey] [int] NOT NULL,
		[descricaoKey] [int] NOT NULL,
		[frete] [numeric](19, 6) NULL,
		[iva] [numeric](19, 6) NOT NULL,
		[valorDesconto] [numeric](19, 6) NOT NULL,
		[quantidade] [numeric](14, 4) NOT NULL,
		[precoUnitarioSTD] [numeric](19, 6) NOT NULL,
		[precoUnitarioLocal] [numeric](19, 6) NOT NULL,
		[valorIliquidoSTD] [numeric](19, 6) NOT NULL,
		[valorIliquidoLocal] [numeric](19, 6) NOT NULL,
		[totalbaseincidenciaivaSTD] [numeric](19, 6) NOT NULL,
		[totalbaseincidenciaivaLocal] [numeric](19, 6) NOT NULL,
		[totaliliquidoprodsSTD] [numeric](19, 6) NOT NULL,
		[totaliliquidoprodsLocal] [numeric](19, 6) NOT NULL,
		[valortotalSTD] [numeric](19, 6) NOT NULL,
		[valortotalLocal] [numeric](19, 6) NOT NULL
		 CONSTRAINT [PK_FactSales] PRIMARY KEY CLUSTERED 
	(
		[fornecedorKey] ASC,
		[empresaKey] ASC,
		[produtoKey] ASC,
		[dataDocumentoKey] ASC,
		[funcionarioKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]