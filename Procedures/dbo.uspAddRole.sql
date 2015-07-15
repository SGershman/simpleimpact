USE [V3_Test_Strategic_Plan]
GO

/****** Object:  StoredProcedure [dbo].[uspAddRole]    Script Date: 6/26/2015 10:32:03 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Stephen Gershman>
-- Create date: <06/26/2015>
-- Description:	<Add new role>
-- =============================================

CREATE PROCEDURE [dbo].[uspAddRole]
	    @role_name nvarchar(250)
	  , @role_parent_name nvarchar(250) = NULL
	  , @role_description nvarchar(250)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

DECLARE @role_parent_id int; SET @role_parent_id = (
	SELECT CASE
		WHEN @role_parent_name IS NULL THEN NULL
		ELSE ir.Individual_Role_Parent_ID
		END
	FROM Individual_Role ir
	WHERE ir.Individual_Role_Name = @role_parent_name
	)

INSERT INTO dbo.Individual_Role (Individual_Role_Name, Individual_Role_Parent_ID, Individual_Role_Description)
VALUES (@role_name, @role_parent_id, @role_description);

END

GO


