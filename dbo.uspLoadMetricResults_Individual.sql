USE [V3_Test_Strategic_Plan]
GO

/****** Object:  StoredProcedure [dbo].[uspLoadMetricResults_Individual]    Script Date: 6/26/2015 1:01:13 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Stephen Gershman>
-- Create date: <06/26/2015>
-- Description:	<Load Metric Results at an Individual Level>

/* EXEC uspLoadMetricResults_Individual				*/
-- =============================================

ALTER PROCEDURE [dbo].[uspLoadMetricResults_Individual]
AS
BEGIN

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

/* ORGANIZATION HEALTH ASSESSMENT */
	declare @metric_id int;
	declare c cursor for SELECT Metric_ID FROM Metric
	open c;
	fetch next from c into @metric_id;
	while @@FETCH_STATUS=0
	begin

/*
	DECLARE @sql varchar(MAX); SET @sql = (
		'declare @metric_id int; '
		+ ' INSERT INTO metric_results ('
		+ 'org_id, org_chapter_id, individual_id, metric_id, numerator, denominator, created_timestamp, updated_timestamp)'
		+ ' SELECT a.org_id, a.org_chapter_id, a.individual_id, mm.metric_id, AVG(a.[Numerator]) AS Numerator, 5 AS Denominator'
		+ ', GETDATE() AS Created_Timestamp, GETDATE() AS Updated_Timestamp'
		+ ' FROM dbo.metric_component_results a'
		+ ' INNER JOIN dbo.metric_mapping mm ON mm.metric_component_id = a.metric_component_id'
		+ ' AND mm.metric_id = @metric_id WHERE a.individual_id IS NOT NULL'
		+ ' GROUP BY a.org_id, a.org_chapter_id, a.individual_id, mm.metric_id'
		 )

		 PRINT (@sql)
		 EXEC (@sql)
*/

		INSERT INTO metric_results (
			org_id, org_chapter_id, individual_id, metric_id, numerator, denominator, created_timestamp, updated_timestamp)
		SELECT a.org_id, a.org_chapter_id, a.individual_id, mm.metric_id, AVG(a.[Numerator]) AS Numerator, 5 AS Denominator
		, GETDATE() AS Created_Timestamp, GETDATE() AS Updated_Timestamp FROM dbo.metric_component_results a 
		INNER JOIN dbo.metric_mapping mm 
			ON mm.metric_component_id = a.metric_component_id 
			AND mm.metric_id = @metric_id 
		WHERE a.individual_id IS NOT NULL
		GROUP BY a.org_id, a.org_chapter_id, a.individual_id, mm.metric_id

		  print @@ROWCOUNT
		  fetch next from c into @metric_id;
	end
	close c; 
	deallocate c;

END

GO


