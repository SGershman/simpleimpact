-- =============================================
-- Author:		<Stephen Gershman>
-- Create date: <06/24/2015>
-- Description:	<Add new mapping between a metric and a metric component>
-- =============================================

CREATE PROCEDURE [dbo].[uspAddMetricMapping]
	  @indicator_name nvarchar(255)
	, @metric_name nvarchar(255)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

DECLARE @indicator_id int; SET @indicator_id = (SELECT indicator_id FROM Indicator WHERE Indicator_Name = @indicator_name);
DECLARE @metric_id int; SET @metric_id = (
	SELECT metric_ID FROM metric WHERE metric_Name = @metric_name
	);
DECLARE @timestamp datetime; SET @timestamp = GETDATE()

INSERT INTO dbo.metric_mapping (indicator_id, metric_ID, Created_Timestamp, Updated_Timestamp)
VALUES (@indicator_id, @metric_id, @timestamp, @timestamp);

END