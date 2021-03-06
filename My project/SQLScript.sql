USE [master]
GO
/****** Object:  Database [My Project]    Script Date: 9/27/2021 11:01:48 AM ******/
CREATE DATABASE [My Project]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'My Project', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\My Project.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'My Project_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\My Project_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [My Project] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [My Project].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [My Project] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [My Project] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [My Project] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [My Project] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [My Project] SET ARITHABORT OFF 
GO
ALTER DATABASE [My Project] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [My Project] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [My Project] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [My Project] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [My Project] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [My Project] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [My Project] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [My Project] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [My Project] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [My Project] SET  DISABLE_BROKER 
GO
ALTER DATABASE [My Project] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [My Project] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [My Project] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [My Project] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [My Project] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [My Project] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [My Project] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [My Project] SET RECOVERY FULL 
GO
ALTER DATABASE [My Project] SET  MULTI_USER 
GO
ALTER DATABASE [My Project] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [My Project] SET DB_CHAINING OFF 
GO
ALTER DATABASE [My Project] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [My Project] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [My Project] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [My Project] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'My Project', N'ON'
GO
ALTER DATABASE [My Project] SET QUERY_STORE = OFF
GO
USE [My Project]
GO
/****** Object:  Table [dbo].[Body_of_Water]    Script Date: 9/27/2021 11:01:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Body_of_Water](
	[Body_of_WaterID] [int] IDENTITY(1,1) NOT NULL,
	[Type_of_Water] [nchar](20) NOT NULL,
 CONSTRAINT [PK_Body_of_Water] PRIMARY KEY CLUSTERED 
(
	[Body_of_WaterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fish]    Script Date: 9/27/2021 11:01:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fish](
	[FishID] [int] IDENTITY(1,1) NOT NULL,
	[Fish_Name] [nchar](20) NOT NULL,
	[Body_of_WaterID] [int] NOT NULL,
	[LureID] [int] NOT NULL,
 CONSTRAINT [PK_Fish] PRIMARY KEY CLUSTERED 
(
	[FishID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lure]    Script Date: 9/27/2021 11:01:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lure](
	[LureID] [int] IDENTITY(1,1) NOT NULL,
	[Name_of_Lure] [nchar](20) NOT NULL,
 CONSTRAINT [PK_Lure] PRIMARY KEY CLUSTERED 
(
	[LureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Body_of_Water] ON 

INSERT [dbo].[Body_of_Water] ([Body_of_WaterID], [Type_of_Water]) VALUES (1, N'Lake                ')
INSERT [dbo].[Body_of_Water] ([Body_of_WaterID], [Type_of_Water]) VALUES (2, N'Stream              ')
INSERT [dbo].[Body_of_Water] ([Body_of_WaterID], [Type_of_Water]) VALUES (3, N'River               ')
SET IDENTITY_INSERT [dbo].[Body_of_Water] OFF
GO
SET IDENTITY_INSERT [dbo].[Fish] ON 

INSERT [dbo].[Fish] ([FishID], [Fish_Name], [Body_of_WaterID], [LureID]) VALUES (1, N'Bass                ', 3, 4)
INSERT [dbo].[Fish] ([FishID], [Fish_Name], [Body_of_WaterID], [LureID]) VALUES (2, N'Walleye             ', 3, 3)
INSERT [dbo].[Fish] ([FishID], [Fish_Name], [Body_of_WaterID], [LureID]) VALUES (3, N'Trout               ', 2, 1)
INSERT [dbo].[Fish] ([FishID], [Fish_Name], [Body_of_WaterID], [LureID]) VALUES (4, N'Northern Pike       ', 3, 5)
INSERT [dbo].[Fish] ([FishID], [Fish_Name], [Body_of_WaterID], [LureID]) VALUES (5, N'Pan Fish            ', 1, 2)
SET IDENTITY_INSERT [dbo].[Fish] OFF
GO
SET IDENTITY_INSERT [dbo].[Lure] ON 

INSERT [dbo].[Lure] ([LureID], [Name_of_Lure]) VALUES (1, N'Spinner             ')
INSERT [dbo].[Lure] ([LureID], [Name_of_Lure]) VALUES (2, N'Jig                 ')
INSERT [dbo].[Lure] ([LureID], [Name_of_Lure]) VALUES (3, N'Crank Bait          ')
INSERT [dbo].[Lure] ([LureID], [Name_of_Lure]) VALUES (4, N'Plug                ')
INSERT [dbo].[Lure] ([LureID], [Name_of_Lure]) VALUES (5, N'Spoon               ')
SET IDENTITY_INSERT [dbo].[Lure] OFF
GO
USE [master]
GO
ALTER DATABASE [My Project] SET  READ_WRITE 
GO
