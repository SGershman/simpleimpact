USE [V3_Test_Strategic_Plan]
GO
/****** Object:  Table [lookup].[Strategy_Strategy]    Script Date: 6/24/2015 9:13:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lookup].[Strategy_Strategy](
	[Strategy_ID] [float] NULL,
	[Strategy_Name] [nvarchar](255) NULL,
	[Strategy_Description] [nvarchar](255) NULL,
	[Strategy_Area_ID] [float] NULL,
	[Strategy_Outcome_ID] [float] NULL,
	[F6] [nvarchar](255) NULL
) ON [PRIMARY]

GO
