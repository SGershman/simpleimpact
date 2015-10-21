CREATE TABLE [lookup].[Value](
	[Value_ID] [int] IDENTITY(1,1) NOT NULL,
	[Value_Type_ID] [int] NOT NULL,
	[Value_Name] [nvarchar](255) NOT NULL,
	[Value_Description] [nvarchar](255) NULL
) ON [PRIMARY]

GO


