﻿USE [V3_Test_Strategic_Plan]
GO
/****** Object:  Table [dbo].[Org_Chapter]    Script Date: 6/24/2015 9:13:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Org_Chapter](
	[Org_Chapter_ID] [int] IDENTITY(1,1) NULL,
	[Org_ID] [int] NULL,
	[Org_Chapter_Name] [nvarchar](255) NULL,
	[Org_Chapter_Type] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL,
	[State] [nvarchar](255) NULL,
	[Zip] [nvarchar](10) NULL
) ON [PRIMARY]

GO
