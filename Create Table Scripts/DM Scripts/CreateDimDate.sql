IF NOT EXISTS (SELECT name FROM sys.tables where name = 'DimDate')
BEGIN
	CREATE TABLE [dbo].[DimDate](
		[dateKey] [int] IDENTITY(1,1) NOT NULL,
		[fullDate] [datetime] NOT NULL,
		[year] [int] NOT NULL,
		[semester] [tinyint] NOT NULL,
		[season] [varchar](10) NOT NULL,
		[trimester] [tinyint] NOT NULL,
		[quarter] [tinyint] NOT NULL,
		[month] [tinyint] NOT NULL,
		[monthName] [varchar](10) NOT NULL,
		[week] [tinyint] NOT NULL,
		[dayNumberOfYear] [int] NOT NULL,
		[dayNumberOfMonth] [tinyint] NOT NULL,
		[dayNumberOfWeek] [tinyint] NOT NULL,
		[lastDayOfMonth] [tinyint] NOT NULL,
		[dayOfWeek] [varchar](10) NOT NULL,
		[weekend] [varchar](3) NOT NULL
	 CONSTRAINT [PK_DimDate] PRIMARY KEY CLUSTERED 
	(
		[DateKey] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]

	CREATE UNIQUE NONCLUSTERED INDEX [NonClusteredIndex-20161125-164209] ON [dbo].[DimDate]
	(
		[FullDate] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
END