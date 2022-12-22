CREATE DATABASE [geek_testDB]
GO
CREATE LOGIN [geek-test] WITH PASSWORD=N'123', DEFAULT_DATABASE=[geek_testDB]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [geek-test]
GO
USE [geek_testDB]
GO
CREATE USER [] FOR LOGIN [NewLogin]
GO
ALTER USER [NewUser] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [NewUser]
GO
-- Clean up
USE master
GO
DROP DATABASE [NewDatabase]
GO
DROP LOGIN [NewLogin]
GO
