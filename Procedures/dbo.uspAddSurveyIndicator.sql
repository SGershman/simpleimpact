-- =============================================
-- Author:		<Stephen Gershman>
-- Create date: <07/01/2015>
-- Description:	<Add new survey indicator>
-- =============================================

CREATE PROCEDURE [dbo].[uspAddSurveyIndicator]
	    @survey_name nvarchar(250)
	  , @survey_indicator_name nvarchar(250) = NULL
	  , @survey_source_name nvarchar(250)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

DECLARE @survey_id int; SET @survey_id = (
	SELECT survey_id FROM dbo.survey s WHERE s.survey_name = @survey_name
	)
DECLARE @survey_indicator_id int; SET @survey_indicator_id = (
	SELECT md.id FROM v_Metrics_Details md WHERE md.[Metric Name] = @survey_indicator_name
	AND md.[Source] = @survey_source_name
	)

INSERT INTO dbo.Survey_Indicator (Survey_ID, Survey_Indicator_ID)
VALUES (@survey_id, @survey_indicator_id);

END

GO