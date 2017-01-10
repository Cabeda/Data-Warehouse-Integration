	IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimFornecedores')
		CREATE TABLE [dbo].[DimFornecedores]
		(
			[fornecedorKey] [int] IDENTITY(1,1) NOT NULL,
			[numero] [numeric](10, 0) NOT NULL,
			[empresaKey] [int] NOT NULL,
			[nome] [varchar](55) NOT NULL,
			[fax] [varchar](60) NOT NULL,
			[telefone] [varchar](60) NOT NULL,
			[contacto] [varchar](30) NOT NULL,
			[morada] [varchar](55) NOT NULL,
			[codpostal] [varchar](45) NOT NULL,
			[localidade] [varchar](43) NOT NULL,
			[ncontribuinte] [varchar](20) NOT NULL,
			[zonaDesc] [varchar](50) NOT NULL,
			[tipo] [varchar](20) NOT NULL,
			[desconto] [numeric](5, 2) NOT NULL,
			[vencimento] [numeric](3, 0) NOT NULL,
			[funcaocontacto] [varchar](15) NOT NULL,
			[email] [varchar](45) NOT NULL,
			[nacionalidadeDesc] [varchar](20) NOT NULL,
			[telemovel] [varchar](45) NOT NULL,
			[saldo] [numeric](19, 6) NOT NULL,
			[plafond] [numeric](19, 6) NOT NULL,
			[classeDesc] [varchar](45) NOT NULL,
			[dataCriacao] [date] NOT NULL,
			[dataUltGravacao] [date] NOT NULL,
			[effectiveDate] [date] NOT NULL,
			[expiredDate] [date] NOT NULL,
			[isCurrent] [int] NOT NULL
			CONSTRAINT [PK_DimFornecedores] PRIMARY KEY CLUSTERED 
		(
			[fornecedorKey] ASC
		)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
		) ON [PRIMARY]

