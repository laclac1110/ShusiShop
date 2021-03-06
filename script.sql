USE [master]
GO
/****** Object:  Database [N2SushiShop10]    Script Date: 20/6/2021 17:55:22 ******/
CREATE DATABASE [N2SushiShop10]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Lab231Shusi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Lab231Shusi.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Lab231Shusi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Lab231Shusi_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [N2SushiShop10] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [N2SushiShop10].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [N2SushiShop10] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [N2SushiShop10] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [N2SushiShop10] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [N2SushiShop10] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [N2SushiShop10] SET ARITHABORT OFF 
GO
ALTER DATABASE [N2SushiShop10] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [N2SushiShop10] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [N2SushiShop10] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [N2SushiShop10] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [N2SushiShop10] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [N2SushiShop10] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [N2SushiShop10] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [N2SushiShop10] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [N2SushiShop10] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [N2SushiShop10] SET  DISABLE_BROKER 
GO
ALTER DATABASE [N2SushiShop10] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [N2SushiShop10] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [N2SushiShop10] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [N2SushiShop10] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [N2SushiShop10] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [N2SushiShop10] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [N2SushiShop10] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [N2SushiShop10] SET RECOVERY FULL 
GO
ALTER DATABASE [N2SushiShop10] SET  MULTI_USER 
GO
ALTER DATABASE [N2SushiShop10] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [N2SushiShop10] SET DB_CHAINING OFF 
GO
ALTER DATABASE [N2SushiShop10] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [N2SushiShop10] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [N2SushiShop10] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [N2SushiShop10] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'N2SushiShop10', N'ON'
GO
ALTER DATABASE [N2SushiShop10] SET QUERY_STORE = OFF
GO
USE [N2SushiShop10]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 20/6/2021 17:55:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[idContact] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[report] [nvarchar](max) NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[idContact] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 20/6/2021 17:55:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Username] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NULL,
	[tenKhach] [nvarchar](50) NULL,
	[sdt] [nvarchar](11) NULL,
	[diachi] [nvarchar](50) NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhGia]    Script Date: 20/6/2021 17:55:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGia](
	[idSp] [nvarchar](50) NOT NULL,
	[SoSao] [float] NULL,
	[Comment] [nvarchar](max) NULL,
	[luotdanhgia] [int] NULL,
 CONSTRAINT [PK_DanhGia] PRIMARY KEY CLUSTERED 
(
	[idSp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 20/6/2021 17:55:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[idDonHang] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[TrangThai] [int] NOT NULL,
	[GhiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[idDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Forum]    Script Date: 20/6/2021 17:55:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Forum](
	[idChat] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Chat] [nvarchar](max) NULL,
 CONSTRAINT [PK_Forum] PRIMARY KEY CLUSTERED 
(
	[idChat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonChiTiet]    Script Date: 20/6/2021 17:55:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonChiTiet](
	[idHDCT] [int] IDENTITY(1,1) NOT NULL,
	[idDonHang] [int] NOT NULL,
	[idSp] [nvarchar](50) NOT NULL,
	[soluong] [int] NOT NULL,
 CONSTRAINT [PK_HoaDonChiTiet] PRIMARY KEY CLUSTERED 
(
	[idHDCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiHang]    Script Date: 20/6/2021 17:55:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiHang](
	[idLoaiHang] [nvarchar](50) NOT NULL,
	[tenLoaiHang] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LoaiHang] PRIMARY KEY CLUSTERED 
(
	[idLoaiHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 20/6/2021 17:55:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[isAdmin] [bit] NOT NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 20/6/2021 17:55:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[idSp] [nvarchar](50) NOT NULL,
	[tenSp] [nvarchar](50) NOT NULL,
	[dongia] [float] NULL,
	[idLoaiHang] [nvarchar](50) NOT NULL,
	[image] [nvarchar](max) NULL,
	[slmua] [int] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[idSp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([idContact], [Username], [Name], [email], [report], [TrangThai]) VALUES (1, N'kh1', N'Khánh', N'khsanh@gmail,com', N'Test bằng main', 0)
INSERT [dbo].[Contact] ([idContact], [Username], [Name], [email], [report], [TrangThai]) VALUES (2, N'kh1', N'Từ Nhật Khánh', N'khanhtu2000@gmail.com', N'Test bằng jsp', 1)
SET IDENTITY_INSERT [dbo].[Contact] OFF
GO
INSERT [dbo].[Customer] ([Username], [email], [tenKhach], [sdt], [diachi]) VALUES (N'admin', N'laclac@gmail.com', N'Admin', N'0123546954', N'DN')
INSERT [dbo].[Customer] ([Username], [email], [tenKhach], [sdt], [diachi]) VALUES (N'dang', N'danghhde140112@fpt.edu.vn', N'Hải Đăng', N'0465284612', N'QB')
INSERT [dbo].[Customer] ([Username], [email], [tenKhach], [sdt], [diachi]) VALUES (N'gv', N'hihpas@gmail.com', N'Thầy Sơn', N'01246853642', N'Không có')
INSERT [dbo].[Customer] ([Username], [email], [tenKhach], [sdt], [diachi]) VALUES (N'kaka', N'oinbioas@gmail.com', N'QB', N'01245135264', N'QB')
INSERT [dbo].[Customer] ([Username], [email], [tenKhach], [sdt], [diachi]) VALUES (N'kh1', N'scbakjbsigb@gmail.com', N'Khách Hàng', N'01245236524', N'DN')
INSERT [dbo].[Customer] ([Username], [email], [tenKhach], [sdt], [diachi]) VALUES (N'kh2', N'sakuraa@gmail.com', N'Anh Đẹp Trai', N'0125468357', N'QN')
INSERT [dbo].[Customer] ([Username], [email], [tenKhach], [sdt], [diachi]) VALUES (N'kh3', N'akshoaisbkj@gmail.com', N'SN', N'01245168635', N'SN')
INSERT [dbo].[Customer] ([Username], [email], [tenKhach], [sdt], [diachi]) VALUES (N'khanh', N'khanhtnde140134@fpt.edu.vn', N'Nhật Khánh', N'0763020794', N'QB')
INSERT [dbo].[Customer] ([Username], [email], [tenKhach], [sdt], [diachi]) VALUES (N'lam', N'lamdqde140039@fpt.edu.vn', N'Quang Lâm', N'0765412365', N'QN')
INSERT [dbo].[Customer] ([Username], [email], [tenKhach], [sdt], [diachi]) VALUES (N'thanh', N'thanhnpnde140120@fpt.edu.vn', N'Ngọc Thành', N'0345216854', N'QB')
GO
INSERT [dbo].[DanhGia] ([idSp], [SoSao], [Comment], [luotdanhgia]) VALUES (N'Aqua01', 0, N'', 1)
INSERT [dbo].[DanhGia] ([idSp], [SoSao], [Comment], [luotdanhgia]) VALUES (N'Bm01', 5, N'Quá tuyệt cho 1 món ăn
', 1)
INSERT [dbo].[DanhGia] ([idSp], [SoSao], [Comment], [luotdanhgia]) VALUES (N'Bohuc01', 0, N'', 0)
INSERT [dbo].[DanhGia] ([idSp], [SoSao], [Comment], [luotdanhgia]) VALUES (N'Ca04', 0, N'', 0)
INSERT [dbo].[DanhGia] ([idSp], [SoSao], [Comment], [luotdanhgia]) VALUES (N'Ca05', 0, N'', 1)
INSERT [dbo].[DanhGia] ([idSp], [SoSao], [Comment], [luotdanhgia]) VALUES (N'Ca06', 0, N'', 0)
INSERT [dbo].[DanhGia] ([idSp], [SoSao], [Comment], [luotdanhgia]) VALUES (N'Salad01', 0, N'', 0)
INSERT [dbo].[DanhGia] ([idSp], [SoSao], [Comment], [luotdanhgia]) VALUES (N'Salad02', 4, N',', 1)
INSERT [dbo].[DanhGia] ([idSp], [SoSao], [Comment], [luotdanhgia]) VALUES (N'Salad03', 0, N'', 0)
INSERT [dbo].[DanhGia] ([idSp], [SoSao], [Comment], [luotdanhgia]) VALUES (N'Salad04', 0, N'', 0)
INSERT [dbo].[DanhGia] ([idSp], [SoSao], [Comment], [luotdanhgia]) VALUES (N'Salad05', 4.3333334922790527, N',,,', 3)
INSERT [dbo].[DanhGia] ([idSp], [SoSao], [Comment], [luotdanhgia]) VALUES (N'Sashimi01', 3.9, N'Ngon', 4)
INSERT [dbo].[DanhGia] ([idSp], [SoSao], [Comment], [luotdanhgia]) VALUES (N'Sashimi03', 0, N'', 0)
INSERT [dbo].[DanhGia] ([idSp], [SoSao], [Comment], [luotdanhgia]) VALUES (N'Sup04', 4.4, N'Ok', 5)
INSERT [dbo].[DanhGia] ([idSp], [SoSao], [Comment], [luotdanhgia]) VALUES (N'Sushi01', 4.0666666030883789, N'Không gì có thể tả được,Tuyệt vời,Tuyệt vời,Rất ngon,Rất ngon', 6)
INSERT [dbo].[DanhGia] ([idSp], [SoSao], [Comment], [luotdanhgia]) VALUES (N'Sushi02', 4.4, N'Ngon', 8)
INSERT [dbo].[DanhGia] ([idSp], [SoSao], [Comment], [luotdanhgia]) VALUES (N'Sushi03', 4.25, N'Đã ngon lại còn rẻ,Tuyệt vời,Ngon', 4)
INSERT [dbo].[DanhGia] ([idSp], [SoSao], [Comment], [luotdanhgia]) VALUES (N'Sushi05', 4, N',', 1)
INSERT [dbo].[DanhGia] ([idSp], [SoSao], [Comment], [luotdanhgia]) VALUES (N'Tem01', 4.2, N'Ok', 6)
INSERT [dbo].[DanhGia] ([idSp], [SoSao], [Comment], [luotdanhgia]) VALUES (N'Tem02', 4, N',', 1)
INSERT [dbo].[DanhGia] ([idSp], [SoSao], [Comment], [luotdanhgia]) VALUES (N'Tra01', 4, N'Đẹp mắt,Hàng ngon bổ rẻ,Hơi nhiều đường,Ngon bổ rẻ', 4)
INSERT [dbo].[DanhGia] ([idSp], [SoSao], [Comment], [luotdanhgia]) VALUES (N'Tra02', 0, N'', 0)
INSERT [dbo].[DanhGia] ([idSp], [SoSao], [Comment], [luotdanhgia]) VALUES (N'Tra03', 0, N'', 0)
GO
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([idDonHang], [Username], [TrangThai], [GhiChu]) VALUES (1, N'kh1', 1, N'Đơn hàng đầu tiên')
INSERT [dbo].[DonHang] ([idDonHang], [Username], [TrangThai], [GhiChu]) VALUES (2, N'kh2', 0, NULL)
INSERT [dbo].[DonHang] ([idDonHang], [Username], [TrangThai], [GhiChu]) VALUES (3, N'kh1', 0, N'')
INSERT [dbo].[DonHang] ([idDonHang], [Username], [TrangThai], [GhiChu]) VALUES (4, N'kh3', 0, N'')
INSERT [dbo].[DonHang] ([idDonHang], [Username], [TrangThai], [GhiChu]) VALUES (8, N'admin', 1, N'Oke nha')
INSERT [dbo].[DonHang] ([idDonHang], [Username], [TrangThai], [GhiChu]) VALUES (9, N'admin', 0, NULL)
SET IDENTITY_INSERT [dbo].[DonHang] OFF
GO
SET IDENTITY_INSERT [dbo].[Forum] ON 

INSERT [dbo].[Forum] ([idChat], [Username], [Chat]) VALUES (1, N'kh1', N'321')
INSERT [dbo].[Forum] ([idChat], [Username], [Chat]) VALUES (2, N'kh1', N'65132')
INSERT [dbo].[Forum] ([idChat], [Username], [Chat]) VALUES (3, N'kh2', N'6513')
INSERT [dbo].[Forum] ([idChat], [Username], [Chat]) VALUES (4, N'kh3', N'hihi')
INSERT [dbo].[Forum] ([idChat], [Username], [Chat]) VALUES (5, N'admin', N'test')
INSERT [dbo].[Forum] ([idChat], [Username], [Chat]) VALUES (6, N'kh1', N'Test trên jsp')
INSERT [dbo].[Forum] ([idChat], [Username], [Chat]) VALUES (7, N'khanh', N'Thử trên acc admin')
SET IDENTITY_INSERT [dbo].[Forum] OFF
GO
SET IDENTITY_INSERT [dbo].[HoaDonChiTiet] ON 

INSERT [dbo].[HoaDonChiTiet] ([idHDCT], [idDonHang], [idSp], [soluong]) VALUES (6, 2, N'Pepsi01', 2)
INSERT [dbo].[HoaDonChiTiet] ([idHDCT], [idDonHang], [idSp], [soluong]) VALUES (7, 2, N'Sushi02', 2)
INSERT [dbo].[HoaDonChiTiet] ([idHDCT], [idDonHang], [idSp], [soluong]) VALUES (9, 2, N'Ca02', 1)
INSERT [dbo].[HoaDonChiTiet] ([idHDCT], [idDonHang], [idSp], [soluong]) VALUES (21, 1, N'Ca05', 1)
INSERT [dbo].[HoaDonChiTiet] ([idHDCT], [idDonHang], [idSp], [soluong]) VALUES (23, 1, N'Tra05', 1)
INSERT [dbo].[HoaDonChiTiet] ([idHDCT], [idDonHang], [idSp], [soluong]) VALUES (26, 3, N'Sashimi03', 1)
INSERT [dbo].[HoaDonChiTiet] ([idHDCT], [idDonHang], [idSp], [soluong]) VALUES (27, 4, N'Ca02', 1)
INSERT [dbo].[HoaDonChiTiet] ([idHDCT], [idDonHang], [idSp], [soluong]) VALUES (28, 4, N'Ca01', 1)
INSERT [dbo].[HoaDonChiTiet] ([idHDCT], [idDonHang], [idSp], [soluong]) VALUES (29, 8, N'Bm01', 1)
INSERT [dbo].[HoaDonChiTiet] ([idHDCT], [idDonHang], [idSp], [soluong]) VALUES (30, 8, N'Tra02', 1)
INSERT [dbo].[HoaDonChiTiet] ([idHDCT], [idDonHang], [idSp], [soluong]) VALUES (31, 3, N'Tra02', 1)
INSERT [dbo].[HoaDonChiTiet] ([idHDCT], [idDonHang], [idSp], [soluong]) VALUES (32, 9, N'Ca06', 1)
SET IDENTITY_INSERT [dbo].[HoaDonChiTiet] OFF
GO
INSERT [dbo].[LoaiHang] ([idLoaiHang], [tenLoaiHang]) VALUES (N'af', N'Sashimi Sushi')
INSERT [dbo].[LoaiHang] ([idLoaiHang], [tenLoaiHang]) VALUES (N'd01', N'Nước Đóng Chai')
INSERT [dbo].[LoaiHang] ([idLoaiHang], [tenLoaiHang]) VALUES (N'd02', N'Nước Pha Chế')
INSERT [dbo].[LoaiHang] ([idLoaiHang], [tenLoaiHang]) VALUES (N'f01', N'Khai Vị')
INSERT [dbo].[LoaiHang] ([idLoaiHang], [tenLoaiHang]) VALUES (N'f02', N'Món Nướng')
INSERT [dbo].[LoaiHang] ([idLoaiHang], [tenLoaiHang]) VALUES (N'f04', N'Món Chiên')
INSERT [dbo].[LoaiHang] ([idLoaiHang], [tenLoaiHang]) VALUES (N'f05', N'Cơm. Cháo')
GO
INSERT [dbo].[Login] ([Username], [Password], [isAdmin]) VALUES (N'admin', N'132', 1)
INSERT [dbo].[Login] ([Username], [Password], [isAdmin]) VALUES (N'gv', N'123', 0)
INSERT [dbo].[Login] ([Username], [Password], [isAdmin]) VALUES (N'kaka', N'123', 0)
INSERT [dbo].[Login] ([Username], [Password], [isAdmin]) VALUES (N'kh1', N'111', 0)
INSERT [dbo].[Login] ([Username], [Password], [isAdmin]) VALUES (N'kh2', N'123', 0)
INSERT [dbo].[Login] ([Username], [Password], [isAdmin]) VALUES (N'kh3', N'123', 0)
INSERT [dbo].[Login] ([Username], [Password], [isAdmin]) VALUES (N'khanh', N'111', 1)
INSERT [dbo].[Login] ([Username], [Password], [isAdmin]) VALUES (N'lam', N'123', 1)
GO
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Aqua01', N'Nuớc lọc Aquavina', 15000, N'd01', N'Aqua01', 0)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Bm01', N'Bánh Mỳ Nướng Bơ Tỏi', 88000, N'f01', N'Bm01', 5)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Bohuc01', N'Nước Bò húc RedBull', 25000, N'd01', N'Bohuc01', 4)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Ca01', N'Trứng Cá Tuyết Nướng', 228000, N'f02', N'Ca01', 6)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Ca02', N'Đầu Cá Hồi Nướng Muối', 228000, N'f02', N'Ca02', 3)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Ca03', N'Cá Thu Đao Nướng Muối', 180000, N'f02', N'Ca03', 14)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Ca04', N'Cá Hồi Nướng Nấm', 288000, N'f02', N'Ca04', 5)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Ca05', N'Cá Sống Tổng Hợp (12 Loại)', 930000, N'af', N'Ca05', 6)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Ca06', N'Cá Sống Tổng Hợp (10 Loại)', 780000, N'af', N'Ca06', 2)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Ca07', N'Cá Sống Tổng Hợp (8 Loại)', 680000, N'af', N'Ca07', 1)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Ca08', N'Cá Hồi Sống', 780000, N'af', N'Ca08', 4)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Ca09', N'Cá Thu Tẩm Bột Cà Mỳ Rán', 188000, N'f04', N'Ca09', 5)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Chao01', N'Cháo Ngao', 45000, N'f05', N'Chao01', 8)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Chao02', N'Cháo Hào', 48000, N'f05', N'Chao02', 9)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Chao03', N'Cháo Cua', 48000, N'f05', N'Chao03', 6)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Chao04', N'Cháo Cá Hồi', 128000, N'f05', N'Chao04', 3)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Coca01', N'Nước Coca Cola Chai', 20000, N'd01', N'Coca01', 15)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Coca02', N'Nước Coca Cola Lon', 20000, N'd01', N'Coca02', 14)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Com01', N'Cơm Thịt Lợn Nhật Nướng', 198000, N'f05', N'Com01', 3)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Com02', N'Cơm Kimchi Thịt Lợn Nhật Nồi Đá', 208000, N'f05', N'Com02', 6)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Com03', N'Cơm Sushi Chay Tổng Hợp Phục Vụ Kèm Súp Miso', 238000, N'f05', N'Com03', 3)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Com04', N'Thịt Gà Nướng Sốt Teri Đặt Lên Bát Cơm', 168000, N'f05', N'Com04', 2)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Com05', N'Cơm Rang Thập Cẩm', 188000, N'f05', N'Com05', 5)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Heo01', N'Thịt Lợn Nhật Cuộn Kimchi Xiên Nướng', 138000, N'f02', N'Heo01', 4)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Heo02', N'Xúc Xích Lợn Nhật', 188000, N'f02', N'Heo02', 6)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Heo03', N'Thịt Hun Khói Cuộn Tôm Nướng', 158000, N'f02', N'Heo03', 8)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Heo04', N'Thịt Hun Khói Cuộn Măng Tây Nướng Muối', 128000, N'f02', N'Heo04', 5)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Heo05', N'Thịt Ba Chỉ Nướng Sốt Miso', 138000, N'f02', N'Heo05', 1)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Heo06', N'Lưỡi Lợn Nướng Muối Hoăc Sốt Teri', 118000, N'f02', N'Heo06', 3)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Heo07', N'Thịt Lợn Nhật Tẩm Bột Cà Mỳ Rán', 208000, N'f04', N'Heo07', 8)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Pepsi01', N'Nước Pepsi Chai', 20000, N'd01', N'Pepsi01', 5)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Pepsi02', N'Nước Pepsi Lon', 20000, N'd01', N'Pepsi02', 9)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Salad01', N'Salad Xoài Với Trứng Cua Đỏ', 168000, N'f01', N'Salad01', 7)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Salad02', N'Salad Thịt Bò Úc Thái Lát Nướng', 220000, N'f01', N'Salad02', 8)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Salad03', N'Salad Tôm Và Cá Ngừ', 188000, N'f01', N'Salad03', 5)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Salad04', N'Salad Ceasar Với Cá Hồi Hun Khói', 188000, N'f01', N'Salad04', 2)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Salad05', N'Salad Trứng Cua', 168000, N'f01', N'Salad05', 4)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Sashimi01', N'Bào Ngư Nhật Bản Sashimi', 2800000, N'af', N'Sashimi01', 5)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Sashimi02', N'Bạch Tuộc Ướp Wasabi', 138000, N'af', N'Sashimi02', 8)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Sashimi03', N'Bạch Tuộc Trộn Giấm', 178000, N'af', N'Sashimi03', 11)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Sup01', N'Súp Trứng Rong Biển', 48000, N'f01', N'Sup01', 5)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Sup02', N'Súp Miso Ngao', 68000, N'f01', N'Sup02', 15)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Sup03', N'Súp Hầm Hải Sản', 118000, N'f01', N'Sup03', 16)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Sup04', N'Súp Nấm Shimegi Hải Sản Kiểu Nhật', 238000, N'f01', N'Sup04', 34)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Sushi01', N'Mỳ Udon Đặc Biệt Với Sushi Và Sashimi Tổng Hợp', 328000, N'af', N'Sushi01', 40)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Sushi02', N'Sashimi Tổng Hợp Thái Lựu Đặt Lên Bát Cơm Sushi', 208000, N'af', N'Sushi02', 14)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Sushi03', N'Cơm Sushi Tổng Hợp Phục Vụ Kèm Súp Miso (12 Loại)', 400000, N'af', N'Sushi03', 26)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Sushi04', N'Cơm Sushi Tổng Hợp Phục Vụ Kèm Súp Miso (8 Loại)', 300000, N'af', N'Sushi04', 15)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Sushi05', N'Cơm Sushi Tổng Hợp Phục Vụ Kèm Súp Miso (18 Loại)', 599000, N'af', N'Sushi05', 34)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Tem01', N'Tempura Tổng Hợp', 208000, N'f04', N'Tem01', 9)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Tem02', N'Tempura Cua Lột', 198000, N'f04', N'Tem02', 4)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Tem03', N'Tempura Cá Bạc', 168000, N'f04', N'Tem03', 23)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Tem04', N'Rau Tempura Tổng Hợp', 138000, N'f04', N'Tem04', 1)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Tra01', N'Trà Chanh Truyền Thống', 20000, N'd02', N'Tra01', 4)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Tra02', N'Trà Chanh Xí Muội', 25000, N'd02', N'Tra02', 25)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Tra03', N'Trà Tắc Siêu To Khổng Lồ', 20000, N'd02', N'Tra03', 34)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Tra04', N'Trà Đào', 20000, N'd02', N'Tra04', 26)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Tra05', N'Trà Đào Cam Sả', 25000, N'd02', N'Tra05', 14)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Trasua01', N'Trà Sữa Trân Châu Đường Đen', 30000, N'd02', N'Trasua01', 32)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Trasua02', N'Trà Sữa Vị Matcha', 30000, N'd02', N'Trasua02', 22)
INSERT [dbo].[SanPham] ([idSp], [tenSp], [dongia], [idLoaiHang], [image], [slmua]) VALUES (N'Trasua03', N'Trà Sữa Vị Socola', 30000, N'd02', N'Trasua03', 24)
GO
ALTER TABLE [dbo].[Contact]  WITH CHECK ADD  CONSTRAINT [FK_Contact_Customer] FOREIGN KEY([Username])
REFERENCES [dbo].[Customer] ([Username])
GO
ALTER TABLE [dbo].[Contact] CHECK CONSTRAINT [FK_Contact_Customer]
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD  CONSTRAINT [FK_DanhGia_SanPham] FOREIGN KEY([idSp])
REFERENCES [dbo].[SanPham] ([idSp])
GO
ALTER TABLE [dbo].[DanhGia] CHECK CONSTRAINT [FK_DanhGia_SanPham]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_TaiKhoan] FOREIGN KEY([Username])
REFERENCES [dbo].[Customer] ([Username])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_TaiKhoan]
GO
ALTER TABLE [dbo].[Forum]  WITH CHECK ADD  CONSTRAINT [FK_Forum_Login] FOREIGN KEY([Username])
REFERENCES [dbo].[Login] ([Username])
GO
ALTER TABLE [dbo].[Forum] CHECK CONSTRAINT [FK_Forum_Login]
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonChiTiet_DonHang] FOREIGN KEY([idDonHang])
REFERENCES [dbo].[DonHang] ([idDonHang])
GO
ALTER TABLE [dbo].[HoaDonChiTiet] CHECK CONSTRAINT [FK_HoaDonChiTiet_DonHang]
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonChiTiet_SanPham] FOREIGN KEY([idSp])
REFERENCES [dbo].[SanPham] ([idSp])
GO
ALTER TABLE [dbo].[HoaDonChiTiet] CHECK CONSTRAINT [FK_HoaDonChiTiet_SanPham]
GO
ALTER TABLE [dbo].[Login]  WITH CHECK ADD  CONSTRAINT [FK_Login_Customer] FOREIGN KEY([Username])
REFERENCES [dbo].[Customer] ([Username])
GO
ALTER TABLE [dbo].[Login] CHECK CONSTRAINT [FK_Login_Customer]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiHang] FOREIGN KEY([idLoaiHang])
REFERENCES [dbo].[LoaiHang] ([idLoaiHang])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiHang]
GO
USE [master]
GO
ALTER DATABASE [N2SushiShop10] SET  READ_WRITE 
GO
