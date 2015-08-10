SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Stephen Gershman>
-- Create date: <06/24/2015>
-- Description:	<Load New Metric Components>
-- =============================================

CREATE PROCEDURE uspLoadMetricComponents
	  @tablename varchar(MAX)
	, @tableschema varchar(MAX) = ''
	, @metric_component_type nvarchar(MAX) = NULL
	, @metric_component_value int = NULL
	, @metric_component_source nvarchar(MAX) = ''
	, @metric_component_set nvarchar(MAX) = NULL

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

declare @cursorsql varchar(MAX);
declare @finalsql varchar(MAX);

IF OBJECT_ID('tempdb..##cursortemp') IS NOT NULL
    DROP TABLE ##cursortemp;
	CREATE TABLE ##cursortemp (column_name varchar(MAX));

SET @cursorsql = ('INSERT INTO ##cursortemp SELECT column_name FROM INFORMATION_SCHEMA.COLUMNS
	WHERE DATA_TYPE IN (''float'',''int'',''decimal'') AND TABLE_NAME = ''' + @tablename + ''''
				 )
print @cursorsql
EXEC (@cursorsql);
SELECT column_name FROM ##cursortemp

declare @metric_component varchar(max);
declare c cursor for SELECT column_name FROM ##cursortemp
open c;
fetch next from c into @metric_component;
while @@FETCH_STATUS=0
begin

SET @finalsql = (
	  ' INSERT INTO metric_component ([metric_component_name], [metric_component_source])'
	+ ' SELECT DISTINCT ''' + @metric_component + ''', ''' + @tablename + ''' FROM ' + @tableschema + '.' + @tablename
	+ ' EXCEPT (SELECT metric_component_name, metric_component_source FROM metric_component)'
	)

/*
EXEC uspLoadMetricComponents @tablename = 'org_health_assessment'
, @tableschema = 'results', @metric_component_type = '1 - 5 Scale'
*/
PRINT (@finalsql)	
EXEC (@finalsql)

      print @@ROWCOUNT
      fetch next from c into @metric_component;
end
close c; 
deallocate c;

END
GO
