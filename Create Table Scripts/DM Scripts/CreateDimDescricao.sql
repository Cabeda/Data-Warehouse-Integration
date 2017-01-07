IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimDescricao')	
	CREATE TABLE [dbo].[DimDescricao]
	(
		[descricaoKey] [int] IDENTITY(1,1) NOT NULL,
		[zonaDesc] [nvarchar](50) NOT NULL,
		[armazemDesc] [nvarchar](50) NOT NULL,
		[centrocusto] [nvarchar](60) NOT NULL
		CONSTRAINT [PK_DimDescricao] PRIMARY KEY CLUSTERED
	(
		[descricaoKey] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]