/****** Object:  Table [ref].[Metrics_APQC]    Script Date: 7/1/2015 2:31:16 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [ref].[Metrics_APQC](
	[Process Element ID] [int] NULL,
	[Hierarchy ID] [nvarchar](255) NULL,
	[Process element] [nvarchar](255) NULL,
	[Metric Category] [nvarchar](255) NULL,
	[Metric ID] [int] NULL,
	[Metric name] [nvarchar](255) NULL,
	[Formula] [nvarchar](255) NULL,
	[Units] [nvarchar](255) NULL
) ON [PRIMARY]

GO


