USE [master]
GO
/****** Object:  Database [VegetableMarket]    Script Date: 3/12/2022 11:10:10 PM ******/
CREATE DATABASE [VegetableMarket]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'VegetableMarket', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\VegetableMarket.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'VegetableMarket_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\VegetableMarket_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [VegetableMarket] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [VegetableMarket].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [VegetableMarket] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [VegetableMarket] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [VegetableMarket] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [VegetableMarket] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [VegetableMarket] SET ARITHABORT OFF 
GO
ALTER DATABASE [VegetableMarket] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [VegetableMarket] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [VegetableMarket] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [VegetableMarket] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [VegetableMarket] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [VegetableMarket] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [VegetableMarket] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [VegetableMarket] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [VegetableMarket] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [VegetableMarket] SET  DISABLE_BROKER 
GO
ALTER DATABASE [VegetableMarket] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [VegetableMarket] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [VegetableMarket] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [VegetableMarket] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [VegetableMarket] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [VegetableMarket] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [VegetableMarket] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [VegetableMarket] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [VegetableMarket] SET  MULTI_USER 
GO
ALTER DATABASE [VegetableMarket] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [VegetableMarket] SET DB_CHAINING OFF 
GO
ALTER DATABASE [VegetableMarket] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [VegetableMarket] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [VegetableMarket] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [VegetableMarket] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [VegetableMarket] SET QUERY_STORE = OFF
GO
USE [VegetableMarket]
GO
/****** Object:  Table [dbo].[tblCategory]    Script Date: 3/12/2022 11:10:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCategory](
	[categoryID] [varchar](10) NOT NULL,
	[categoryName] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrder]    Script Date: 3/12/2022 11:10:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrder](
	[orderID] [varchar](20) NOT NULL,
	[orderDate] [date] NOT NULL,
	[total] [int] NOT NULL,
	[userID] [varchar](20) NULL,
	[status] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[orderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrderDetail]    Script Date: 3/12/2022 11:10:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrderDetail](
	[detailID] [varchar](10) NOT NULL,
	[price] [float] NOT NULL,
	[quantity] [int] NOT NULL,
	[orderID] [varchar](20) NULL,
	[productID] [varchar](20) NOT NULL,
	[status] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[detailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProduct]    Script Date: 3/12/2022 11:10:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProduct](
	[productID] [varchar](20) NOT NULL,
	[productName] [varchar](20) NOT NULL,
	[image] [varchar](1000) NOT NULL,
	[price] [float] NOT NULL,
	[quantity] [int] NOT NULL,
	[categoryID] [varchar](10) NOT NULL,
	[importDate] [date] NOT NULL,
	[usingDate] [date] NOT NULL,
	[status] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRoles]    Script Date: 3/12/2022 11:10:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRoles](
	[roleID] [varchar](5) NOT NULL,
	[roleName] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[roleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUsers]    Script Date: 3/12/2022 11:10:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUsers](
	[userID] [varchar](20) NOT NULL,
	[fullName] [varchar](30) NOT NULL,
	[password] [varchar](20) NOT NULL,
	[roleID] [varchar](5) NOT NULL,
	[address] [varchar](50) NOT NULL,
	[birthday] [date] NOT NULL,
	[phone] [varchar](11) NOT NULL,
	[mail] [varchar](30) NULL,
	[status] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblCategory] ([categoryID], [categoryName]) VALUES (N'C1', N'Water Spinach')
INSERT [dbo].[tblCategory] ([categoryID], [categoryName]) VALUES (N'C2', N'Vegetable Spinach')
INSERT [dbo].[tblCategory] ([categoryID], [categoryName]) VALUES (N'C3', N'Carrot')
INSERT [dbo].[tblCategory] ([categoryID], [categoryName]) VALUES (N'C4', N'Fruit')
INSERT [dbo].[tblCategory] ([categoryID], [categoryName]) VALUES (N'C5', N'Banana')
INSERT [dbo].[tblCategory] ([categoryID], [categoryName]) VALUES (N'C6', N'Tomato')
INSERT [dbo].[tblCategory] ([categoryID], [categoryName]) VALUES (N'C7', N'Water Melon')
GO
INSERT [dbo].[tblProduct] ([productID], [productName], [image], [price], [quantity], [categoryID], [importDate], [usingDate], [status]) VALUES (N'P1', N'Water Spinach', N'https://hongngochospital.vn/wp-content/uploads/2013/11/rau-muong.jpg', 20000, 10, N'C1', CAST(N'2022-03-10' AS Date), CAST(N'2022-04-10' AS Date), 1)
INSERT [dbo].[tblProduct] ([productID], [productName], [image], [price], [quantity], [categoryID], [importDate], [usingDate], [status]) VALUES (N'P2', N'Coconut', N'https://bloganchoi.com/wp-content/uploads/2019/07/loi-ich-qua-dua.jpg', 30000, 5, N'C4', CAST(N'2022-03-10' AS Date), CAST(N'2022-04-10' AS Date), 1)
INSERT [dbo].[tblProduct] ([productID], [productName], [image], [price], [quantity], [categoryID], [importDate], [usingDate], [status]) VALUES (N'P3', N'Carrot', N'https://everydayorganic.com.vn/data/news/3965/carot.02.jpg', 10000, 5, N'C3', CAST(N'2022-01-10' AS Date), CAST(N'2022-05-10' AS Date), 1)
INSERT [dbo].[tblProduct] ([productID], [productName], [image], [price], [quantity], [categoryID], [importDate], [usingDate], [status]) VALUES (N'P4', N'Banana', N'https://www.collinsdictionary.com/images/full/banana_64728013.jpg', 20000, 5, N'C5', CAST(N'2022-02-10' AS Date), CAST(N'2022-04-10' AS Date), 1)
INSERT [dbo].[tblProduct] ([productID], [productName], [image], [price], [quantity], [categoryID], [importDate], [usingDate], [status]) VALUES (N'P5', N'Tomato', N'https://upload.wikimedia.org/wikipedia/commons/8/89/Tomato_je.jpg', 30000, 6, N'C6', CAST(N'2022-01-10' AS Date), CAST(N'2022-06-10' AS Date), 1)
INSERT [dbo].[tblProduct] ([productID], [productName], [image], [price], [quantity], [categoryID], [importDate], [usingDate], [status]) VALUES (N'P6', N'Water Melon', N'https://www.gardeningknowhow.com/wp-content/uploads/2021/05/whole-and-slices-watermelon.jpg', 40000, 7, N'C7', CAST(N'2022-01-20' AS Date), CAST(N'2022-04-05' AS Date), 1)
INSERT [dbo].[tblProduct] ([productID], [productName], [image], [price], [quantity], [categoryID], [importDate], [usingDate], [status]) VALUES (N'P7', N'Pragant', N'https://csfood.vn/wp-content/uploads/2020/10/Tr%C3%A1i-Th%C6%A1m-M%E1%BA%ADt-T%C6%B0%C6%A1i-VietGap.png', 20000, 5, N'C4', CAST(N'2022-03-12' AS Date), CAST(N'2022-04-10' AS Date), 1)
GO
INSERT [dbo].[tblRoles] ([roleID], [roleName]) VALUES (N'AD', N'Admin')
INSERT [dbo].[tblRoles] ([roleID], [roleName]) VALUES (N'US', N'User')
GO
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [address], [birthday], [phone], [mail], [status]) VALUES (N'NL', N'Nhan Le', N'1', N'US', N'68 ABC', CAST(N'2001-01-01' AS Date), N'0999000999', N'nhanlh2001@gmail.com', 1)
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [address], [birthday], [phone], [mail], [status]) VALUES (N'PL', N'Phuc Le', N'1', N'AD', N'61 HTK', CAST(N'2001-06-14' AS Date), N'0938736574', N'phuclh1406@gmail.com', 1)
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [address], [birthday], [phone], [mail], [status]) VALUES (N'QL', N'Quan Le', N'1', N'US', N'64 HTM', CAST(N'2002-02-02' AS Date), N'0900000999', N'quanlh2002@gmail.com', 1)
GO
ALTER TABLE [dbo].[tblOrder]  WITH CHECK ADD FOREIGN KEY([userID])
REFERENCES [dbo].[tblUsers] ([userID])
GO
ALTER TABLE [dbo].[tblOrderDetail]  WITH CHECK ADD FOREIGN KEY([orderID])
REFERENCES [dbo].[tblOrder] ([orderID])
GO
ALTER TABLE [dbo].[tblOrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_tblOrderDetail_tblProduct] FOREIGN KEY([productID])
REFERENCES [dbo].[tblProduct] ([productID])
GO
ALTER TABLE [dbo].[tblOrderDetail] CHECK CONSTRAINT [FK_tblOrderDetail_tblProduct]
GO
ALTER TABLE [dbo].[tblProduct]  WITH CHECK ADD  CONSTRAINT [FK_tblProduct_tblCategory] FOREIGN KEY([categoryID])
REFERENCES [dbo].[tblCategory] ([categoryID])
GO
ALTER TABLE [dbo].[tblProduct] CHECK CONSTRAINT [FK_tblProduct_tblCategory]
GO
ALTER TABLE [dbo].[tblUsers]  WITH CHECK ADD  CONSTRAINT [FK_tblUsers_tblRoles] FOREIGN KEY([roleID])
REFERENCES [dbo].[tblRoles] ([roleID])
GO
ALTER TABLE [dbo].[tblUsers] CHECK CONSTRAINT [FK_tblUsers_tblRoles]
GO
USE [master]
GO
ALTER DATABASE [VegetableMarket] SET  READ_WRITE 
GO
