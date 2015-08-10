SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Stephen Gershman>
-- Create date: <06/24/2015>
-- Description:	<Load Metric Component Results at an Organizational Level>

/* EXEC uspLoadMetricComponentsResults_Organization				*/
-- =============================================

CREATE PROCEDURE uspLoadMetricComponentsResults_Organization
AS
BEGIN

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

/* ORGANIZATION HEALTH ASSESSMENT */
	declare @metric_component varchar(max);
	declare c cursor for SELECT Metric_Component_name FROM Metric_Component 
						 WHERE Metric_Component_Source = 'org_health_assessment'
	open c;
	fetch next from c into @metric_component;
	while @@FETCH_STATUS=0
	begin

	DECLARE @sql varchar(MAX) = ''; SET @sql = (
		'declare @metric_component varchar(max); '
		+ ' INSERT INTO metric_component_results (org_id, metric_component_id, numerator, denominator, created_timestamp, updated_timestamp)'
		+ ' SELECT o.org_id, mc.metric_component_id, AVG(a.[' + @metric_component + ']) AS Numerator, 5 AS Denominator'
		+ ', MAX(a.[Submit Date (UTC)]) AS Created_Timestamp, GETDATE() AS Updated_Timestamp '
		+ 'FROM results.org_health_assessment a INNER JOIN dbo.org o ON o.org_name = a.organization '
		+ 'INNER JOIN dbo.metric_component mc ON mc.metric_component_name = ''' + @metric_component + ''''
		+ ' GROUP BY o.org_id, mc.metric_component_id;'
		 )

		 EXEC (@sql)

		  print @@ROWCOUNT
		  fetch next from c into @metric_component;
	end
	close c; 
	deallocate c;

END
GO