	IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimFornecedores')
		CREATE TABLE [dbo].[DimFornecedores]
		(
			[fornecedorKey] [int] IDENTITY(1,1) NOT NULL,
			[numero] [numeric](10, 0) NOT NULL,
			[empresaKey] [int] NOT NULL,
			[nome] [nvarchar](55) NOT NULL,
			[fax] [nvarchar](60) NOT NULL,
			[telefone] [nvarchar](60) NOT NULL,
			[contacto] [nvarchar](30) NOT NULL,
			[morada] [nvarchar](55) NOT NULL,
			[codpostal] [nvarchar](45) NOT NULL,
			[localidade] [nvarchar](43) NOT NULL,
			[ncontribuinte] [nvarchar](20) NOT NULL,
			[zonaDesc] [nvarchar](50) NOT NULL,
			[tipo] [nvarchar](20) NOT NULL,
			[desconto] [numeric](5, 2) NOT NULL,
			[vencimento] [numeric](3, 0) NOT NULL,
			[funcaocontacto] [nvarchar](15) NOT NULL,
			[email] [nvarchar](45) NOT NULL,
			[nacionalidadeDesc] [int] NOT NULL,
			[telemovel] [nvarchar](45) NOT NULL,
			[saldo] [numeric](19, 6) NOT NULL,
			[plafond] [numeric](19, 6) NOT NULL,
			[classeDesc] [nvarchar](45) NOT NULL,
			[dataCriacaoKey] [int] NOT NULL,
			[dataUltGravacaoKey] [int] NOT NULL,
			[effectiveDateKey] [int] NOT NULL,
			[expiredDateKey] [int] NOT NULL,
			[isCurrent] [int] NOT NULL
			CONSTRAINT [PK_DimFornecedores] PRIMARY KEY CLUSTERED 
		(
			[fornecedorKey] ASC
		)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
		) ON [PRIMARY]

