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

EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Curriculum', @metric_name = 'Business Vision Framework'
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Curriculum', @metric_name = 'Vision Statement'
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Curriculum', @metric_name = 'Customer Segmentation'
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Curriculum', @metric_name = 'Interviewing for empathy'
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Curriculum', @metric_name = 'Perceptual mapping'
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Curriculum', @metric_name = 'Minimum viable product'
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Curriculum', @metric_name = 'Rapid prototyping'
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Curriculum', @metric_name = 'Theory of change model'
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Curriculum', @metric_name = 'Building a revenue model'
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Curriculum', @metric_name = 'SMART tasks'
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Curriculum', @metric_name = 'Volunteer management'
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Curriculum', @metric_name = 'Fundamentals of fundraising/financing'
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Curriculum', @metric_name = 'Venture pitch'
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Skills Development', @metric_name = 'Budgeting '
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Skills Development', @metric_name = 'Fundraising '
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Skills Development', @metric_name = 'Market Research '
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Skills Development', @metric_name = 'Marketing/Social Media'
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Skills Development', @metric_name = 'Networking '
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Skills Development', @metric_name = 'Operations'
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Skills Development', @metric_name = 'Project Management '
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Skills Development', @metric_name = 'Pitching/Public Speaking'
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Skills Development', @metric_name = 'Visioning '
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Skills Development', @metric_name = 'Principles SocEnt Design Thinking'
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Skills Development', @metric_name = 'Venture to Next Stage'
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Skills Development', @metric_name = 'Applicable Skills'
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Skills Development', @metric_name = 'Top 3 Professional Development Programs'
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Venture Milestones', @metric_name = 'Written a Business Plan'
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Venture Milestones', @metric_name = 'Executive Summary'
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Venture Milestones', @metric_name = 'One-Year Budget'
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Venture Milestones', @metric_name = 'Powerpoint Deck'
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Venture Milestones', @metric_name = 'Work Plan'
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Venture Milestones', @metric_name = 'Publicly Presented Venture'
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Venture Milestones', @metric_name = 'Pitched to User or Funder'
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Venture Milestones', @metric_name = 'Incorporated'
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Connection to Judaism', @metric_name = 'Jewish Values and Venture Mission'
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Connection to Judaism', @metric_name = 'Greater Sense of Belonging to Jewish Community'
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Connection to Judaism', @metric_name = 'Comfort with Jewish Texts and Traditions'
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Connection to Judaism', @metric_name = 'Comfort with Pluralistic Conversations on Values'
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Connection to Judaism', @metric_name = 'Shared Jewish Concepts'
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Connection to Judaism', @metric_name = 'Applied Jewish Concepts to Venture'
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Connection to Judaism', @metric_name = 'Applied Jewish Concepts to Life'
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Connection to Judaism', @metric_name = 'Jewish Sensibility Cards in Training'
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Program Components', @metric_name = 'Coaches and Mentors'
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Program Components', @metric_name = 'Clusters'
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Program Components', @metric_name = 'Launch Night'
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Program Components', @metric_name = 'Milestones'
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Program Components', @metric_name = 'Mock Launch Night'
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Program Components', @metric_name = 'Pitching'
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Program Components', @metric_name = 'Roundtables'
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Program Components', @metric_name = 'Seminars'
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Volunteers', @metric_name = 'Coaches'
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Volunteers', @metric_name = 'Mentors'
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Volunteers', @metric_name = 'SocialStart Trainers'
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Future Participation', @metric_name = 'Receive Virtual Mentor'
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Future Participation', @metric_name = 'Join Virtual Cluster'
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Future Participation', @metric_name = 'Attend Professional Development Webinar'
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Future Participation', @metric_name = 'Attend Social of Professional Event in City'
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Future Participation', @metric_name = 'Access Discounted Products and Services'
EXECUTE [dbo].[uspAddMetricMapping] @indicator_name = 'Future Participation', @metric_name = 'Serve as Mentor of Coach or Committee Member'
;
/* Add Metric Component Count to Metric Rows */
with component_count AS (
	SELECT mm.indicator_id, COUNT(mm.metric_id) AS component_count
	FROM ref.metric_mapping mm
	GROUP BY mm.Indicator_ID
)

UPDATE i
SET i.Indicator_Metric_Count = cc.component_count
FROM dbo.Indicator i
INNER JOIN component_count cc
	ON cc.indicator_ID = i.Indicator_ID;
END

SELECT * FROM metric WHERE metric_id IN (
--SELECT * FROM Indicator_Results WHERE Indicator_ID IN (
	SELECT DISTINCT mm.Metric_ID FROM ref.Metric_Mapping mm
	LEFT OUTER JOIN dbo.Indicator i
		ON i.Indicator_ID = mm.Indicator_ID
	--WHERE i.Indicator_Name LIKE '%future%'
)