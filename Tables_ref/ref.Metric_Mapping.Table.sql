/****** Object:  Table [ref].[Metric_Mapping]    Script Date: 8/10/2015 2:12:58 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [ref].[Metric_Mapping](
	[Indicator_ID] [int] NOT NULL,
	[Metric_ID] [int] NOT NULL,
	[Created_Timestamp] [datetime] NULL,
	[Updated_Timestamp] [datetime] NULL
) ON [PRIMARY]

GO


