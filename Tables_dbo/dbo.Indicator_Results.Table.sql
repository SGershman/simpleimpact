/****** Object:  Table [dbo].[Indicator_Results]    Script Date: 8/10/2015 10:17:42 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Indicator_Results](
	[Org_ID] [int] NOT NULL,
	[Org_Chapter_ID] [int] NULL,
	[Individual_ID] [int] NULL,
	[Indicator_ID] [int] NOT NULL,
	[Numerator] [decimal](18, 2) NOT NULL,
	[Denominator] [decimal](18, 2) NOT NULL,
	[Created_Timestamp] [date] NOT NULL,
	[Updated_Timestamp] [date] NOT NULL
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Indicator_Results]  WITH CHECK ADD  CONSTRAINT [FK_Indicator_Results_Indicator] FOREIGN KEY([Indicator_ID])
REFERENCES [dbo].[Indicator] ([Indicator_ID])
GO

ALTER TABLE [dbo].[Indicator_Results] CHECK CONSTRAINT [FK_Indicator_Results_Indicator]
GO

ALTER TABLE [dbo].[Indicator_Results]  WITH CHECK ADD  CONSTRAINT [FK_Indicator_Results_Individual] FOREIGN KEY([Individual_ID])
REFERENCES [dbo].[Individual] ([Individual_ID])
GO

ALTER TABLE [dbo].[Indicator_Results] CHECK CONSTRAINT [FK_Indicator_Results_Individual]
GO

ALTER TABLE [dbo].[Indicator_Results]  WITH CHECK ADD  CONSTRAINT [FK_Indicator_Results_Org] FOREIGN KEY([Org_ID])
REFERENCES [dbo].[Org] ([Org_ID])
GO

ALTER TABLE [dbo].[Indicator_Results] CHECK CONSTRAINT [FK_Indicator_Results_Org]
GO

ALTER TABLE [dbo].[Indicator_Results]  WITH CHECK ADD  CONSTRAINT [FK_Indicator_Results_Org_Chapter] FOREIGN KEY([Org_Chapter_ID])
REFERENCES [dbo].[Org_Chapter] ([Org_Chapter_ID])
GO

ALTER TABLE [dbo].[Indicator_Results] CHECK CONSTRAINT [FK_Indicator_Results_Org_Chapter]
GO


