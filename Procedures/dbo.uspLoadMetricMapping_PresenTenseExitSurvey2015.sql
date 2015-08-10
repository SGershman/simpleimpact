SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Stephen Gershman>
-- Create date: <07/07/2015>
-- Description:	<Populate Metric Map for PresenTense Exit Survey 2015>
-- =============================================
CREATE PROCEDURE [dbo].[uspLoadMetricMapping_PresenTenseExitSurvey2015]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Curriculum', @metric_component_name = 'Business Vision Framework'
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Curriculum', @metric_component_name = 'Vision Statement'
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Curriculum', @metric_component_name = 'Customer Segmentation'
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Curriculum', @metric_component_name = 'Interviewing for empathy'
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Curriculum', @metric_component_name = 'Perceptual mapping'
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Curriculum', @metric_component_name = 'Minimum viable product'
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Curriculum', @metric_component_name = 'Rapid prototyping'
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Curriculum', @metric_component_name = 'Theory of change model'
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Curriculum', @metric_component_name = 'Building a revenue model'
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Curriculum', @metric_component_name = 'SMART tasks'
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Curriculum', @metric_component_name = 'Volunteer management'
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Curriculum', @metric_component_name = 'Fundamentals of fundraising/financing'
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Curriculum', @metric_component_name = 'Venture pitch'
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Skills Development', @metric_component_name = 'Budgeting '
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Skills Development', @metric_component_name = 'Fundraising '
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Skills Development', @metric_component_name = 'Market Research '
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Skills Development', @metric_component_name = 'Marketing/Social Media'
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Skills Development', @metric_component_name = 'Networking '
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Skills Development', @metric_component_name = 'Operations'
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Skills Development', @metric_component_name = 'Project Management '
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Skills Development', @metric_component_name = 'Pitching/Public Speaking'
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Skills Development', @metric_component_name = 'Visioning '
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Skills Development', @metric_component_name = 'Principles SocEnt Design Thinking'
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Skills Development', @metric_component_name = 'Venture to Next Stage'
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Skills Development', @metric_component_name = 'Applicable Skills'
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Skills Development', @metric_component_name = 'Top 3 Professional Development Programs'
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Venture Milestones', @metric_component_name = 'Written a Business Plan'
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Venture Milestones', @metric_component_name = 'Executive Summary'
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Venture Milestones', @metric_component_name = 'One-Year Budget'
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Venture Milestones', @metric_component_name = 'Powerpoint Deck'
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Venture Milestones', @metric_component_name = 'Work Plan'
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Venture Milestones', @metric_component_name = 'Publicly Presented Venture'
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Venture Milestones', @metric_component_name = 'Pitched to User or Funder'
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Venture Milestones', @metric_component_name = 'Incorporated'
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Connection to Judaism', @metric_component_name = 'Jewish Values and Venture Mission'
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Connection to Judaism', @metric_component_name = 'Greater Sense of Belonging to Jewish Community'
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Connection to Judaism', @metric_component_name = 'Comfort with Jewish Texts and Traditions'
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Connection to Judaism', @metric_component_name = 'Comfort with Pluralistic Conversations on Values'
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Connection to Judaism', @metric_component_name = 'Shared Jewish Concepts'
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Connection to Judaism', @metric_component_name = 'Applied Jewish Concepts to Venture'
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Connection to Judaism', @metric_component_name = 'Applied Jewish Concepts to Life'
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Connection to Judaism', @metric_component_name = 'Jewish Sensibility Cards in Training'
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Program Components', @metric_component_name = 'Coaches and Mentors'
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Program Components', @metric_component_name = 'Clusters'
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Program Components', @metric_component_name = 'Launch Night'
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Program Components', @metric_component_name = 'Milestones'
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Program Components', @metric_component_name = 'Mock Launch Night'
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Program Components', @metric_component_name = 'Pitching'
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Program Components', @metric_component_name = 'Roundtables'
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Program Components', @metric_component_name = 'Seminars'
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Volunteers', @metric_component_name = 'Coaches'
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Volunteers', @metric_component_name = 'Mentors'
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Volunteers', @metric_component_name = 'SocialStart Trainers'
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Future Participation', @metric_component_name = 'Receive Virtual Mentor'
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Future Participation', @metric_component_name = 'Join Virtual Cluster'
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Future Participation', @metric_component_name = 'Attend Professional Development Webinar'
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Future Participation', @metric_component_name = 'Attend Social of Professional Event in City'
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Future Participation', @metric_component_name = 'Access Discounted Products and Services'
EXECUTE [dbo].[uspAddMetricMapping] @metric_name = 'Future Participation', @metric_component_name = 'Serve as Mentor of Coach or Committee Member'
;
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
