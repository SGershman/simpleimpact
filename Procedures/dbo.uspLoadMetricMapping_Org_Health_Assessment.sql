SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Stephen Gershman>
-- Create date: <06/25/2015>
-- Description:	<Populate Metric Map for Org Health Assessment>
-- =============================================
CREATE PROCEDURE [dbo].[uspLoadMetricMapping_Org_Health_Assessment]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

EXEC [dbo].[uspAddMetricMapping] @metric_name = 'Accountability', @metric_component_name = 'Board Giving'
EXEC [dbo].[uspAddMetricMapping] @metric_name = 'Accountability', @metric_component_name = 'Board Self-Assessment'
EXEC [dbo].[uspAddMetricMapping] @metric_name = 'Accountability', @metric_component_name = 'ED / CEO Annual Review'
EXEC [dbo].[uspAddMetricMapping] @metric_name = 'Accountability', @metric_component_name = 'Risk Management'
EXEC [dbo].[uspAddMetricMapping] @metric_name = 'Capabilities', @metric_component_name = 'Best Practices'
EXEC [dbo].[uspAddMetricMapping] @metric_name = 'Capabilities', @metric_component_name = 'Revenue Sources'
EXEC [dbo].[uspAddMetricMapping] @metric_name = 'Capabilities', @metric_component_name = 'Technology'
EXEC [dbo].[uspAddMetricMapping] @metric_name = 'Continuous Improvement', @metric_component_name = 'Innovation'
EXEC [dbo].[uspAddMetricMapping] @metric_name = 'Continuous Improvement', @metric_component_name = 'Knowledge Sharing'
EXEC [dbo].[uspAddMetricMapping] @metric_name = 'Continuous Improvement', @metric_component_name = 'Personal Growth'
EXEC [dbo].[uspAddMetricMapping] @metric_name = 'Continuous Improvement', @metric_component_name = 'Incorporate Feedback'
EXEC [dbo].[uspAddMetricMapping] @metric_name = 'Coordination and Control', @metric_component_name = 'Financial Management'
EXEC [dbo].[uspAddMetricMapping] @metric_name = 'Coordination and Control', @metric_component_name = 'Organized'
EXEC [dbo].[uspAddMetricMapping] @metric_name = 'Coordination and Control', @metric_component_name = 'Work Plan'
EXEC [dbo].[uspAddMetricMapping] @metric_name = 'Culture and Climate', @metric_component_name = 'Open Culture'
EXEC [dbo].[uspAddMetricMapping] @metric_name = 'Culture and Climate', @metric_component_name = 'Honesty'
EXEC [dbo].[uspAddMetricMapping] @metric_name = 'Culture and Climate', @metric_component_name = 'Values'
EXEC [dbo].[uspAddMetricMapping] @metric_name = 'Culture and Climate', @metric_component_name = 'Workplace'
EXEC [dbo].[uspAddMetricMapping] @metric_name = 'Culture and Climate', @metric_component_name = 'Creativity'
EXEC [dbo].[uspAddMetricMapping] @metric_name = 'Direction', @metric_component_name = 'Impact'
EXEC [dbo].[uspAddMetricMapping] @metric_name = 'Direction', @metric_component_name = 'Mission'
EXEC [dbo].[uspAddMetricMapping] @metric_name = 'Direction', @metric_component_name = 'Strategic Plan'
EXEC [dbo].[uspAddMetricMapping] @metric_name = 'Direction', @metric_component_name = 'Theory of Change'
EXEC [dbo].[uspAddMetricMapping] @metric_name = 'Direction', @metric_component_name = 'Uniqueness'
EXEC [dbo].[uspAddMetricMapping] @metric_name = 'Direction', @metric_component_name = 'Vision'
EXEC [dbo].[uspAddMetricMapping] @metric_name = 'External Engagement', @metric_component_name = 'Client Focus'
EXEC [dbo].[uspAddMetricMapping] @metric_name = 'External Engagement', @metric_component_name = 'Partnerships'
EXEC [dbo].[uspAddMetricMapping] @metric_name = 'Initial Health Estimate', @metric_component_name = 'Initial Health Estimate'
EXEC [dbo].[uspAddMetricMapping] @metric_name = 'Leadership', @metric_component_name = 'Board Engagement'
EXEC [dbo].[uspAddMetricMapping] @metric_name = 'Leadership', @metric_component_name = 'Inspiration'
EXEC [dbo].[uspAddMetricMapping] @metric_name = 'Leadership', @metric_component_name = 'Leadership Support'
EXEC [dbo].[uspAddMetricMapping] @metric_name = 'Leadership', @metric_component_name = 'Top Down Environment'
EXEC [dbo].[uspAddMetricMapping] @metric_name = 'Motivation', @metric_component_name = 'Employee Involvement'
EXEC [dbo].[uspAddMetricMapping] @metric_name = 'Motivation', @metric_component_name = 'Competitive'
EXEC [dbo].[uspAddMetricMapping] @metric_name = 'Motivation', @metric_component_name = 'Financial Incentives'
EXEC [dbo].[uspAddMetricMapping] @metric_name = 'Motivation', @metric_component_name = 'Ownership'
EXEC [dbo].[uspAddMetricMapping] @metric_name = 'People Management', @metric_component_name = 'Recruiting'
EXEC [dbo].[uspAddMetricMapping] @metric_name = 'People Management', @metric_component_name = 'Recognition'
EXEC [dbo].[uspAddMetricMapping] @metric_name = 'People Management', @metric_component_name = 'Role Clarity';

/* Add Metric Component Count to Metric Rows */
with component_count AS (
	SELECT metric_id, COUNT(mm.metric_component_id) AS component_count
	FROM dbo.Metric_Mapping mm
	GROUP BY Metric_ID
)

UPDATE m
SET m.Metric_Component_Count = cc.component_count
FROM dbo.Metric m
INNER JOIN component_count cc
	ON cc.Metric_ID = m.Metric_ID;
END
