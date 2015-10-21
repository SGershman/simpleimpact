CREATE TABLE [dbo].[Individual](
	[Org_ID] [int] NOT NULL,
	[Org_Chapter_ID] [int] NULL,
	[Individual_ID] [int] IDENTITY(1,1) NOT NULL,
	[First_Name] [nvarchar](255) NOT NULL,
	[Last_Name] [nvarchar](255) NOT NULL,
	[City] [nvarchar](255) NULL,
	[State] [nvarchar](50) NULL,
	[Zip] [int] NULL,
	[Phone_1] [varchar](255) NULL,
	[Phone_2] [varchar](255) NULL,
	[Race] [nvarchar](50) NULL,
	[Ethnicity] [nvarchar](50) NULL,
	[Gender] [nvarchar](50) NULL,
	[Age_Range] [nvarchar](250) NULL,
	[Country_Origin] [nvarchar](250) NULL,
	[Education_Level] [nvarchar](250) NULL,
	[Income] [nvarchar](250) NULL,
	[Industry] [nvarchar](250) NULL,
	[Financial Position] [nvarchar](250) NULL,
	[Created_Timestamp] [datetime] NOT NULL,
	[Entry_Timestamp] [datetime] NOT NULL,
	[Updated_Timestamp] [datetime] NOT NULL
) ON [PRIMARY]

GO


