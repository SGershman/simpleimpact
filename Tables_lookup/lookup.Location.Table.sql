CREATE TABLE [lookup].[Location](
	[Zip] [char](5) NOT NULL,
	[City] [varchar](75) NOT NULL,
	[State] [char](2) NOT NULL,
	[Latitude] varchar(20) NOT NULL, 
	[Longitude] varchar(20) NOT NULL,
	[Timezone] [varchar](20) NULL,
	[DST] [varchar](20) NULL,
	[Insert_Timestamp] datetime NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


