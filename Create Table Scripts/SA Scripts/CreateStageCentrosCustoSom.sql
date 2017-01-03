IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'CentrosCustoSom')	
	CREATE TABLE [dbo].[CentrosCustoSom]
	(
		[codigo] [int] NOT NULL,
		[centrocusto] [nvarchar](10) NOT NULL,
	)
ELSE
	TRUNCATE TABLE [dbo].[CentrosCustoSom] 

