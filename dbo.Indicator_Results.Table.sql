CREATE TABLE [dbo].[Indicator_Results](
	[Org_ID] [int] NOT NULL,
	[Org_Chapter_ID] [int] NULL,
	[Individual_ID] [int] NULL,
	[Indicator_ID] [int] NOT NULL,
	[Numerator] [varchar](max) NOT NULL,
	[Denominator] [varchar](max) NOT NULL,
	[Created_Timestamp] [date] NOT NULL,
	[Updated_Timestamp] [date] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
