﻿USE [V3_Test_Strategic_Plan]
GO
/****** Object:  Table [dbo].[Metric]    Script Date: 6/24/2015 9:13:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Metric](
	[Metric_ID] int IDENTITY(1,1) NULL,
	[Metric_Name] [nvarchar](255) NULL,
	[Metric_Component_ID] [float] NULL,
	[Updated_Timestamp] [nvarchar](255) NULL,
	[Metric_Type] [nvarchar](50) NULL
) ON [PRIMARY]

GO
