USE [SL01]
GO

/****** Object:  Table [lookup].[Committees]    Script Date: 10/21/2015 2:37:57 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [lookup].[Group](
	[Group_ID] [int] IDENTITY(1,1) NOT NULL,
	[Group_Type] [varchar](255) NOT NULL,
	[Group_Name] [nvarchar](255) NOT NULL,
	[Group_Description] [nvarchar](255) NULL
) ON [PRIMARY]

GO


