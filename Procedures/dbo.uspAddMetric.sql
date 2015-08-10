-- =============================================
-- Author:		<Stephen Gershman>
-- Create date: <06/25/2015>
-- Description:	<Add new metric>
-- =============================================

CREATE PROCEDURE [dbo].[uspAddMetric]
	    @metric_name nvarchar(255)
	  , @metric_type nvarchar(50)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

INSERT INTO dbo.Metric (Metric_Name, Updated_Timestamp, Metric_Type)
VALUES (@metric_name, GETDATE(), @metric_type)

END
GO


