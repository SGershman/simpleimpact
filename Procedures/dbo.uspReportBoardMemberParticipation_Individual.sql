USE [SL01]
GO
/****** Object:  StoredProcedure [dbo].[uspRunSentimentAnalysis_Field]    Script Date: 10/26/2015 2:05:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Stephen Gershman>
-- Create date: <10/26/2015>
-- Description:	<Produce Board Member Participation Deliverable>

/* EXEC [dbo].[uspReportBoardMemberParticipation_Totals]				*/
-- =============================================

CREATE PROCEDURE [dbo].[uspReportBoardMemberParticipation_Individual]
	    @org_id int
	  , @individual_id int

AS
BEGIN

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

SELECT CAST(i.First_Name + ' ' + i.Last_Name AS varchar(MAX)) AS [Name]
, gboard.Group_Name AS [Board Name]
, rboard.Role_Name AS [Board Role Name]
, gcomm.Group_Name AS [Committee Name]
, rcomm.Role_Name AS [Committee Role Name]
, o.org_name AS [Organization]
, oc.Org_Chapter_Name AS [Organization Chapter]
, CAST (rboard.Role_Name + ' Since ' + CAST(YEAR(igrboard.Start_Date) AS varchar(MAX)) AS varchar(MAX)) AS [BoardRoleStart]
, i.City
, i.[State]
, i.Zip
, NULL AS [Phone Number]
, i.Race
, i.Ethnicity
, i.Gender
, i.Age_Range
, i.Country_Origin
, Education_Level
, Income
, Industry
, s.Skills_Name
, NULL AS [Board Meetings Attended This Year]
, i.Updated_Timestamp AS [Most Recent Update]
FROM dbo.Individual i
LEFT OUTER JOIN dbo.Individual_Group_Role igrboard
	ON igrboard.Org_ID = i.Org_ID
	AND ISNULL(igrboard.Org_Chapter_ID,9999) = ISNULL(i.Org_Chapter_ID,9999)
	AND igrboard.Individual_ID = i.Individual_ID
	AND igrboard.Group_ID IN (SELECT group_id FROM lookup.[group] WHERE Group_Name = 'Board of Directors')
LEFT OUTER JOIN dbo.Individual_Group_Role igrcomm
	ON igrcomm.Org_ID = i.Org_ID
	AND ISNULL(igrcomm.Org_Chapter_ID,9999) = ISNULL(i.Org_Chapter_ID,9999)
	AND igrcomm.Individual_ID = i.Individual_ID
	AND igrcomm.Group_ID IN (SELECT group_id FROM lookup.[group] WHERE Group_type = 'Committee')  
LEFT OUTER JOIN dbo.Individual_Skills inds
	ON inds.Org_ID = i.Org_ID
	AND ISNULL(inds.Org_Chapter_ID,9999) = ISNULL(i.Org_Chapter_ID,9999)
	AND inds.Individual_ID = i.Individual_ID
LEFT OUTER JOIN lookup.[Role] rboard
	ON rboard.role_id = igrboard.Role_ID
LEFT OUTER JOIN lookup.[group] gboard
	ON gboard.Group_ID = igrboard.Group_ID
LEFT OUTER JOIN lookup.[Role] rcomm
	ON rcomm.role_id = igrcomm.Role_ID
LEFT OUTER JOIN lookup.[group] gcomm
	ON gcomm.Group_ID = igrcomm.Group_ID
LEFT OUTER JOIN lookup.Skills s
	ON inds.Skills_ID = s.Skills_ID
LEFT OUTER JOIN dbo.org o
	ON o.org_id = i.Org_ID
LEFT OUTER JOIN dbo.Org_Chapter oc
	ON oc.Org_Chapter_ID = i.Org_Chapter_ID
	AND oc.org_id = i.Org_ID

END
