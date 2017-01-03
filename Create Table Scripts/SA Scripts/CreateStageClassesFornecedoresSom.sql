IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'ClassesFornecedoresSom')
	CREATE TABLE [dbo].[ClassesFornecedoresSom]
	(
		[codigo] [int] NOT NULL,
		[classe] [nvarchar](25) NOT NULL,
	) 
ELSE
	TRUNCATE TABLE [dbo].[ClassesFornecedoresSom]