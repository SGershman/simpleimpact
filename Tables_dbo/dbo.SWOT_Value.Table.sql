CREATE TABLE [results].[SWOT_Strategy](
	[SWOT_Value_ID] [int] IDENTITY(1,1),
	[Org_ID] [int] NOT NULL,
	[Org_Chapter_ID] [int] NULL,
	[Individual_ID] [int] NULL,
	[SWOT_Component_ID] [nvarchar](255) NOT NULL,
	[SWOT_Component_Name] [nvarchar](255) NOT NULL,
	[Strategy_ID] [int] NULL,
	[Strategy_Name] [nvarchar](255) NULL,
	[Strategy_Type_ID] [int] NULL,
	[Outcome_ID] [int] NULL,
	[Outcome_Name] [nvarchar](255) NULL,
	[Strategic_Priority_ID] [int] NULL,
	[Strategic_Priority_Name] [nvarchar](255) NULL
) ON [PRIMARY]

GO