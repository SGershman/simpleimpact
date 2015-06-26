USE [V3_Test_Strategic_Plan]
GO
/****** Object:  StoredProcedure [dbo].[uspDeleteAllData]    Script Date: 6/26/2015 12:24:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Stephen Gershman>
-- Create date: <06/26/2015>
-- Description:	<Delete All Data>
-- =============================================

CREATE PROCEDURE [dbo].[uspDeleteAllData]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

TRUNCATE TABLE dbo.org
TRUNCATE TABLE dbo.org_chapter
TRUNCATE TABLE dbo.metric_results
TRUNCATE TABLE dbo.metric_mapping
TRUNCATE TABLE dbo.metric
TRUNCATE TABLE dbo.metric_component_results
TRUNCATE TABLE dbo.metric_component
TRUNCATE TABLE dbo.individual
TRUNCATE TABLE dbo.individual_role

END
