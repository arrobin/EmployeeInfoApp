USE [master]
GO
/****** Object:  Database [EmployeeInfoDB]    Script Date: 07/05/2015 22:08:13 ******/
CREATE DATABASE [EmployeeInfoDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EmployeeInfoDB', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\EmployeeInfoDB.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'EmployeeInfoDB_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\EmployeeInfoDB_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [EmployeeInfoDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EmployeeInfoDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EmployeeInfoDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EmployeeInfoDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EmployeeInfoDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EmployeeInfoDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EmployeeInfoDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [EmployeeInfoDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EmployeeInfoDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [EmployeeInfoDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EmployeeInfoDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EmployeeInfoDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EmployeeInfoDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EmployeeInfoDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EmployeeInfoDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EmployeeInfoDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EmployeeInfoDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EmployeeInfoDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EmployeeInfoDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EmployeeInfoDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EmployeeInfoDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EmployeeInfoDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EmployeeInfoDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EmployeeInfoDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EmployeeInfoDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EmployeeInfoDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EmployeeInfoDB] SET  MULTI_USER 
GO
ALTER DATABASE [EmployeeInfoDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EmployeeInfoDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EmployeeInfoDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EmployeeInfoDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [EmployeeInfoDB]
GO
/****** Object:  Table [dbo].[t_employee]    Script Date: 07/05/2015 22:08:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_employee](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[address] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[salary] [varchar](50) NOT NULL,
 CONSTRAINT [PK_t_employee] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[t_employee] ON 

INSERT [dbo].[t_employee] ([id], [name], [address], [email], [salary]) VALUES (1, N'robin', N'mirbagh', N'robin@gmail.com', N'50000')
INSERT [dbo].[t_employee] ([id], [name], [address], [email], [salary]) VALUES (2, N'hridoy', N'mirbagh', N'hridoy@gmail.com', N'30000')
INSERT [dbo].[t_employee] ([id], [name], [address], [email], [salary]) VALUES (3, N'abir', N'faridpur', N'abir@gmail.com', N'20000')
SET IDENTITY_INSERT [dbo].[t_employee] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_t_employee]    Script Date: 07/05/2015 22:08:14 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_t_employee] ON [dbo].[t_employee]
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [EmployeeInfoDB] SET  READ_WRITE 
GO
