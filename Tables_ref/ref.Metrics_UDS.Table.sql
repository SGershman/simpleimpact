CREATE TABLE [ref].[Metrics_UDS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Metric Name] [nvarchar](255) NOT NULL,
	[Question] [nvarchar](255) NULL,
	[Short Name] [nvarchar](255) NULL,
	[Description] [nvarchar](255) NULL,
	[Source] [nvarchar](255) NULL
) ON [PRIMARY]

GO


