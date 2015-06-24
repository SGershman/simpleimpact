﻿USE [V3_Test_Strategic_Plan]
GO
/****** Object:  Table [dbo].[Individual_Role]    Script Date: 6/24/2015 9:13:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Individual_Role](
	[Individual_Role_ID] int IDENTITY(1,1) NULL,
	[Individual_Role_Name] [nvarchar](255) NULL,
	[Individual_Role_Description] [nvarchar](255) NULL,
	[Individual_Role_Parent_ID] [int] NULL
) ON [PRIMARY]

GO
