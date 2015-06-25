/****** Object:  Table [dbo].[Metric]    Script Date: 6/24/2015 4:29:26 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Metric](
	[Metric_ID] [int] IDENTITY(1,1),
	[Metric_Name] [nvarchar](255) NULL,
	[Updated_Timestamp] [nvarchar](255) NULL,
	[Metric_Type] [nvarchar](50) NULL,
	[Metric_Component_Count] [int] NULL
) ON [PRIMARY]

GO


