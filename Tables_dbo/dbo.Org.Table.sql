CREATE TABLE [dbo].[Org](
	[Org_ID] int IDENTITY(1,1),
	[Org_Name] [nvarchar](255) NULL,
	[Org_Industry] [nvarchar](255) NULL,
	[Org_Tax_Code] [nvarchar](255) NULL,
	[Org_Mission_Statement] [nvarchar](max) NULL,
	[FTE_Count] [int] NULL,
	[Volunteer_Count] [int] NULL,
	[Board_Member_Count] [int] NULL,
	[Budget_Annual] [int] NULL,
	[Year_Founded] [int] NULL,
	[Overall_Rating] [int] NULL,
	[Create_Timestamp] [datetime] NULL,
	[Entry_Timestamp] [datetime] NULL,
	[Update_Timestamp] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
