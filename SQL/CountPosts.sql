USE [andrew]
GO
/****** Object:  UserDefinedFunction [andrew].[CountPosts] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Andrew B
-- Create date: 7/18/2015
-- Description:	Counts posts
-- =============================================
ALTER FUNCTION [andrew].[CountPosts]()
RETURNS int
AS
BEGIN
	RETURN (SELECT count(*) as Counting from andrew.andrew.Posts);
END
