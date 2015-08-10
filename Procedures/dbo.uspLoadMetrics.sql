SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Stephen Gershman>
-- Create date: <06/24/2015>
-- Update date: <08/10/2015>
-- Description:	<Load New Metrics>
-- =============================================

CREATE PROCEDURE uspLoadMetrics
	  @tablename varchar(MAX)
	, @tableschema varchar(MAX) = ''
	, @metric_type nvarchar(MAX) = NULL
	, @metric_value int = NULL
	, @metric_source nvarchar(MAX) = ''
	, @metric_set nvarchar(MAX) = NULL

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

declare @metric varchar(max);
declare c cursor for SELECT column_name FROM ##cursortemp
open c;
fetch next from c into @metric;
while @@FETCH_STATUS=0
begin

SET @finalsql = (
	  ' INSERT INTO dbo.metric ([metric_name], [metric_source])'
	+ ' SELECT DISTINCT ''' + @metric + ''', ''' + @tablename + ''' FROM ' + @tableschema + '.' + @tablename
	+ ' EXCEPT (SELECT metric_name, metric_source FROM metric)'
	)

/*
EXEC uspLoadMetrics @tablename = 'org_health_assessment'
, @tableschema = 'results', @metric_type = '1 - 5 Scale'
*/
PRINT (@finalsql)	
EXEC (@finalsql)

      print @@ROWCOUNT
      fetch next from c into @metric;
end
close c; 
deallocate c;

END
GO
