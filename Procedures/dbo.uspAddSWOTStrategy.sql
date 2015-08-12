/****** Object:  StoredProcedure [dbo].[uspAddStrategy]    Script Date: 8/11/2015 8:54:56 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Stephen Gershman>
-- Create date: <08/11/2015>
-- Description:	<Add new strategy>
-- =============================================

CREATE PROCEDURE [dbo].[uspAddSWOTStrategy]
	    @strategy_name nvarchar(250) = NULL
	  , @strategy_type_name nvarchar(250) = NULL
	  , @strategy_category_name nvarchar(250) = NULL

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

INSERT INTO lookup.SWOT_Strategy (Strategy_Name, Strategy_Type_ID, strategy_category_Name)
SELECT @strategy_name, st.strategy_type_id, @strategy_category_name
FROM lookup.SWOT_Strategy_Type st
WHERE st.strategy_type_name = @strategy_type_name
except SELECT Strategy_Name, Strategy_Type_ID, strategy_category_name FROM lookup.SWOT_Strategy

END

GO


