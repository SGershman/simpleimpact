/****** Object:  Table [dbo].[Indicator]    Script Date: 6/24/2015 4:29:26 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Indicator](
	[Indicator_ID] [int] IDENTITY(1,1),
	[Indicator_Name] [nvarchar](255) NULL,
	[Updated_Timestamp] [nvarchar](255) NULL,
	[Indicator_Type] [nvarchar](50) NULL,
	[Indicator_Metric_Count] [int] NULL
) ON [PRIMARY]

GO


