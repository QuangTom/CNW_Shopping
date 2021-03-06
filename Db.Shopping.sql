USE [master]
GO
/****** Object:  Database [CNW_Shopping]    Script Date: 02/04/2019 6:14:45 SA ******/
CREATE DATABASE [CNW_Shopping]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CNW_Shopping', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.QUANGTOMSQL\MSSQL\DATA\CNW_Shopping.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CNW_Shopping_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.QUANGTOMSQL\MSSQL\DATA\CNW_Shopping_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CNW_Shopping] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CNW_Shopping].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CNW_Shopping] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CNW_Shopping] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CNW_Shopping] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CNW_Shopping] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CNW_Shopping] SET ARITHABORT OFF 
GO
ALTER DATABASE [CNW_Shopping] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CNW_Shopping] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CNW_Shopping] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CNW_Shopping] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CNW_Shopping] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CNW_Shopping] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CNW_Shopping] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CNW_Shopping] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CNW_Shopping] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CNW_Shopping] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CNW_Shopping] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CNW_Shopping] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CNW_Shopping] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CNW_Shopping] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CNW_Shopping] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CNW_Shopping] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CNW_Shopping] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CNW_Shopping] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CNW_Shopping] SET  MULTI_USER 
GO
ALTER DATABASE [CNW_Shopping] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CNW_Shopping] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CNW_Shopping] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CNW_Shopping] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [CNW_Shopping] SET DELAYED_DURABILITY = DISABLED 
GO
USE [CNW_Shopping]
GO
/****** Object:  Table [dbo].[AnhSanPham]    Script Date: 02/04/2019 6:14:45 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnhSanPham](
	[MaAnh] [int] NOT NULL,
	[Anh] [nvarchar](255) NULL,
 CONSTRAINT [PK_AnhSanPham] PRIMARY KEY CLUSTERED 
(
	[MaAnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 02/04/2019 6:14:45 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[MaDonHang] [int] NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[ThanhTien] [int] NOT NULL,
 CONSTRAINT [PK_tbl_ChiTietDonDatHang] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 02/04/2019 6:14:45 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[MaDanhMuc] [int] NOT NULL,
	[TenDanhMuc] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_DanhMuc] PRIMARY KEY CLUSTERED 
(
	[MaDanhMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 02/04/2019 6:14:45 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDonHang] [int] NOT NULL,
	[MaKhachHang] [int] NULL,
	[MaNhanVien] [int] NULL,
	[NgayDat] [date] NULL,
	[NgayXuat] [date] NULL,
	[TenKhachHang] [nvarchar](50) NULL,
	[SDT] [nvarchar](50) NULL,
	[Emai] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[TinhTrang] [int] NULL,
 CONSTRAINT [PK_tbl_DonHang] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 02/04/2019 6:14:45 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKhachHang] [int] NOT NULL,
	[TenKH] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[SDT] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 02/04/2019 6:14:45 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [int] NOT NULL,
	[TenNhanVien] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[SDT] [int] NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 02/04/2019 6:14:45 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[MaQuyen] [int] NOT NULL,
	[TenQuyen] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_PhanQuyen] PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 02/04/2019 6:14:45 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [int] NOT NULL,
	[MaDanhMuc] [int] NULL,
	[TenSanPham] [nvarchar](50) NULL,
	[DonGia] [int] NULL,
	[MoTaSanPham] [nvarchar](255) NULL,
	[MaSize] [int] NULL,
	[MaAnh] [int] NULL,
 CONSTRAINT [PK_tbl_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Size]    Script Date: 02/04/2019 6:14:45 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Size](
	[MaSize] [int] NOT NULL,
	[Size] [nchar](10) NULL,
 CONSTRAINT [PK_Size] PRIMARY KEY CLUSTERED 
(
	[MaSize] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 02/04/2019 6:14:45 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaNhanVien] [int] NOT NULL,
	[TenDangNhap] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
	[MaQuyen] [int] NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AnhSanPham] ([MaAnh], [Anh]) VALUES (1, N'https://media3.scdn.vn/img2/2017/12_8/fW3IZw_simg_de2fe0_500x500_maxb.jpg')
INSERT [dbo].[AnhSanPham] ([MaAnh], [Anh]) VALUES (2, N'https://media3.scdn.vn/img2/2018/10_17/izM9fT_simg_b5529c_250x250_maxb.jpg')
INSERT [dbo].[AnhSanPham] ([MaAnh], [Anh]) VALUES (3, N'https://media3.scdn.vn/img2/2018/12_6/bfVmh2_simg_b5529c_250x250_maxb.jpg')
INSERT [dbo].[AnhSanPham] ([MaAnh], [Anh]) VALUES (4, N'https://media3.scdn.vn/img2/2018/7_8/wb5OpS_simg_b5529c_250x250_maxb.jpg')
INSERT [dbo].[AnhSanPham] ([MaAnh], [Anh]) VALUES (5, N'https://media3.scdn.vn/img2/2018/4_21/EmCTSo_simg_de2fe0_500x500_maxb.jpg')
INSERT [dbo].[AnhSanPham] ([MaAnh], [Anh]) VALUES (6, N'https://media3.scdn.vn/img2/2018/8_10/t8VihW_simg_b5529c_250x250_maxb.jpg')
INSERT [dbo].[AnhSanPham] ([MaAnh], [Anh]) VALUES (7, N'https://media3.scdn.vn/img2/2018/11_2/MxWlL6_simg_b5529c_250x250_maxb.jpg')
INSERT [dbo].[AnhSanPham] ([MaAnh], [Anh]) VALUES (8, N'https://media3.scdn.vn/img2/2018/11_28/qgne1B_simg_b5529c_250x250_maxb.jpg')
INSERT [dbo].[AnhSanPham] ([MaAnh], [Anh]) VALUES (9, N'https://media3.scdn.vn/img2/2018/11_10/OiOdxT_simg_b5529c_250x250_maxb.jpg')
INSERT [dbo].[AnhSanPham] ([MaAnh], [Anh]) VALUES (10, N'https://media3.scdn.vn/img2/2018/8_9/SgLXvN_simg_b5529c_250x250_maxb.jpg')
INSERT [dbo].[AnhSanPham] ([MaAnh], [Anh]) VALUES (11, N'https://media3.scdn.vn/img2/2018/8_6/wncdEN_simg_de2fe0_500x500_maxb.jpg')
INSERT [dbo].[AnhSanPham] ([MaAnh], [Anh]) VALUES (12, N'https://media3.scdn.vn/img2/2018/7_30/5iNSxm_simg_b5529c_250x250_maxb.png')
INSERT [dbo].[AnhSanPham] ([MaAnh], [Anh]) VALUES (13, N'https://media3.scdn.vn/img2/2018/9_16/9P3kob_simg_de2fe0_500x500_maxb.jpg')
INSERT [dbo].[AnhSanPham] ([MaAnh], [Anh]) VALUES (14, N'https://media3.scdn.vn/img2/2018/8_25/URcfSP_simg_b5529c_250x250_maxb.jpg')
INSERT [dbo].[AnhSanPham] ([MaAnh], [Anh]) VALUES (15, N'https://media3.scdn.vn/img2/2018/3_26/VFSPSU_simg_b5529c_250x250_maxb.png')
INSERT [dbo].[AnhSanPham] ([MaAnh], [Anh]) VALUES (16, N'https://media3.scdn.vn/img2/2018/6_29/EyWyHe_simg_b5529c_250x250_maxb.jpg')
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSanPham], [SoLuong], [ThanhTien]) VALUES (1, 3, 1, 170000)
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSanPham], [SoLuong], [ThanhTien]) VALUES (2, 5, 2, 320000)
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSanPham], [SoLuong], [ThanhTien]) VALUES (3, 10, 1, 99000)
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSanPham], [SoLuong], [ThanhTien]) VALUES (4, 8, 1, 86000)
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSanPham], [SoLuong], [ThanhTien]) VALUES (5, 9, 1, 86000)
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSanPham], [SoLuong], [ThanhTien]) VALUES (6, 1, 1, 290000)
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSanPham], [SoLuong], [ThanhTien]) VALUES (7, 2, 1, 99000)
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSanPham], [SoLuong], [ThanhTien]) VALUES (8, 4, 1, 55000)
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSanPham], [SoLuong], [ThanhTien]) VALUES (9, 3, 2, 340000)
INSERT [dbo].[ChiTietDonHang] ([MaDonHang], [MaSanPham], [SoLuong], [ThanhTien]) VALUES (10, 15, 1, 199000)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (1, N'Váy')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (2, N'Áo ')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (3, N'Chân váy')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (4, N'Quần')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (5, N'Áo khoác nữ')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (6, N'Quần áo thể thao')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (7, N'Đồ bơi')
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [MaNhanVien], [NgayDat], [NgayXuat], [TenKhachHang], [SDT], [Emai], [DiaChi], [TinhTrang]) VALUES (1, 1, 1, CAST(N'2019-01-01' AS Date), CAST(N'1997-01-02' AS Date), N'Lê Hồ Bá Quang', N'012345678', N'baquang@gmail.com', N'Hà Nội', 1)
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [MaNhanVien], [NgayDat], [NgayXuat], [TenKhachHang], [SDT], [Emai], [DiaChi], [TinhTrang]) VALUES (2, 2, 1, CAST(N'2019-05-03' AS Date), CAST(N'2019-05-04' AS Date), N'Tăng Thị Huyền Trang', N'1235677777', N'huyentrang@gmai.com', N'Hà Nội', 1)
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [MaNhanVien], [NgayDat], [NgayXuat], [TenKhachHang], [SDT], [Emai], [DiaChi], [TinhTrang]) VALUES (3, 3, 2, CAST(N'2019-03-12' AS Date), CAST(N'2019-03-15' AS Date), N'Phạm Vũ Mạnh', N'123231312312', N'vumanh@gmail.com', N'Hà Nội', 1)
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [MaNhanVien], [NgayDat], [NgayXuat], [TenKhachHang], [SDT], [Emai], [DiaChi], [TinhTrang]) VALUES (4, 4, 2, CAST(N'2019-04-01' AS Date), CAST(N'2019-04-02' AS Date), N'Trần Mạnh Duy', N'123525253255', N'manhduy@gmail.com', N'Hà Nội', 1)
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [MaNhanVien], [NgayDat], [NgayXuat], [TenKhachHang], [SDT], [Emai], [DiaChi], [TinhTrang]) VALUES (5, 5, 2, CAST(N'2019-04-02' AS Date), CAST(N'2019-04-04' AS Date), N'Đỗ Vĩnh Hùng', N'12312331312', N'vinhhung@mgial.com', N'Hà Nội', 1)
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [MaNhanVien], [NgayDat], [NgayXuat], [TenKhachHang], [SDT], [Emai], [DiaChi], [TinhTrang]) VALUES (6, 6, 3, CAST(N'2019-03-29' AS Date), CAST(N'2019-04-01' AS Date), N'Nguyễn Huy Hùng', N'123355555', N'huyhung@gmail.com', N'Hà Nội', 1)
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [MaNhanVien], [NgayDat], [NgayXuat], [TenKhachHang], [SDT], [Emai], [DiaChi], [TinhTrang]) VALUES (7, 7, 4, CAST(N'2019-03-14' AS Date), CAST(N'2019-03-18' AS Date), N'Dương Hải Quân', N'1233333333', N'haiquan@gmail.com', N'Hà Nội', 1)
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [MaNhanVien], [NgayDat], [NgayXuat], [TenKhachHang], [SDT], [Emai], [DiaChi], [TinhTrang]) VALUES (8, 8, 5, CAST(N'2019-03-01' AS Date), CAST(N'2019-03-15' AS Date), N'Nguyễn Thị Khánh Hạ', N'1235556666', N'khaha@gmail.com', N'Hà Nội', 1)
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [MaNhanVien], [NgayDat], [NgayXuat], [TenKhachHang], [SDT], [Emai], [DiaChi], [TinhTrang]) VALUES (9, 9, 5, CAST(N'2019-03-03' AS Date), CAST(N'2019-03-15' AS Date), N'Nguyễn Cao Kỳ Duyên', N'1231231312', N'kyduyen@gmail.com', N'Hà Nội', 1)
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [MaNhanVien], [NgayDat], [NgayXuat], [TenKhachHang], [SDT], [Emai], [DiaChi], [TinhTrang]) VALUES (10, 10, 3, CAST(N'2019-03-04' AS Date), CAST(N'2019-03-07' AS Date), N'Lê Cường', N'1231312321', N'lecuong@gmai.com', N'Hà Nội', 1)
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKH], [Email], [DiaChi], [SDT], [MatKhau]) VALUES (1, N'Lê Hồ Bá Quang', N'baquang@gmail.com', N'Hà Nội', N'012345678', N'123')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKH], [Email], [DiaChi], [SDT], [MatKhau]) VALUES (2, N'Tăng Thị Huyền Trang', N'huyentrang@gmai.com', N'Hà Nội', N'1235677777', N'124')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKH], [Email], [DiaChi], [SDT], [MatKhau]) VALUES (3, N'Phạm Vũ Mạnh', N'vumanh@gmail.com', N'Hà Nội', N'123231312312', N'125')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKH], [Email], [DiaChi], [SDT], [MatKhau]) VALUES (4, N'Trần Mạnh Duy', N'manhduy@gmail.com', N'Hà Nội', N'123525253255', N'126')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKH], [Email], [DiaChi], [SDT], [MatKhau]) VALUES (5, N'Đỗ Vĩnh Hùng', N'vinhhung@mgial.com', N'Hà Nội', N'12312331312', N'127')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKH], [Email], [DiaChi], [SDT], [MatKhau]) VALUES (6, N'Nguyễn Huy Hùng', N'huyhung@gmail.com', N'Hà Nội', N'123355555', N'128')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKH], [Email], [DiaChi], [SDT], [MatKhau]) VALUES (7, N'Dương Hải Quân', N'haiquan@gmail.com', N'Hà Nội', N'1233333333', N'129')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKH], [Email], [DiaChi], [SDT], [MatKhau]) VALUES (8, N'Nguyễn Thị Khánh Hạ', N'khaha@gmail.com', N'Hà Nội', N'1235556666', N'130')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKH], [Email], [DiaChi], [SDT], [MatKhau]) VALUES (9, N'Nguyễn Cao Kỳ Duyên', N'kyduyen@gmail.com', N'Hà Nội', N'1231231312', N'131')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKH], [Email], [DiaChi], [SDT], [MatKhau]) VALUES (10, N'Lê Cường', N'lecuong@gmai.com', N'Hà Nội', N'1231312321', N'132')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [SDT], [Email]) VALUES (1, N'Quang Tom', CAST(N'1997-04-15' AS Date), 123123123, N'quangtom@gmail.com')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [SDT], [Email]) VALUES (2, N'Trang ', CAST(N'1997-01-01' AS Date), 11111111, N'trang@gmail.com')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [SDT], [Email]) VALUES (3, N'Hùng', CAST(N'1997-02-02' AS Date), 1414141414, N'hung@gmail.com')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [SDT], [Email]) VALUES (4, N'Mạnh', CAST(N'1997-03-03' AS Date), 147182474, N'manh@gmail.com')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [SDT], [Email]) VALUES (5, N'Mạnh Linh', CAST(N'1997-04-04' AS Date), 131313133, N'manhlinh@gmail.com')
INSERT [dbo].[PhanQuyen] ([MaQuyen], [TenQuyen]) VALUES (1, N'A')
INSERT [dbo].[PhanQuyen] ([MaQuyen], [TenQuyen]) VALUES (2, N'B')
INSERT [dbo].[PhanQuyen] ([MaQuyen], [TenQuyen]) VALUES (3, N'C')
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [DonGia], [MoTaSanPham], [MaSize], [MaAnh]) VALUES (1, 1, N'Đầm chấm bi', 290000, NULL, 4, 1)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [DonGia], [MoTaSanPham], [MaSize], [MaAnh]) VALUES (2, 1, N'Đầm công sở', 99000, NULL, 3, 2)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [DonGia], [MoTaSanPham], [MaSize], [MaAnh]) VALUES (3, 1, N'Đầm caro', 170000, NULL, 3, 3)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [DonGia], [MoTaSanPham], [MaSize], [MaAnh]) VALUES (4, 2, N'Áo thun tay', 55000, NULL, 3, 4)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [DonGia], [MoTaSanPham], [MaSize], [MaAnh]) VALUES (5, 2, N'Áo kiểu nữ công sở', 160000, NULL, 4, 5)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [DonGia], [MoTaSanPham], [MaSize], [MaAnh]) VALUES (6, 3, N'Chân váy xòe', 139000, NULL, 4, 6)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [DonGia], [MoTaSanPham], [MaSize], [MaAnh]) VALUES (7, 3, N'Chân váy bút chì', 135000, NULL, 4, 7)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [DonGia], [MoTaSanPham], [MaSize], [MaAnh]) VALUES (8, 4, N'Quần baggy', 86000, NULL, 3, 8)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [DonGia], [MoTaSanPham], [MaSize], [MaAnh]) VALUES (9, 4, N'Quần tây nữ khóa sườn', 86000, NULL, 4, 9)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [DonGia], [MoTaSanPham], [MaSize], [MaAnh]) VALUES (10, 5, N'Áo khoác công sở', 99000, NULL, 5, 10)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [DonGia], [MoTaSanPham], [MaSize], [MaAnh]) VALUES (11, 5, N'Áo khoác kaki', 80000, NULL, 2, 11)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [DonGia], [MoTaSanPham], [MaSize], [MaAnh]) VALUES (12, 6, N'Áo thun tập gym', 149000, NULL, 3, 12)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [DonGia], [MoTaSanPham], [MaSize], [MaAnh]) VALUES (13, 6, N'Set quần áo tập yoga', 230000, NULL, 4, 13)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [DonGia], [MoTaSanPham], [MaSize], [MaAnh]) VALUES (14, 7, N'Bikini 2 mảnh thun', 320000, NULL, 3, 14)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [DonGia], [MoTaSanPham], [MaSize], [MaAnh]) VALUES (15, 7, N'Bikini dạng váy', 199000, NULL, 3, 15)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [DonGia], [MoTaSanPham], [MaSize], [MaAnh]) VALUES (16, 7, N'Bikini liền mảnh ', 185000, NULL, 4, 16)
INSERT [dbo].[Size] ([MaSize], [Size]) VALUES (1, N'XS        ')
INSERT [dbo].[Size] ([MaSize], [Size]) VALUES (2, N'S         ')
INSERT [dbo].[Size] ([MaSize], [Size]) VALUES (3, N'M         ')
INSERT [dbo].[Size] ([MaSize], [Size]) VALUES (4, N'L         ')
INSERT [dbo].[Size] ([MaSize], [Size]) VALUES (5, N'XL        ')
INSERT [dbo].[Size] ([MaSize], [Size]) VALUES (6, N'XLL       ')
INSERT [dbo].[TaiKhoan] ([MaNhanVien], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (1, N'QuangTom', N'1', 1)
INSERT [dbo].[TaiKhoan] ([MaNhanVien], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (2, N'Trang', N'2', 2)
INSERT [dbo].[TaiKhoan] ([MaNhanVien], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (3, N'Hung', N'3', 2)
INSERT [dbo].[TaiKhoan] ([MaNhanVien], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (4, N'Manh', N'4', 3)
INSERT [dbo].[TaiKhoan] ([MaNhanVien], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (5, N'ManhLinh', N'5', 3)
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ChiTietDonDatHang_tbl_DonHang] FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DonHang] ([MaDonHang])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_tbl_ChiTietDonDatHang_tbl_DonHang]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ChiTietDonDatHang_tbl_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_tbl_ChiTietDonDatHang_tbl_SanPham]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_NguoiDung] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_NguoiDung]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_NhanVien]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_AnhSanPham] FOREIGN KEY([MaAnh])
REFERENCES [dbo].[AnhSanPham] ([MaAnh])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_AnhSanPham]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_Size] FOREIGN KEY([MaSize])
REFERENCES [dbo].[Size] ([MaSize])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_Size]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_tbl_SanPham_tbl_DanhMuc] FOREIGN KEY([MaDanhMuc])
REFERENCES [dbo].[DanhMuc] ([MaDanhMuc])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_tbl_SanPham_tbl_DanhMuc]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_NhanVien]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_PhanQuyen] FOREIGN KEY([MaQuyen])
REFERENCES [dbo].[PhanQuyen] ([MaQuyen])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_PhanQuyen]
GO
USE [master]
GO
ALTER DATABASE [CNW_Shopping] SET  READ_WRITE 
GO
