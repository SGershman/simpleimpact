SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Stephen Gershman>
-- Create date: <06/24/2015>
-- Update date: <08/10/2015>
-- Description:	<Load Metric Results at an Organizational Level>

/* EXEC uspLoadmetricsResults_Organization				*/
-- =============================================

CREATE PROCEDURE uspLoadMetricsResults_Organization
AS
BEGIN

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

/* ORGANIZATION HEALTH ASSESSMENT */
	declare @metric varchar(max);
	declare c cursor for SELECT metric_name FROM metric 
						 WHERE metric_Source = 'org_health_assessment'
	open c;
	fetch next from c into @metric;
	while @@FETCH_STATUS=0
	begin

	DECLARE @sql varchar(MAX) = ''; SET @sql = (
		'declare @metric varchar(max); '
		+ ' INSERT INTO metric_results (org_id, metric_id, numerator, denominator, created_timestamp, updated_timestamp)'
		+ ' SELECT o.org_id, m.metric_id, AVG(a.[' + @metric + ']) AS Numerator, 5 AS Denominator'
		+ ', MAX(a.[Submit Date (UTC)]) AS Created_Timestamp, GETDATE() AS Updated_Timestamp '
		+ 'FROM results.org_health_assessment a INNER JOIN dbo.org o ON o.org_name = a.organization '
		+ 'INNER JOIN dbo.metric m ON m.metric_name = ''' + @metric + ''''
		+ ' GROUP BY o.org_id, m.metric_id;'
		 )

		 EXEC (@sql)

		  print @@ROWCOUNT
		  fetch next from c into @metric;
	end
	close c; 
	deallocate c;

END
GO