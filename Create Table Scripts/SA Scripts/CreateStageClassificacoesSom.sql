IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'ClassificacoesSom')	
	CREATE TABLE [dbo].[ClassificacoesSom]
	(
		[codigo] [int] NOT NULL,
		[classificacao] [nvarchar](20) NOT NULL,
	)
ELSE
	TRUNCATE TABLE [dbo].[ClassificacoesSom] 
