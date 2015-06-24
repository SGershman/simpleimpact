USE [V3_Test_Strategic_Plan]
GO
/****** Object:  Table [dbo].[SWOT_Value]    Script Date: 6/24/2015 9:13:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SWOT_Value](
	[Org_ID] [float] NULL,
	[Individual_ID] [float] NULL,
	[SWOT_Component_Name] [nvarchar](255) NULL,
	[Strategic_Area_ID] [nvarchar](255) NULL,
	[Strategic_Outcome_ID] [nvarchar](255) NULL,
	[Strategic_Strategy_ID] [nvarchar](255) NULL
) ON [PRIMARY]

GO
