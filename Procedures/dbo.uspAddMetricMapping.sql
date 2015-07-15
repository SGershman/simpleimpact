USE [V3_Test_Strategic_Plan]
GO
/****** Object:  StoredProcedure [dbo].[uspAddMetricMapping]    Script Date: 6/25/2015 1:10:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Stephen Gershman>
-- Create date: <06/24/2015>
-- Description:	<Add new mapping between a metric and a metric component>
-- =============================================

CREATE PROCEDURE [dbo].[uspAddMetricMapping]
	  @metric_name nvarchar(255)
	, @metric_component_name nvarchar(255)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

DECLARE @metric_id int; SET @metric_id = (SELECT metric_id FROM metric WHERE Metric_Name = @metric_name);
DECLARE @metric_component_id int; SET @metric_component_id = (
	SELECT Metric_Component_ID FROM Metric_Component WHERE Metric_Component_Name = @metric_component_name
	);
DECLARE @timestamp datetime; SET @timestamp = GETDATE()

INSERT INTO dbo.metric_mapping (Metric_ID, Metric_Component_ID, Created_Timestamp, Updated_Timestamp)
VALUES (@metric_id, @metric_component_id, @timestamp, @timestamp);

END