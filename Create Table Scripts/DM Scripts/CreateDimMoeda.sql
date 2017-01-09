IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimMoeda')	
	CREATE TABLE [dbo].[DimMoeda]
	(
		[moedaKey] [int] IDENTITY(1,1) NOT NULL,
		[pais] [varchar](100) NOT NULL,
		[currency] [varchar](30)  NULL,
		[alphabetCode] [varchar](10)  NULL
		CONSTRAINT [PK_DimMoeda] PRIMARY KEY CLUSTERED 
	(
		[moedaKey] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]