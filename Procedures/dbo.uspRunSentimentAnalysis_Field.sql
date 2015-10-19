USE [SL01]
GO

/****** Object:  StoredProcedure [dbo].[uspRunSentimentAnalysis_Field]    Script Date: 10/19/2015 11:08:25 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Stephen Gershman>
-- Create date: <10/19/2015>
-- Description:	<Run sentiment analysis for a specific field>

/* EXEC [dbo].[uspRunSentimentAnalysis_Field]				*/
-- =============================================

CREATE PROCEDURE [dbo].[uspRunSentimentAnalysis_Field]
	  @table_name nvarchar(MAX)
	, @column_name nvarchar(MAX)
	, @org_id nvarchar(10)

AS
BEGIN

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

DECLARE @sql varchar(MAX) = ''

SET @sql = @sql + 'DECLARE @fieldvalue nvarchar(MAX) = '''';'
				+ ' SET @fieldvalue = (SELECT ' + @column_name + ' AS fieldvalue FROM ' + @table_name +
				  ' WHERE org_id = ''' + @org_id + ''');'

SET @sql = @sql + ' SELECT COUNT(pos.stringliteral) - COUNT(neg.StringLiteral) AS fieldscore FROM word.value v'
				+ ' LEFT OUTER JOIN (SELECT stringliteral FROM dbo.fnSplitDelimitedStringList (@fieldvalue,'' '')) pos'
				+ '	ON v.word = pos.StringLiteral AND v.sentiment = ''Positive'''
				+ ' LEFT OUTER JOIN (SELECT stringliteral FROM dbo.fnSplitDelimitedStringList (@fieldvalue,'' '')) neg'
				+ '	ON v.word = neg.StringLiteral AND v.sentiment = ''Negative'''

EXEC(@sql)

END
