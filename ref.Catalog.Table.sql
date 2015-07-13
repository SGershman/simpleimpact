CREATE TABLE [ref].[Catalog](
	[Catalog_ID] [nvarchar](max) NOT NULL,
	[Indicator_ID] [int] NULL,
	[Indicator_Name] [nvarchar](max) NULL,
	[Metric_ID] [int] NULL,
	[Metric_Name] [nvarchar](max) NULL,
	[Component_ID] [int] NULL,
	[Component_Name] [nvarchar](max) NULL,
	[Component_Short_Name_Original] [nvarchar](max) NULL,
	[Component_Short_Name_Updated] [nvarchar](max) NULL,
	[Component_Question_Automated] [nvarchar](MAX) NULL,
	[Component_Question] [nvarchar](MAX) NULL,
	[Calculation_Original] [nvarchar](max) NULL,
	[Calculation_Updated] [nvarchar](max) NULL,
	[Process_Element] [nvarchar](max) NULL,
	[Units] [nvarchar](max) NULL,
	[Metric_Level] [nvarchar](max) NULL,
	[Sector] [nvarchar](max) NULL,
	[Reporting_Format] [nvarchar](max) NULL,
	[Related_Metrics] [nvarchar](max) NULL,
	[Metric_Type] [nvarchar](max) NULL,
	[Citation] [nvarchar](max) NULL,
	[Usage_Guidelines] [nvarchar](max) NULL,
	[Source_Name] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO


