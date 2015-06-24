USE [V3_Test_Strategic_Plan]
GO
/****** Object:  Table [lookup].[Strategy_Outcome]    Script Date: 6/24/2015 9:13:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lookup].[Strategy_Outcome](
	[Strategy_Outcome_ID] [float] NULL,
	[Strategy_Outcome_Name] [nvarchar](255) NULL,
	[Strategy_Outcome_Description] [nvarchar](255) NULL,
	[Strategy_Area_ID] [float] NULL
) ON [PRIMARY]

GO
