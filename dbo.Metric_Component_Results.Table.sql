USE [V3_Test_Strategic_Plan]
GO
/****** Object:  Table [dbo].[Metric_Component_Results]    Script Date: 6/24/2015 9:13:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Metric_Component_Results](
	[Org_ID] [float] NULL,
	[Org_Chapter_ID] [float] NULL,
	[Metric_Component_ID] [float] NULL,
	[Metric_Component_Value] [float] NULL,
	[Individual_ID] [int] NULL,
	[Numerator] [nvarchar](max) NULL,
	[Denominator] [nvarchar](max) NULL,
	[Created_Timestamp] [date] NULL,
	[Updated_Timestamp] [date] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
