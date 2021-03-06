USE [V3_Test_Strategic_Plan]
GO
/****** Object:  Table [dbo].[Results]    Script Date: 6/24/2015 9:13:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Results](
	[Name] [nvarchar](255) NULL,
	[Founding Year] [nvarchar](255) NULL,
	[Industry] [nvarchar](255) NULL,
	[Tax Code] [nvarchar](255) NULL,
	[Other] [nvarchar](255) NULL,
	[Mission Statement] [nvarchar](max) NULL,
	[FTEs] [nvarchar](255) NULL,
	[Volunteers] [nvarchar](255) NULL,
	[Board Members] [nvarchar](255) NULL,
	[Annual Budget] [nvarchar](255) NULL,
	[Overall Organizational Rating] [nvarchar](255) NULL,
	[Start Date (UTC)] [nvarchar](255) NULL,
	[Submit Date (UTC)] [nvarchar](255) NULL,
	[Network ID] [nvarchar](255) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
