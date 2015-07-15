CREATE TABLE [dbo].[Metric_Results](
	[Org_ID] [int] NULL,
	[Org_Chapter_ID] [int] NULL,
	[Metric_ID] [int] NULL,
	[Metric_Value] [int] NULL,
	[Individual_ID] [int] NULL,
	[Numerator] [nvarchar](max) NULL,
	[Denominator] [nvarchar](max) NULL,
	[Created_Timestamp] [date] NULL,
	[Updated_Timestamp] [date] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
