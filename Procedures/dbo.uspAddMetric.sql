USE [V3_Test_Strategic_Plan]
GO

/****** Object:  StoredProcedure [dbo].[uspAddMetric]    Script Date: 6/25/2015 1:30:57 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

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


