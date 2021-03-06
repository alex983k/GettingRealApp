USE [EJL87_DB]
GO
/****** Object:  StoredProcedure [db_owner].[Insert_user]    Script Date: 12/01/2016 14:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER PROCEDURE [db_owner].[Insert_user] (
		   @PlayerFirstName nvarchar(25),
		   @PlayerLastName nvarchar(25),
		   @PlayerEmail nvarchar(25),
		   @PlayerPhone nvarchar(25),
		   @PlayerUserName nvarchar(25),
		   @PlayerPassword nvarchar(25)
) AS
BEGIN
INSERT INTO PlayerList( PlayerFirstName, PlayerLastName, PlayerEmail, PlayerPhone) VALUES (@PlayerFirstName, @PlayerLastName, @PlayerEmail, @PlayerPhone);

INSERT INTO PlayerLogin (PlayerUserName, PlayerPassword) VALUES (@PlayerUserName, @PlayerPassword);
END