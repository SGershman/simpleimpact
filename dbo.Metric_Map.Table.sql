/****** Object:  Table [dbo].[Metric_Map]    Script Date: 6/24/2015 4:28:37 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Metric_Map](
	[Metric_ID] [int] NOT NULL,
	[Metric_Component_ID] [int] NOT NULL,
	[Created_Timestamp] [datetime] NULL,
	[Updated_Timestamp] [datetime] NULL
) ON [PRIMARY]

GO


