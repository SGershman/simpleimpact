/****** Object:  Table [dbo].[Survey]    Script Date: 7/1/2015 2:30:26 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Survey](
	[Survey_ID] [int] IDENTITY(1,1) NOT NULL,
	[Survey_Name] [nvarchar](255) NULL,
	[Survey_Description] [nvarchar](255) NULL,
	[Survey_Source_Name] [nvarchar](255) NULL
) ON [PRIMARY]

GO


