/****** Object:  Table [ref].[Metrics_McKinsey]    Script Date: 7/1/2015 2:32:10 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [ref].[Metrics_McKinsey](
	[ID] [varchar](max) NULL,
	[Section] [nvarchar](255) NULL,
	[Subsection] [nvarchar](255) NULL,
	[Metric Short Name] [nvarchar](255) NULL,
	[Metric Name] [nvarchar](255) NULL,
	[Calculation] [nvarchar](255) NULL,
	[Process Element] [nvarchar](255) NULL,
	[Units] [nvarchar](255) NULL,
	[Metric Level] [nvarchar](255) NULL,
	[Sector] [nvarchar](255) NULL,
	[Reporting Format] [nvarchar](255) NULL,
	[Related Metrics] [nvarchar](255) NULL,
	[Metric Type] [nvarchar](255) NULL,
	[Citation] [nvarchar](255) NULL,
	[Usage Guidance] [nvarchar](255) NULL,
	[Source] [nvarchar](255) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


