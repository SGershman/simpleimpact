USE [V3_Test_Strategic_Plan]
GO
/****** Object:  Table [dbo].[Metric_Component]    Script Date: 6/24/2015 9:13:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Metric_Component](
	[Metric_Component_ID] [float] NULL,
	[Metric_Component_Type] [nvarchar](255) NULL,
	[Metric_Component_Name] [nvarchar](255) NULL,
	[Metric_Component_Value] [float] NULL,
	[Metric_Component_Source] [nvarchar](255) NULL
) ON [PRIMARY]

GO
