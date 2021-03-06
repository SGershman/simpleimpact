SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Metric_Results](
	[Org_ID] [int] NOT NULL,
	[Org_Chapter_ID] [int] NULL,
	[Metric_ID] [int] NOT NULL,
	[Metric_Value] [int] NULL,
	[Individual_ID] [int] NULL,
	[Numerator] [decimal](18,2) NULL,
	[Denominator] [decimal](18,2) NULL,
	[Created_Timestamp] [date] NULL,
	[Updated_Timestamp] [date] NOT NULL
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Metric_Results]  WITH CHECK ADD  CONSTRAINT [FK_Metric_Results_Individual] FOREIGN KEY([Individual_ID])
REFERENCES [dbo].[Individual] ([Individual_ID])
GO

ALTER TABLE [dbo].[Metric_Results] CHECK CONSTRAINT [FK_Metric_Results_Individual]
GO

ALTER TABLE [dbo].[Metric_Results]  WITH CHECK ADD  CONSTRAINT [FK_Metric_Results_Metric] FOREIGN KEY([Metric_ID])
REFERENCES [dbo].[Metric] ([Metric_ID])
GO

ALTER TABLE [dbo].[Metric_Results] CHECK CONSTRAINT [FK_Metric_Results_Metric]
GO

ALTER TABLE [dbo].[Metric_Results]  WITH CHECK ADD  CONSTRAINT [FK_Metric_Results_Org] FOREIGN KEY([Org_ID])
REFERENCES [dbo].[Org] ([Org_ID])
GO

ALTER TABLE [dbo].[Metric_Results] CHECK CONSTRAINT [FK_Metric_Results_Org]
GO

ALTER TABLE [dbo].[Metric_Results]  WITH CHECK ADD  CONSTRAINT [FK_Metric_Results_Org_Chapter] FOREIGN KEY([Org_Chapter_ID])
REFERENCES [dbo].[Org_Chapter] ([Org_Chapter_ID])
GO

ALTER TABLE [dbo].[Metric_Results] CHECK CONSTRAINT [FK_Metric_Results_Org_Chapter]
GO


