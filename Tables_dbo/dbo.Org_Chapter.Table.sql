CREATE TABLE [dbo].[Org_Chapter](
	[Org_ID] [int] NOT NULL,
	[Org_Chapter_ID] [int] IDENTITY(1,1),
	[Org_Chapter_Name] [nvarchar](255) NULL,
	[Org_Chapter_Type] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL,
	[State] [nvarchar](255) NULL,
	[Zip] [nvarchar](10) NULL
) ON [PRIMARY]

GO


