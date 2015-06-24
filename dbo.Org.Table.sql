﻿USE [V3_Test_Strategic_Plan]
GO
/****** Object:  Table [dbo].[Org]    Script Date: 6/24/2015 9:13:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Org](
	[Org_ID] int IDENTITY(1,1) NULL,
	[Org_Name] [nvarchar](255) NULL,
	[Org_Industry] [nvarchar](255) NULL,
	[Org_Tax_Code] [nvarchar](255) NULL,
	[Org_Mission_Statement] [nvarchar](max) NULL,
	[FTE_Count] [int] NULL,
	[Volunteer_Count] [int] NULL,
	[Board_Member_Count] [int] NULL,
	[Budget_Annual] [int] NULL,
	[Year_Founded] [int] NULL,
	[Overall_Rating] [int] NULL,
	[Create_Timestamp] [datetime] NULL,
	[Entry_Timestamp] [datetime] NULL,
	[Update_Timestamp] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
