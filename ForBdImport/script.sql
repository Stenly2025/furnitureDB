USE [master]
GO
/****** Object:  Database [furnituredb]    Script Date: 03.02.2021 14:45:09 ******/
CREATE DATABASE [furnituredb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'furnituredb', FILENAME = N'D:\SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\furnituredb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'furnituredb_log', FILENAME = N'D:\SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\furnituredb_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [furnituredb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [furnituredb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [furnituredb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [furnituredb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [furnituredb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [furnituredb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [furnituredb] SET ARITHABORT OFF 
GO
ALTER DATABASE [furnituredb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [furnituredb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [furnituredb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [furnituredb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [furnituredb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [furnituredb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [furnituredb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [furnituredb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [furnituredb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [furnituredb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [furnituredb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [furnituredb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [furnituredb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [furnituredb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [furnituredb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [furnituredb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [furnituredb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [furnituredb] SET RECOVERY FULL 
GO
ALTER DATABASE [furnituredb] SET  MULTI_USER 
GO
ALTER DATABASE [furnituredb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [furnituredb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [furnituredb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [furnituredb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [furnituredb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [furnituredb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'furnituredb', N'ON'
GO
ALTER DATABASE [furnituredb] SET QUERY_STORE = OFF
GO
USE [furnituredb]
GO
/****** Object:  Table [dbo].[Equipments]    Script Date: 03.02.2021 14:45:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[label] [varchar](50) NULL,
	[TypeEquipment] [varchar](50) NULL,
	[Characteristic] [varchar](50) NULL,
	[DateOfPurchase] [date] NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Equipments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Furniture]    Script Date: 03.02.2021 14:45:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Furniture](
	[Article] [varchar](50) NOT NULL,
	[Name] [varchar](150) NULL,
	[Unit] [varchar](50) NULL,
	[Count] [int] NULL,
	[OwnSupplier] [varchar](50) NULL,
	[Picture] [varbinary](50) NULL,
	[TypeFurniture] [varchar](50) NULL,
	[Price] [money] NULL,
	[Weight] [float] NULL,
 CONSTRAINT [PK_Furniture] PRIMARY KEY CLUSTERED 
(
	[Article] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Material]    Script Date: 03.02.2021 14:45:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material](
	[Article] [varchar](50) NOT NULL,
	[Name] [varchar](150) NULL,
	[Unit] [varchar](50) NULL,
	[Count] [int] NULL,
	[OwnSupplier] [varchar](50) NULL,
	[TypeMaterial] [varchar](125) NULL,
	[Picture] [varbinary](50) NULL,
	[Price] [float] NULL,
	[GOST] [varchar](50) NULL,
	[Length] [varchar](50) NULL,
	[Characteristic] [varchar](50) NULL,
 CONSTRAINT [PK_Material] PRIMARY KEY CLUSTERED 
(
	[Article] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 03.02.2021 14:45:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[Name] [varchar](50) NULL,
	[Product] [varchar](50) NULL,
	[Customer] [varchar](50) NULL,
	[Manager] [varchar](50) NULL,
	[Price] [money] NULL,
	[DeadLine] [date] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 03.02.2021 14:45:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Name] [varchar](50) NOT NULL,
	[Size] [varchar](50) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SpecificationFurniture]    Script Date: 03.02.2021 14:45:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpecificationFurniture](
	[Product] [varchar](50) NOT NULL,
	[Furniture] [varchar](50) NOT NULL,
	[Count] [int] NULL,
 CONSTRAINT [PK_SpecificationFurniture] PRIMARY KEY CLUSTERED 
(
	[Product] ASC,
	[Furniture] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SpecificationMaterial]    Script Date: 03.02.2021 14:45:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpecificationMaterial](
	[Product] [varchar](50) NOT NULL,
	[Material] [varchar](50) NOT NULL,
	[Count] [int] NULL,
 CONSTRAINT [PK_SpecificationMaterial] PRIMARY KEY CLUSTERED 
(
	[Product] ASC,
	[Material] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SpecificationOperation]    Script Date: 03.02.2021 14:45:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpecificationOperation](
	[Product] [varchar](50) NOT NULL,
	[Operation] [varchar](50) NOT NULL,
	[OrderNumber] [int] NOT NULL,
	[TypeEquipment] [varchar](50) NULL,
	[TimeOnOperation] [date] NULL,
 CONSTRAINT [PK_SpecificationOperation] PRIMARY KEY CLUSTERED 
(
	[Product] ASC,
	[Operation] ASC,
	[OrderNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SpecificationUnit]    Script Date: 03.02.2021 14:45:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpecificationUnit](
	[Product] [varchar](50) NOT NULL,
	[Unit] [varchar](50) NOT NULL,
	[Count] [int] NULL,
 CONSTRAINT [PK_SpecificationUnit] PRIMARY KEY CLUSTERED 
(
	[Product] ASC,
	[Unit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 03.02.2021 14:45:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[Name] [varchar](50) NOT NULL,
	[Address] [varchar](50) NULL,
	[DeliveryTime] [date] NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeEquipment]    Script Date: 03.02.2021 14:45:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeEquipment](
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TypeEquipment] PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 03.02.2021 14:45:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Login] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Role] [varchar](50) NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[MidName] [varchar](50) NULL,
	[Picture] [varbinary](max) NULL,
 CONSTRAINT [PK_Users_1] PRIMARY KEY CLUSTERED 
(
	[Login] ASC,
	[Password] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Equipments]  WITH CHECK ADD  CONSTRAINT [FK_Equipments_TypeEquipment] FOREIGN KEY([TypeEquipment])
REFERENCES [dbo].[TypeEquipment] ([Name])
GO
ALTER TABLE [dbo].[Equipments] CHECK CONSTRAINT [FK_Equipments_TypeEquipment]
GO
ALTER TABLE [dbo].[Furniture]  WITH CHECK ADD  CONSTRAINT [FK_Furniture_Supplier] FOREIGN KEY([OwnSupplier])
REFERENCES [dbo].[Supplier] ([Name])
GO
ALTER TABLE [dbo].[Furniture] CHECK CONSTRAINT [FK_Furniture_Supplier]
GO
ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [FK_Material_Supplier] FOREIGN KEY([OwnSupplier])
REFERENCES [dbo].[Supplier] ([Name])
GO
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [FK_Material_Supplier]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Order_Product] FOREIGN KEY([Product])
REFERENCES [dbo].[Product] ([Name])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Order_Product]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Order_Users] FOREIGN KEY([Customer], [Manager])
REFERENCES [dbo].[Users] ([Login], [Password])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Order_Users]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_SpecificationUnit] FOREIGN KEY([Name], [Size])
REFERENCES [dbo].[SpecificationUnit] ([Product], [Unit])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_SpecificationUnit]
GO
ALTER TABLE [dbo].[SpecificationFurniture]  WITH CHECK ADD  CONSTRAINT [FK_SpecificationFurniture_Furniture] FOREIGN KEY([Furniture])
REFERENCES [dbo].[Furniture] ([Article])
GO
ALTER TABLE [dbo].[SpecificationFurniture] CHECK CONSTRAINT [FK_SpecificationFurniture_Furniture]
GO
ALTER TABLE [dbo].[SpecificationFurniture]  WITH CHECK ADD  CONSTRAINT [FK_SpecificationFurniture_Product] FOREIGN KEY([Product])
REFERENCES [dbo].[Product] ([Name])
GO
ALTER TABLE [dbo].[SpecificationFurniture] CHECK CONSTRAINT [FK_SpecificationFurniture_Product]
GO
ALTER TABLE [dbo].[SpecificationMaterial]  WITH CHECK ADD  CONSTRAINT [FK_SpecificationMaterial_Material] FOREIGN KEY([Material])
REFERENCES [dbo].[Material] ([Article])
GO
ALTER TABLE [dbo].[SpecificationMaterial] CHECK CONSTRAINT [FK_SpecificationMaterial_Material]
GO
ALTER TABLE [dbo].[SpecificationMaterial]  WITH CHECK ADD  CONSTRAINT [FK_SpecificationMaterial_Product] FOREIGN KEY([Product])
REFERENCES [dbo].[Product] ([Name])
GO
ALTER TABLE [dbo].[SpecificationMaterial] CHECK CONSTRAINT [FK_SpecificationMaterial_Product]
GO
ALTER TABLE [dbo].[SpecificationOperation]  WITH CHECK ADD  CONSTRAINT [FK_SpecificationOperation_Product] FOREIGN KEY([Product])
REFERENCES [dbo].[Product] ([Name])
GO
ALTER TABLE [dbo].[SpecificationOperation] CHECK CONSTRAINT [FK_SpecificationOperation_Product]
GO
ALTER TABLE [dbo].[SpecificationOperation]  WITH CHECK ADD  CONSTRAINT [FK_SpecificationOperation_TypeEquipment] FOREIGN KEY([TypeEquipment])
REFERENCES [dbo].[TypeEquipment] ([Name])
GO
ALTER TABLE [dbo].[SpecificationOperation] CHECK CONSTRAINT [FK_SpecificationOperation_TypeEquipment]
GO
ALTER TABLE [dbo].[SpecificationUnit]  WITH CHECK ADD  CONSTRAINT [FK_SpecificationUnit_Product] FOREIGN KEY([Product])
REFERENCES [dbo].[Product] ([Name])
GO
ALTER TABLE [dbo].[SpecificationUnit] CHECK CONSTRAINT [FK_SpecificationUnit_Product]
GO
USE [master]
GO
ALTER DATABASE [furnituredb] SET  READ_WRITE 
GO
