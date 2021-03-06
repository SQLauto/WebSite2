USE [andrew]
GO
/****** Object:  StoredProcedure [andrew].[NewPost] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Andrew B.
-- Create date: 7/18/2015
-- Description:	Adds a new post
-- =============================================
ALTER PROCEDURE [andrew].[NewPost]
	-- Add the parameters for the stored procedure here
	@PostText Text,
	@PostTitle VARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- Get the PostId for the new post
	DECLARE @PostId int = [andrew].[andrew].GetNewPostId();

	-- Insert statements for procedure here
	insert
		into andrew.andrew.Posts (PostId, PostText, PostTitle, PostDate)
		values (@PostId, @PostText, @PostTitle, GETDATE());
END
