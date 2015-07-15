/****** Object:  Table [ref].[Metrics_IRIS]    Script Date: 7/1/2015 2:31:51 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [ref].[Metrics_IRIS](
	[ID] [nvarchar](255) NOT NULL,
	[Section] [nvarchar](255) NULL,
	[Subsection] [nvarchar](255) NULL,
	[Sector] [nvarchar](255) NULL,
	[Metric Name] [nvarchar](255) NULL,
	[Definition] [nvarchar](255) NULL,
	[Calculation] [nvarchar](255) NULL,
	[Usage Guidance] [nvarchar](max) NULL,
	[Citation] [nvarchar](255) NULL,
	[Metric Type] [nvarchar](255) NULL,
	[Related Metrics] [nvarchar](255) NULL,
	[Metric Level] [nvarchar](255) NULL,
	[Metric Quantity Type] [nvarchar](255) NULL,
	[Reporting Format] [nvarchar](255) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO


