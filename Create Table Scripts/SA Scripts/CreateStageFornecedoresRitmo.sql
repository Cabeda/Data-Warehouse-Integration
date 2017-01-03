IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'FornecedoresRitmo')
	CREATE TABLE [dbo].[FornecedoresRitmo]
	(
		[numero] [numeric](10, 0) NOT NULL,
		[nome] [varchar](55) NOT NULL,
		[fax] [varchar](60) NOT NULL,
		[telefone] [varchar](60) NOT NULL,
		[contacto] [varchar](30) NOT NULL,
		[morada] [varchar](55) NOT NULL,
		[codpostal] [varchar](45) NOT NULL,
		[ncontribuinte] [varchar](20) NOT NULL,
		[zona] [numeric](5, 0) NOT NULL,
		[tipo] [varchar](20) NOT NULL,
		[desconto] [numeric](5, 2) NOT NULL,
		[vencimento] [numeric](3, 0) NOT NULL,
		[funcaocontacto] [varchar](15) NOT NULL,
		[email] [varchar](45) NOT NULL,
		[nacionalidade] [varchar](20) NOT NULL,
		[telemovel] [varchar](45) NOT NULL,
		[saldo] [numeric](19, 6) NOT NULL,
		[plafond] [numeric](19, 6) NOT NULL,
		[classe] [varchar](30) NOT NULL,
		[data_criacao] [date] NOT NULL,
		[data_ult_gravacao] [date] NOT NULL
	)
ELSE
	TRUNCATE TABLE [dbo].[FornecedoresRitmo]


