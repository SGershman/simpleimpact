USE [V3_Test_Strategic_Plan]
GO
/****** Object:  Table [dbo].[Metric_Results]    Script Date: 6/24/2015 9:13:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Metric_Results](
	[Org_ID] [float] NULL,
	[Org_Chapter_ID] [float] NULL,
	[Individual_ID] [int] NULL,
	[Metric_ID] [float] NULL,
	[Numerator] [varchar](max) NULL,
	[Denominator] [varchar](max) NULL,
	[Created_Timestamp] [date] NULL,
	[Updated_Timestamp] [date] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
