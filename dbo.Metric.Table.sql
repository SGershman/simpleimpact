CREATE TABLE [dbo].[Metric](
	[Metric_ID] int IDENTITY(1,1),
	[Metric_Type] [nvarchar](255) NULL,
	[Metric_Name] [nvarchar](255) NULL,
	[Metric_Value] [float] NULL,
	[Metric_Source] [nvarchar](255) NULL
) ON [PRIMARY]

GO
