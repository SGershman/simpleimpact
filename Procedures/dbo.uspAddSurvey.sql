-- =============================================
-- Author:		<Stephen Gershman>
-- Create date: <07/01/2015>
-- Description:	<Add new survey>
-- =============================================

CREATE PROCEDURE [dbo].[uspAddSurvey]
	    @survey_name nvarchar(250)
	  , @survey_description nvarchar(250) = NULL
	  , @survey_source_name nvarchar(250)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

INSERT INTO dbo.Survey (Survey_Name, Survey_Description, Survey_Source_Name)
VALUES (@survey_name, @survey_description, @survey_source_name);

END


GO


