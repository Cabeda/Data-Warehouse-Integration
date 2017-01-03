IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'MoedasSom')
	CREATE TABLE [dbo].[MoedasSom]
	(
		[codigo] [int] NOT NULL,
		[moeda] [nchar](20) NOT NULL,
	)
TRUNCATE TABLE [dbo].[MoedasSom]
