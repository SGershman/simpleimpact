USE [V3_Test_Strategic_Plan]
GO
/****** Object:  Table [dbo].[demographics$]    Script Date: 6/24/2015 9:13:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[demographics$](
	[Organization] [nvarchar](255) NULL,
	[First Name] [nvarchar](255) NULL,
	[Last Name] [nvarchar](255) NULL,
	[Role] [nvarchar](255) NULL,
	[Gender] [nvarchar](255) NULL,
	[Age] [nvarchar](255) NULL,
	[Country of Origin] [nvarchar](255) NULL,
	[Ethnicity] [nvarchar](255) NULL,
	[Education] [nvarchar](255) NULL,
	[Industry] [nvarchar](255) NULL,
	[What is your income level?] [nvarchar](255) NULL,
	[Start Date (UTC)] [nvarchar](255) NULL,
	[Submit Date (UTC)] [nvarchar](255) NULL,
	[Network ID] [nvarchar](255) NULL
) ON [PRIMARY]

GO
