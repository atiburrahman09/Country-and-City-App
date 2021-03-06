USE [master]
GO
/****** Object:  Database [CountryAndCityDB]    Script Date: 6/15/2015 3:16:04 AM ******/
CREATE DATABASE [CountryAndCityDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CountryAndCityDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\CountryAndCityDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CountryAndCityDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\CountryAndCityDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CountryAndCityDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CountryAndCityDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CountryAndCityDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CountryAndCityDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CountryAndCityDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CountryAndCityDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CountryAndCityDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [CountryAndCityDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CountryAndCityDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [CountryAndCityDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CountryAndCityDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CountryAndCityDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CountryAndCityDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CountryAndCityDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CountryAndCityDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CountryAndCityDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CountryAndCityDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CountryAndCityDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CountryAndCityDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CountryAndCityDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CountryAndCityDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CountryAndCityDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CountryAndCityDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CountryAndCityDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CountryAndCityDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CountryAndCityDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CountryAndCityDB] SET  MULTI_USER 
GO
ALTER DATABASE [CountryAndCityDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CountryAndCityDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CountryAndCityDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CountryAndCityDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [CountryAndCityDB]
GO
/****** Object:  Table [dbo].[tbl_city]    Script Date: 6/15/2015 3:16:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_city](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [varchar](50) NOT NULL,
	[CityAbout] [varchar](50) NOT NULL,
	[NoOfDwellers] [int] NOT NULL,
	[Location] [varchar](50) NOT NULL,
	[Weather] [varchar](50) NOT NULL,
	[CountryId] [int] NOT NULL,
 CONSTRAINT [PK_tbl_city] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_country]    Script Date: 6/15/2015 3:16:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_country](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [varchar](50) NOT NULL,
	[CountryAbout] [varchar](max) NOT NULL,
 CONSTRAINT [PK_tbl_country] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_city] ON 

INSERT [dbo].[tbl_city] ([Id], [CityName], [CityAbout], [NoOfDwellers], [Location], [Weather], [CountryId]) VALUES (1, N'Dhaka', N'Faltu City', 25000000, N'30*20$', N'Summer', 1)
INSERT [dbo].[tbl_city] ([Id], [CityName], [CityAbout], [NoOfDwellers], [Location], [Weather], [CountryId]) VALUES (2, N'Rajshahi', N'Natural City of Banglades', 25800, N'East', N'Hot', 1)
INSERT [dbo].[tbl_city] ([Id], [CityName], [CityAbout], [NoOfDwellers], [Location], [Weather], [CountryId]) VALUES (3, N'Bogra', N'Highly Upgraded City.', 20500, N'North', N'Hot', 1)
INSERT [dbo].[tbl_city] ([Id], [CityName], [CityAbout], [NoOfDwellers], [Location], [Weather], [CountryId]) VALUES (4, N'Berlin', N'Heart of Germany', 65000, N'West', N'Cold', 5)
SET IDENTITY_INSERT [dbo].[tbl_city] OFF
SET IDENTITY_INSERT [dbo].[tbl_country] ON 

INSERT [dbo].[tbl_country] ([Id], [CountryName], [CountryAbout]) VALUES (1, N'Bangladesh', N'Poor Country')
INSERT [dbo].[tbl_country] ([Id], [CountryName], [CountryAbout]) VALUES (2, N'Dubai', N'Most Expensive Country')
INSERT [dbo].[tbl_country] ([Id], [CountryName], [CountryAbout]) VALUES (3, N'Norway', N'Peaceful Country')
INSERT [dbo].[tbl_country] ([Id], [CountryName], [CountryAbout]) VALUES (4, N'Thialand', N'Open Secret Country')
INSERT [dbo].[tbl_country] ([Id], [CountryName], [CountryAbout]) VALUES (5, N'Germany', N'Easy access for Education')
INSERT [dbo].[tbl_country] ([Id], [CountryName], [CountryAbout]) VALUES (6, N'Japan', N'<p><em><strong>Most Educated Country</strong></em></p>')
SET IDENTITY_INSERT [dbo].[tbl_country] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_tbl_city]    Script Date: 6/15/2015 3:16:05 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_tbl_city] ON [dbo].[tbl_city]
(
	[CityName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_tbl_country]    Script Date: 6/15/2015 3:16:05 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_tbl_country] ON [dbo].[tbl_country]
(
	[CountryName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_city]  WITH CHECK ADD  CONSTRAINT [FK_tbl_city_tbl_country] FOREIGN KEY([CountryId])
REFERENCES [dbo].[tbl_country] ([Id])
GO
ALTER TABLE [dbo].[tbl_city] CHECK CONSTRAINT [FK_tbl_city_tbl_country]
GO
USE [master]
GO
ALTER DATABASE [CountryAndCityDB] SET  READ_WRITE 
GO
