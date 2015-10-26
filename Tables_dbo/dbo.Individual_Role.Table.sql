CREATE TABLE [dbo].[Individual_Group_Role](
	[Org_ID] [int] NOT NULL,
	[Org_Chapter_ID] [int] NULL,
	[Individual_ID] [int] NOT NULL,
	[Group_ID] [int] NOT NULL,
	[Role_ID] [int] NOT NULL,
	[Start_Date] [datetime] NULL,
	[End_Date] [datetime] NULL,
	[Updated_Timestamp] [datetime] NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Role_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO