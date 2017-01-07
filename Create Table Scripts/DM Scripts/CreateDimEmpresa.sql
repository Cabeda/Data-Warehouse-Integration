IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimEmpresa')	
	CREATE TABLE [dbo].[DimEmpresa]
	(
		[empresaKey] [int] IDENTITY(1,1) NOT NULL,
		[descricao] [nvarchar](50) NOT NULL
		CONSTRAINT [PK_DimEmpresa] PRIMARY KEY CLUSTERED
	(
		[empresaKey] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]