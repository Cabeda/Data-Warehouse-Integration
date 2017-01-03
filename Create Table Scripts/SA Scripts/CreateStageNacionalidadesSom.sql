IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'NacionalidadesSom')
	CREATE TABLE [dbo].[NacionalidadesSom]
	(
		[codigo] [int] NOT NULL,
		[nacionalidade] [nvarchar](20) NOT NULL,
	)
ELSE
	TRUNCATE TABLE [dbo].[NacionalidadesSom]