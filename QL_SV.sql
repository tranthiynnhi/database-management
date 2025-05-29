USE [master]
GO
/****** Object:  Database [QL_SV]    Script Date: 6/30/2024 12:44:08 AM ******/
CREATE DATABASE [QL_SV]
GO
ALTER DATABASE [QL_SV] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QL_SV].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QL_SV] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QL_SV] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QL_SV] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QL_SV] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QL_SV] SET ARITHABORT OFF 
GO
ALTER DATABASE [QL_SV] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QL_SV] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QL_SV] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QL_SV] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QL_SV] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QL_SV] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QL_SV] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QL_SV] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QL_SV] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QL_SV] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QL_SV] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QL_SV] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QL_SV] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QL_SV] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QL_SV] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QL_SV] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QL_SV] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QL_SV] SET RECOVERY FULL 
GO
ALTER DATABASE [QL_SV] SET  MULTI_USER 
GO
ALTER DATABASE [QL_SV] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QL_SV] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QL_SV] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QL_SV] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QL_SV] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QL_SV] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QL_SV', N'ON'
GO
ALTER DATABASE [QL_SV] SET QUERY_STORE = OFF
GO
USE [QL_SV]
GO
/****** Object:  Table [dbo].[BoMon]    Script Date: 6/30/2024 12:44:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BoMon](
	[MaBM] [varchar](50) NOT NULL,
	[TenBM] [nvarchar](80) NOT NULL,
	[MaKhoa] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChuyenNganh]    Script Date: 6/30/2024 12:44:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuyenNganh](
	[MaCN] [varchar](50) NOT NULL,
	[TenCN] [nvarchar](50) NOT NULL,
	[MaNganh] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DangKy]    Script Date: 6/30/2024 12:44:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangKy](
	[MaSV] [varchar](50) NOT NULL,
	[MaLHP] [varchar](50) NOT NULL,
	[MonHoc] [nvarchar](50) NOT NULL,
	[TenHocKy] [int] NOT NULL,
	[NamHoc] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC,
	[MaLHP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiangVien]    Script Date: 6/30/2024 12:44:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiangVien](
	[MaGV] [varchar](50) NOT NULL,
	[Ho] [nvarchar](50) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[GioiTinh] [nvarchar](5) NOT NULL,
	[HocHam] [nvarchar](50) NOT NULL,
	[HocVi] [nvarchar](50) NULL,
	[MaBM] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HocKy]    Script Date: 6/30/2024 12:44:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HocKy](
	[TenHocKy] [int] NOT NULL,
	[NamHoc] [varchar](50) NOT NULL,
	[TGbatdau] [date] NOT NULL,
	[TGketthuc] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TenHocKy] ASC,
	[NamHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KetQua]    Script Date: 6/30/2024 12:44:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KetQua](
	[MaLHP] [varchar](50) NOT NULL,
	[MaSV] [varchar](50) NOT NULL,
	[DiemChuyenCan] [float] NULL,
	[Bai_KTGK] [float] NULL,
	[BTN] [float] NULL,
	[ThiKTHP] [float] NULL,
	[DTB] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC,
	[MaLHP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Khoa]    Script Date: 6/30/2024 12:44:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khoa](
	[MaKhoa] [varchar](50) NOT NULL,
	[TenKhoa] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LopHocPhan]    Script Date: 6/30/2024 12:44:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LopHocPhan](
	[MaLHP] [varchar](50) NOT NULL,
	[TenLHP] [nvarchar](80) NOT NULL,
	[SL_DangKy] [int] NOT NULL,
	[Thu] [varchar](10) NOT NULL,
	[TietBatDau] [int] NOT NULL,
	[TietKetThuc] [int] NOT NULL,
	[TuanBatDau] [int] NOT NULL,
	[TuanKetThuc] [int] NOT NULL,
	[MaMH] [varchar](50) NOT NULL,
	[TenHocKy] [int] NOT NULL,
	[NamHoc] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLHP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LopSinhHoat]    Script Date: 6/30/2024 12:44:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LopSinhHoat](
	[MaLop] [varchar](50) NOT NULL,
	[TenLop] [varchar](50) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[MaGV] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MoMonHoc]    Script Date: 6/30/2024 12:44:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MoMonHoc](
	[MaMH] [varchar](50) NOT NULL,
	[TenHocKy] [int] NOT NULL,
	[NamHoc] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC,
	[TenHocKy] ASC,
	[NamHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 6/30/2024 12:44:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[MaMH] [varchar](50) NOT NULL,
	[TenTV] [nvarchar](50) NOT NULL,
	[TenTA] [varchar](50) NOT NULL,
	[SoTC] [int] NOT NULL,
	[MaGV] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NganhHoc]    Script Date: 6/30/2024 12:44:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NganhHoc](
	[MaNganh] [varchar](50) NOT NULL,
	[TenNganh] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNganh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhuTrach]    Script Date: 6/30/2024 12:44:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhuTrach](
	[MaLHP] [varchar](50) NOT NULL,
	[MaGV] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLHP] ASC,
	[MaGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 6/30/2024 12:44:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[MaSV] [varchar](50) NOT NULL,
	[Ho] [nvarchar](50) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[GioiTinh] [nvarchar](5) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[SDT] [varchar](50) NOT NULL,
	[CCCD] [varchar](50) NOT NULL,
	[NoiSinh] [nvarchar](50) NOT NULL,
	[QueQuan] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[KhoaTrungTuyen] [varchar](50) NOT NULL,
	[NgayNhapHoc] [date] NOT NULL,
	[MaCN] [varchar](50) NOT NULL,
	[MaNganh] [varchar](50) NOT NULL,
	[MaLop] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanNhan]    Script Date: 6/30/2024 12:44:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanNhan](
	[MaSV] [varchar](50) NOT NULL,
	[Ho] [nvarchar](50) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[SDT] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[QuanHe] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC,
	[Ho] ASC,
	[Ten] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BoMon] ([MaBM], [TenBM], [MaKhoa]) VALUES (N'BM01', N'Nghiệp vụ Ngân hàng thương mại', N'K01')
GO
INSERT [dbo].[BoMon] ([MaBM], [TenBM], [MaKhoa]) VALUES (N'BM02', N'Quản trị kinh doanh ngân hàng', N'K01')
GO
INSERT [dbo].[BoMon] ([MaBM], [TenBM], [MaKhoa]) VALUES (N'BM03', N'Ngân hàng quốc tế', N'K01')
GO
INSERT [dbo].[BoMon] ([MaBM], [TenBM], [MaKhoa]) VALUES (N'BM04', N'Tài chính tiền tệ', N'K02')
GO
INSERT [dbo].[BoMon] ([MaBM], [TenBM], [MaKhoa]) VALUES (N'BM05', N'Tài chính doanh nghiệp', N'K02')
GO
INSERT [dbo].[BoMon] ([MaBM], [TenBM], [MaKhoa]) VALUES (N'BM06', N'Đầu tư tài chính', N'K02')
GO
INSERT [dbo].[BoMon] ([MaBM], [TenBM], [MaKhoa]) VALUES (N'BM07', N'Quản trị kinh doanh ', N'K03')
GO
INSERT [dbo].[BoMon] ([MaBM], [TenBM], [MaKhoa]) VALUES (N'BM08', N'Marketing', N'K03')
GO
INSERT [dbo].[BoMon] ([MaBM], [TenBM], [MaKhoa]) VALUES (N'BM09', N'Quản trị khởi nghiệp ', N'K03')
GO
INSERT [dbo].[BoMon] ([MaBM], [TenBM], [MaKhoa]) VALUES (N'BM10', N'Kế toán tài chính', N'K04')
GO
INSERT [dbo].[BoMon] ([MaBM], [TenBM], [MaKhoa]) VALUES (N'BM11', N'Kế toán quản trị', N'K04')
GO
INSERT [dbo].[BoMon] ([MaBM], [TenBM], [MaKhoa]) VALUES (N'BM12', N'Kiểm toán', N'K04')
GO
INSERT [dbo].[BoMon] ([MaBM], [TenBM], [MaKhoa]) VALUES (N'BM13', N'Khoa học máy tính', N'K05')
GO
INSERT [dbo].[BoMon] ([MaBM], [TenBM], [MaKhoa]) VALUES (N'BM14', N'Hệ thống thông tin quản trị', N'K05')
GO
INSERT [dbo].[BoMon] ([MaBM], [TenBM], [MaKhoa]) VALUES (N'BM15', N'Thương mại điện tử', N'K05')
GO
INSERT [dbo].[BoMon] ([MaBM], [TenBM], [MaKhoa]) VALUES (N'BM16', N'Tiếng Anh cơ sở', N'K06')
GO
INSERT [dbo].[BoMon] ([MaBM], [TenBM], [MaKhoa]) VALUES (N'BM17', N'Tiếng Anh thương mại', N'K06')
GO
INSERT [dbo].[BoMon] ([MaBM], [TenBM], [MaKhoa]) VALUES (N'BM18', N'Anh - Trung', N'K06')
GO
INSERT [dbo].[BoMon] ([MaBM], [TenBM], [MaKhoa]) VALUES (N'BM19', N'Kinh tế học ứng dụng', N'K07')
GO
INSERT [dbo].[BoMon] ([MaBM], [TenBM], [MaKhoa]) VALUES (N'BM20', N'Thương mại quốc tế', N'K07')
GO
INSERT [dbo].[BoMon] ([MaBM], [TenBM], [MaKhoa]) VALUES (N'BM21', N'Đầu tư quốc tế', N'K07')
GO
INSERT [dbo].[BoMon] ([MaBM], [TenBM], [MaKhoa]) VALUES (N'BM22', N'Luật dân sự', N'K08')
GO
INSERT [dbo].[BoMon] ([MaBM], [TenBM], [MaKhoa]) VALUES (N'BM23', N'Luật cơ sở', N'K08')
GO
INSERT [dbo].[BoMon] ([MaBM], [TenBM], [MaKhoa]) VALUES (N'BM24', N'Luật kinh doanh', N'K08')
GO
INSERT [dbo].[BoMon] ([MaBM], [TenBM], [MaKhoa]) VALUES (N'BM25', N'Khoa học Mác-Lênin', N'K09')
GO
INSERT [dbo].[BoMon] ([MaBM], [TenBM], [MaKhoa]) VALUES (N'BM26', N'Lịch sử Đảng Cộng sản Việt Nam và Tư tưởng Hồ Chí Minh', N'K09')
GO
INSERT [dbo].[BoMon] ([MaBM], [TenBM], [MaKhoa]) VALUES (N'BM27', N'Khoa học xã hội & nhân văn', N'K09')
GO
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'K01', N'Khoa Ngân Hàng')
GO
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'K02', N'Khoa Tài chính')
GO
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'K03', N'Khoa Quản trị kinh doanh')
GO
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'K04', N'Khoa Kế toán kiểm toán')
GO
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'K05', N'Khoa Hệ thống thông tin quản lý')
GO
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'K06', N'Khoa Ngoại ngữ')
GO
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'K07', N'Khoa Kinh tế quốc tế')
GO
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'K08', N'Khoa Luật kinh tế')
GO
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'K09', N'Khoa Khoa học xã hội')
GO
INSERT [dbo].[ChuyenNganh] ([MaCN], [TenCN], [MaNganh]) VALUES (N'CN01', N'Tài chính', N'N01')
GO
INSERT [dbo].[ChuyenNganh] ([MaCN], [TenCN], [MaNganh]) VALUES (N'CN02', N'Ngân hàng', N'N01')
GO
INSERT [dbo].[ChuyenNganh] ([MaCN], [TenCN], [MaNganh]) VALUES (N'CN03', N'Tài chính công nghệ', N'N01')
GO
INSERT [dbo].[ChuyenNganh] ([MaCN], [TenCN], [MaNganh]) VALUES (N'CN04', N'Tài chính định lượng và quản trị rủi ro', N'N01')
GO
INSERT [dbo].[ChuyenNganh] ([MaCN], [TenCN], [MaNganh]) VALUES (N'CN05', N'Tài chính và Quản trị doanh nghiệp', N'N01')
GO
INSERT [dbo].[ChuyenNganh] ([MaCN], [TenCN], [MaNganh]) VALUES (N'CN06', N'Quản trị kinh doanh', N'N02')
GO
INSERT [dbo].[ChuyenNganh] ([MaCN], [TenCN], [MaNganh]) VALUES (N'CN07', N'Digital Marketing', N'N02')
GO
INSERT [dbo].[ChuyenNganh] ([MaCN], [TenCN], [MaNganh]) VALUES (N'CN08', N'Logistics và Quản lý chuỗi cung ứng', N'N02')
GO
INSERT [dbo].[ChuyenNganh] ([MaCN], [TenCN], [MaNganh]) VALUES (N'CN09', N'Tiếng anh thương mại', N'N03')
GO
INSERT [dbo].[ChuyenNganh] ([MaCN], [TenCN], [MaNganh]) VALUES (N'CN10', N'Song ngữ Anh - Trung', N'N03')
GO
INSERT [dbo].[ChuyenNganh] ([MaCN], [TenCN], [MaNganh]) VALUES (N'CN11', N'Luật kinh tế', N'N04')
GO
INSERT [dbo].[ChuyenNganh] ([MaCN], [TenCN], [MaNganh]) VALUES (N'CN12', N'Kinh doanh quốc tế', N'N05')
GO
INSERT [dbo].[ChuyenNganh] ([MaCN], [TenCN], [MaNganh]) VALUES (N'CN13', N'Kinh tế quốc tế', N'N05')
GO
INSERT [dbo].[ChuyenNganh] ([MaCN], [TenCN], [MaNganh]) VALUES (N'CN14', N'Kinh tế và kinh doanh số', N'N05')
GO
INSERT [dbo].[ChuyenNganh] ([MaCN], [TenCN], [MaNganh]) VALUES (N'CN15', N'Kế toán', N'N06')
GO
INSERT [dbo].[ChuyenNganh] ([MaCN], [TenCN], [MaNganh]) VALUES (N'CN16', N'Quản trị thương mại điện tử', N'N07')
GO
INSERT [dbo].[ChuyenNganh] ([MaCN], [TenCN], [MaNganh]) VALUES (N'CN17', N'Hệ thống thông tin kinh doanh và chuyển đổi số', N'N07')
GO
INSERT [dbo].[ChuyenNganh] ([MaCN], [TenCN], [MaNganh]) VALUES (N'CN18', N'Khoa học dữ liệu trong kinh doanh', N'N07')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220001', N'ACC301_223_D01', N'Nguyên lý kế toán', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220001', N'ACC301_D01', N'Nguyên lý kế toán', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220001', N'BAF301_223_D01', N'Hoạt động kinh doanh ngân hàng', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220001', N'MKE304_223_D02', N'Marketing dịch vụ tài chính', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220002', N'ACC301_D01', N'Nguyên lý kế toán', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220002', N'BAF301_223_D01', N'Hoạt động kinh doanh ngân hàng', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220002', N'MKE304_223_D02', N'Marketing dịch vụ tài chính', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220003', N'ACC301_D01', N'Nguyên lý kế toán', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220003', N'BAF301_223_D01', N'Hoạt động kinh doanh ngân hàng', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220003', N'MKE304_223_D02', N'Marketing dịch vụ tài chính', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220004', N'ACC301_D01', N'Nguyên lý kế toán', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220004', N'BAF301_223_D01', N'Hoạt động kinh doanh ngân hàng', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220004', N'MKE304_223_D02', N'Marketing dịch vụ tài chính', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220005', N'ACC301_D01', N'Nguyên lý kế toán', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220005', N'BAF301_223_D01', N'Hoạt động kinh doanh ngân hàng', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220005', N'MKE304_223_D02', N'Marketing dịch vụ tài chính', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220006', N'FIN301_D01', N'Lý thuyết tài chính - tiền tệ', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220006', N'FIN303_223_D02', N'Tài chính doanh nghiệp ', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220006', N'FIN311_D01', N'Thuế', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220007', N'FIN301_D01', N'Lý thuyết tài chính - tiền tệ', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220007', N'FIN303_223_D02', N'Tài chính doanh nghiệp ', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220007', N'FIN311_D01', N'Thuế', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220008', N'FIN301_D01', N'Lý thuyết tài chính - tiền tệ', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220008', N'FIN303_223_D02', N'Tài chính doanh nghiệp ', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220008', N'FIN311_D01', N'Thuế', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220009', N'FIN301_D01', N'Lý thuyết tài chính - tiền tệ', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220009', N'FIN303_223_D02', N'Tài chính doanh nghiệp ', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220009', N'FIN311_D01', N'Thuế', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220010', N'FIN301_D01', N'Lý thuyết tài chính - tiền tệ', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220010', N'FIN303_223_D02', N'Tài chính doanh nghiệp ', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220010', N'FIN311_D01', N'Thuế', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220011', N'ACC705_D01', N'Kế toán tài chính', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220011', N'BAF308_223_D01', N'Tín dụng ngân hàng', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220011', N'BAF308_D01', N'Tín dụng ngân hàng', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220011', N'DIM706_D01', N'Marketing số', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220012', N'ACC705_D01', N'Kế toán tài chính', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220012', N'BAF308_223_D01', N'Tín dụng ngân hàng', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220012', N'BAF308_D01', N'Tín dụng ngân hàng', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220012', N'DIM706_D01', N'Marketing số', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220013', N'ACC705_D01', N'Kế toán tài chính', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220013', N'BAF308_223_D01', N'Tín dụng ngân hàng', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220013', N'BAF308_D01', N'Tín dụng ngân hàng', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220013', N'DIM706_D01', N'Marketing số', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220014', N'ACC705_D01', N'Kế toán tài chính', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220014', N'BAF308_D01', N'Tín dụng ngân hàng', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220014', N'DIM706_D01', N'Marketing số', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220015', N'ACC705_D01', N'Kế toán tài chính', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220015', N'BAF308_D01', N'Tín dụng ngân hàng', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220015', N'DIM706_D01', N'Marketing số', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220016', N'ACC705_223_D01', N'Kế toán tài chính', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220016', N'ACC705_D01', N'Kinh tế chính trị Mác - Lênin', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220016', N'MLM306_D01', N'Triết học Mác -  Lênin', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220017', N'ACC705_223_D01', N'Kế toán tài chính', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220017', N'MLM306_D01', N'Triết học Mác -  Lênin', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220017', N'MLM307_D01', N'Kinh tế chính trị Mác - Lênin', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220018', N'ACC705_223_D01', N'Kế toán tài chính', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220018', N'MLM306_D01', N'Triết học Mác -  Lênin', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220018', N'MLM307_D01', N'Kinh tế chính trị Mác - Lênin', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220019', N'ACC705_223_D01', N'Kế toán tài chính', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220019', N'MLM306_D01', N'Triết học Mác -  Lênin', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220019', N'MLM307_D01', N'Kinh tế chính trị Mác - Lênin', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220020', N'ACC705_223_D01', N'Kế toán tài chính', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220020', N'MLM306_D01', N'Triết học Mác -  Lênin', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220020', N'MLM307_D01', N'Kinh tế chính trị Mác - Lênin', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220021', N'MLM303_223_D01', N'Tư tưởng Hồ Chí Minh', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220021', N'MLM306_D04', N'Triết học Mác -  Lênin', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220021', N'MLM307_D04', N'Kinh tế chính trị Mác - Lênin', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220022', N'MLM303_223_D01', N'Tư tưởng Hồ Chí Minh', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220022', N'MLM306_D04', N'Triết học Mác -  Lênin', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220022', N'MLM307_D04', N'Kinh tế chính trị Mác - Lênin', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220023', N'MLM303_223_D01', N'Tư tưởng Hồ Chí Minh', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220023', N'MLM306_D04', N'Triết học Mác -  Lênin', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220023', N'MLM307_D04', N'Kinh tế chính trị Mác - Lênin', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220024', N'MLM303_223_D01', N'Tư tưởng Hồ Chí Minh', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220024', N'MLM306_D04', N'Triết học Mác -  Lênin', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220024', N'MLM307_D04', N'Kinh tế chính trị Mác - Lênin', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220025', N'MLM303_223_D01', N'Tư tưởng Hồ Chí Minh', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220025', N'MLM306_D04', N'Triết học Mác -  Lênin', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220025', N'MLM307_D04', N'Kinh tế chính trị Mác - Lênin', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220026', N'BAF301_D01', N'Hoạt động kinh doanh ngân hàng', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220026', N'INE305_D02', N'Logistics quốc tế', 1, N'2022-2023')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220026', N'ITS709_D01', N'Mạng máy tính và truyền thông', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220027', N'BAF301_D01', N'Hoạt động kinh doanh ngân hàng', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220027', N'INE305_D02', N'Logistics quốc tế', 1, N'2022-2023')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220027', N'ITS709_D01', N'Mạng máy tính và truyền thông', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220028', N'BAF301_D01', N'Hoạt động kinh doanh ngân hàng', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220028', N'INE305_D02', N'Logistics quốc tế', 1, N'2022-2023')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220028', N'ITS709_D01', N'Mạng máy tính và truyền thông', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220029', N'BAF301_D01', N'Hoạt động kinh doanh ngân hàng', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220029', N'INE305_D02', N'Logistics quốc tế', 1, N'2022-2023')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220029', N'ITS709_D01', N'Mạng máy tính và truyền thông', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220030', N'BAF301_D01', N'Hoạt động kinh doanh ngân hàng', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220030', N'INE305_D02', N'Logistics quốc tế', 1, N'2022-2023')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220030', N'ITS709_D01', N'Mạng máy tính và truyền thông', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220031', N'ACC301_223_D01', N'Nguyên lý kế toán', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220031', N'INE305_1_223_D02', N'Logistics quốc tế', 2, N'2022-2023')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220031', N'ITS322_223_D01', N'Hệ quản trị cơ sở dữ liệu', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220032', N'ACC301_223_D01', N'Nguyên lý kế toán', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220032', N'INE305_1_223_D02', N'Logistics quốc tế', 2, N'2022-2023')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220032', N'ITS322_223_D01', N'Hệ quản trị cơ sở dữ liệu', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220033', N'ACC301_223_D01', N'Nguyên lý kế toán', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220033', N'INE305_1_223_D02', N'Logistics quốc tế', 2, N'2022-2023')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220033', N'ITS322_223_D01', N'Hệ quản trị cơ sở dữ liệu', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220034', N'ACC301_223_D01', N'Nguyên lý kế toán', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220034', N'INE305_1_223_D02', N'Logistics quốc tế', 2, N'2022-2023')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220034', N'ITS322_223_D01', N'Hệ quản trị cơ sở dữ liệu', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220034', N'ITS322_D01', N'Hệ quản trị cơ sở dữ liệu', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220035', N'INE305_1_223_D02', N'Logistics quốc tế', 2, N'2022-2023')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220035', N'ITS322_223_D01', N'Hệ quản trị cơ sở dữ liệu', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220035', N'ITS322_D01', N'Hệ quản trị cơ sở dữ liệu', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220036', N'BAF308_223_D01', N'Tín dụng ngân hàng', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220036', N'ENB305_D01', N'Phiên dịch thương mại', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220036', N'MAG707_223_D02', N'Truyền thông kinh doanh', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220037', N'BAF308_223_D01', N'Tín dụng ngân hàng', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220037', N'ENB305_D01', N'Phiên dịch thương mại', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220037', N'MAG707_223_D02', N'Truyền thông kinh doanh', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220038', N'ENB305_D01', N'Phiên dịch thương mại', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220038', N'FIN303_223_D01', N'Tài chính doanh nghiệp ', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220038', N'MAG707_223_D02', N'Truyền thông kinh doanh', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220039', N'ENB305_D01', N'Phiên dịch thương mại', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220039', N'FIN303_223_D01', N'Tài chính doanh nghiệp ', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220039', N'MAG707_223_D02', N'Truyền thông kinh doanh', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220040', N'ENB305_D01', N'Phiên dịch thương mại', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220040', N'FIN301_D02', N'Lý thuyết tài chính - tiền tệ', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220040', N'FIN303_223_D01', N'Tài chính doanh nghiệp ', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220040', N'MAG707_223_D02', N'Truyền thông kinh doanh', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220041', N'FIN303_223_D01', N'Tài chính doanh nghiệp ', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220041', N'INE308_D01', N'Kỹ thuật ngoại thương', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220042', N'FIN303_223_D01', N'Tài chính doanh nghiệp ', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220042', N'INE308_D01', N'Kỹ thuật ngoại thương', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220043', N'INE308_D01', N'Kỹ thuật ngoại thương', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220044', N'INE308_D01', N'Kỹ thuật ngoại thương', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220045', N'INE308_D01', N'Kỹ thuật ngoại thương', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220046', N'FIN301_D02', N'Lý thuyết tài chính - tiền tệ', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220047', N'FIN301_D02', N'Lý thuyết tài chính - tiền tệ', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220048', N'FIN301_D02', N'Lý thuyết tài chính - tiền tệ', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220049', N'FIN301_D02', N'Lý thuyết tài chính - tiền tệ', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220050', N'FIN311_D02', N'Thuế', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220051', N'FIN311_D02', N'Thuế', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220052', N'FIN311_D02', N'Thuế', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220052', N'ITS322_D01', N'Hệ quản trị cơ sở dữ liệu', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220053', N'FIN311_D02', N'Thuế', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220053', N'ITS322_D01', N'Hệ quản trị cơ sở dữ liệu', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220054', N'FIN311_D02', N'Thuế', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220054', N'ITS322_D01', N'Hệ quản trị cơ sở dữ liệu', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220055', N'BAF307_D02', N'Thanh toán quốc tế', 1, N'2022-2023')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220055', N'MAG707_223_D02', N'Truyền thông kinh doanh', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220056', N'MAG707_223_D02', N'Truyền thông kinh doanh', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220057', N'MAG707_223_D02', N'Truyền thông kinh doanh', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220058', N'MAG707_223_D02', N'Truyền thông kinh doanh', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030138220059', N'MAG707_223_D02', N'Truyền thông kinh doanh', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220056', N'BAF307_D02', N'Thanh toán quốc tế', 1, N'2022-2023')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220057', N'BAF307_D02', N'Thanh toán quốc tế', 1, N'2022-2023')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220058', N'BAF307_D02', N'Thanh toán quốc tế', 1, N'2022-2023')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220059', N'BAF307_D02', N'Thanh toán quốc tế', 1, N'2022-2023')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220060', N'BAF307_D01', N'Thanh toán quốc tế', 1, N'2022-2023')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220061', N'BAF307_D01', N'Thanh toán quốc tế', 1, N'2022-2023')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220062', N'BAF307_D01', N'Thanh toán quốc tế', 1, N'2022-2023')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220062', N'DIM703_D04', N'Khởi nghiệp kinh doanh trong thời đại số', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220063', N'BAF307_D01', N'Thanh toán quốc tế', 1, N'2022-2023')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220063', N'DIM703_D04', N'Khởi nghiệp kinh doanh trong thời đại số', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220064', N'BAF307_D01', N'Thanh toán quốc tế', 1, N'2022-2023')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220064', N'DIM703_D04', N'Khởi nghiệp kinh doanh trong thời đại số', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220065', N'DIM703_D04', N'Khởi nghiệp kinh doanh trong thời đại số', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220065', N'FIN311_223_D01', N'Thuế', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220066', N'DIM703_D04', N'Khởi nghiệp kinh doanh trong thời đại số', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220066', N'FIN311_223_D01', N'Thuế', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220067', N'FIN311_223_D01', N'Thuế', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220067', N'ITS322_223_D02', N'Hệ quản trị cơ sở dữ liệu', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220068', N'FIN311_223_D01', N'Thuế', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220068', N'ITS322_223_D02', N'Hệ quản trị cơ sở dữ liệu', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220069', N'FIN311_223_D01', N'Thuế', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220069', N'ITS322_223_D02', N'Hệ quản trị cơ sở dữ liệu', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220070', N'ITS322_223_D02', N'Hệ quản trị cơ sở dữ liệu', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220071', N'ITS322_223_D02', N'Hệ quản trị cơ sở dữ liệu', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220071', N'MAG307_223_D01', N'Quản trị chuỗi cung ứng', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220072', N'DIM703_D03', N'Khởi nghiệp kinh doanh trong thời đại số', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220072', N'MAG307_223_D01', N'Quản trị chuỗi cung ứng', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220073', N'DIM703_D03', N'Khởi nghiệp kinh doanh trong thời đại số', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220073', N'ITS332_223_D01', N'Phát triển ứng dụng mã nguồn mở', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220073', N'MAG307_223_D01', N'Quản trị chuỗi cung ứng', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220074', N'DIM703_D03', N'Khởi nghiệp kinh doanh trong thời đại số', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220074', N'MAG307_223_D01', N'Quản trị chuỗi cung ứng', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220075', N'DIM703_D03', N'Khởi nghiệp kinh doanh trong thời đại số', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220075', N'MAG307_223_D01', N'Quản trị chuỗi cung ứng', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220076', N'DIM703_D03', N'Khởi nghiệp kinh doanh trong thời đại số', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220076', N'MAG309_D02', N'Quản trị marketing', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220077', N'ITS332_223_D01', N'Phát triển ứng dụng mã nguồn mở', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220077', N'MAG309_D02', N'Quản trị marketing', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220078', N'ELI302_223_D02', N'Phát âm', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220078', N'ITS332_223_D01', N'Phát triển ứng dụng mã nguồn mở', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220078', N'MAG309_D02', N'Quản trị marketing', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220079', N'ELI302_223_D02', N'Phát âm', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220079', N'ITS332_223_D01', N'Phát triển ứng dụng mã nguồn mở', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220079', N'MAG309_D02', N'Quản trị marketing', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220080', N'ELI302_223_D02', N'Phát âm', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220080', N'ITS332_223_D01', N'Phát triển ứng dụng mã nguồn mở', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220080', N'MAG309_D02', N'Quản trị marketing', 1, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220080', N'MES308_D01', N'Kinh tế học quản lý', 1, N'2022-2023')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220081', N'ELI302_223_D02', N'Phát âm', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220081', N'MES308_D01', N'Kinh tế học quản lý', 1, N'2022-2023')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220082', N'ELI302_223_D02', N'Phát âm', 2, N'2023-2024')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220082', N'MES308_D01', N'Kinh tế học quản lý', 1, N'2022-2023')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220083', N'BAF307_D03', N'Thanh toán quốc tế', 1, N'2022-2023')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220083', N'MES308_D01', N'Kinh tế học quản lý', 1, N'2022-2023')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220084', N'BAF307_D03', N'Thanh toán quốc tế', 1, N'2022-2023')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220084', N'LAW317_223_D02', N'Luật ngân hàng', 2, N'2022-2023')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220085', N'BAF307_D03', N'Thanh toán quốc tế', 1, N'2022-2023')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220085', N'LAW317_223_D02', N'Luật ngân hàng', 2, N'2022-2023')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220086', N'BAF307_D03', N'Thanh toán quốc tế', 1, N'2022-2023')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220086', N'LAW317_223_D02', N'Luật ngân hàng', 2, N'2022-2023')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220087', N'BAF307_D03', N'Thanh toán quốc tế', 1, N'2022-2023')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220087', N'LAW317_223_D03', N'Luật ngân hàng', 2, N'2022-2023')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220088', N'INE305_D01', N'Logistics quốc tế', 1, N'2022-2023')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030538220089', N'INE305_D01', N'Logistics quốc tế', 1, N'2022-2023')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030738220090', N'LAW321_D02', N'Luật tố tụng dân sự', 1, N'2022-2023')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030738220091', N'LAW321_D02', N'Luật tố tụng dân sự', 1, N'2022-2023')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030738220092', N'LAW321_D02', N'Luật tố tụng dân sự', 1, N'2022-2023')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030738220093', N'LAW317_223_D01', N'Luật ngân hàng', 2, N'2022-2023')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030738220093', N'LAW321_D02', N'Luật tố tụng dân sự', 1, N'2022-2023')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030738220094', N'LAW317_223_D02', N'Luật ngân hàng', 2, N'2022-2023')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030738220094', N'LAW321_D02', N'Luật tố tụng dân sự', 1, N'2022-2023')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030738220095', N'LAW317_223_D02', N'Luật ngân hàng', 2, N'2022-2023')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030738220096', N'LAW317_223_D01', N'Luật ngân hàng', 2, N'2022-2023')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030738220096', N'MES308_D01', N'Kinh tế học quản lý', 1, N'2022-2023')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030738220097', N'INE305_D01', N'Logistics quốc tế', 1, N'2022-2023')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030738220097', N'LAW317_223_D01', N'Luật ngân hàng', 2, N'2022-2023')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030738220098', N'INE305_D01', N'Logistics quốc tế', 1, N'2022-2023')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030738220098', N'LAW317_223_D01', N'Luật ngân hàng', 2, N'2022-2023')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030738220099', N'INE305_D01', N'Logistics quốc tế', 1, N'2022-2023')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030738220099', N'LAW317_223_D01', N'Luật ngân hàng', 2, N'2022-2023')
GO
INSERT [dbo].[DangKy] ([MaSV], [MaLHP], [MonHoc], [TenHocKy], [NamHoc]) VALUES (N'030738220100', N'LAW317_223_D04', N'Luật ngân hàng', 2, N'2022-2023')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0001', N'Nguyễn', N'Minh Nhật', CAST(N'1975-01-21' AS Date), N'Nam', N'Tiến sĩ', N'', N'BM01')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0002', N'Phan', N'Diên Vỹ', CAST(N'1969-04-22' AS Date), N'Nam', N'Tiến sĩ', N'Phó giáo sư', N'BM01')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0003', N'Trần', N'Chí Chinh', CAST(N'1970-06-16' AS Date), N'Nam', N'Tiến sĩ', N'', N'BM01')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0004', N'Nguyễn', N'Hoàng Vĩnh Lộc', CAST(N'1974-09-22' AS Date), N'Nam', N'Tiến sĩ', N'', N'BM02')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0005', N'Lê ', N'Thanh Ngọc', CAST(N'1970-04-30' AS Date), N'Nam', N'Tiến sĩ', N'', N'BM02')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0006', N'Lê ', N'Hoài Ân', CAST(N'1975-05-19' AS Date), N'Nam', N'Thạc sĩ', N'', N'BM02')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0007', N'Trần', N'Vương Thịnh', CAST(N'1971-04-23' AS Date), N'Nam', N'Tiến sĩ', N'', N'BM03')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0008', N'Trần', N'Hồng Hà', CAST(N'1979-08-09' AS Date), N'Nữ', N'Tiến sĩ', N'', N'BM03')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0009', N'Phan', N'Thị Linh', CAST(N'1977-05-11' AS Date), N'Nữ', N'Tiến sĩ', N'', N'BM03')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0010', N'Đặng ', N'Văn Dân', CAST(N'1974-05-15' AS Date), N'Nam', N'Tiến sĩ', N'Phó giáo sư', N'BM04')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0011', N'Phạm', N'Thị Mỹ Châu', CAST(N'1983-03-20' AS Date), N'Nữ', N'Thạc sĩ', N'', N'BM04')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0012', N'Lê ', N'Thị Tuyết Hoa', CAST(N'1982-02-18' AS Date), N'Nữ', N'Tiến sĩ', N'Phó giáo sư', N'BM04')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0013', N'Lê ', N'Phan Thị Diệu Thảo', CAST(N'1985-04-26' AS Date), N'Nữ', N'Tiến sĩ', N'Phó giáo sư', N'BM05')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0014', N'Dương', N'Thị Thùy An', CAST(N'1983-02-18' AS Date), N'Nữ', N'Tiến sĩ', N'', N'BM05')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0015', N'Dư', N'Thị Lan Quỳnh', CAST(N'1983-11-12' AS Date), N'Nữ', N'Tiến sĩ', N'', N'BM05')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0016', N'Nguyễn ', N'Duy Linh', CAST(N'1979-12-12' AS Date), N'Nam', N'Tiến sĩ', N'', N'BM06')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0017', N'Nguyễn', N'Anh Vũ', CAST(N'1976-10-09' AS Date), N'Nam', N'Tiến sĩ', N'', N'BM06')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0018', N'Trần', N'Tuấn Vinh', CAST(N'1979-10-20' AS Date), N'Nam', N'Tiến sĩ', N'', N'BM06')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0019', N'Đặng ', N'Trương Thanh Nhàn', CAST(N'1982-09-09' AS Date), N'Nữ', N'Tiến sĩ', N'', N'BM07')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0020', N'Nguyễn ', N'Văn Tiến', CAST(N'1974-07-13' AS Date), N'Nam', N'Tiến sĩ', N'Phó giáo sư', N'BM07')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0021', N'Trần', N'Dục Thức', CAST(N'1976-05-14' AS Date), N'Nam', N'Tiến sĩ', N'', N'BM07')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0022', N'Trần', N'Văn Đạt', CAST(N'1977-11-11' AS Date), N'Nam', N'Tiến sĩ', N'Phó giáo sư', N'BM08')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0023', N'Nguyễn', N'Thị Thanh Nhàn', CAST(N'1983-12-22' AS Date), N'Nữ', N'Tiến sĩ', N'', N'BM08')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0024', N'Nguyễn', N'Trọng Hưng', CAST(N'1979-08-14' AS Date), N'Nam', N'Tiến sĩ', N'', N'BM08')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0025', N'Phạm', N'Ngọc Thu Trang', CAST(N'1983-06-12' AS Date), N'Nữ', N'Thạc sĩ', N'', N'BM09')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0026', N'Bùi', N'Đức Sinh', CAST(N'1972-01-23' AS Date), N'Nam', N'Tiến sĩ', N'', N'BM09')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0027', N'Dương', N'Văn Bôn', CAST(N'1979-01-15' AS Date), N'Nam', N'Thạc sĩ', N'', N'BM09')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0028', N'Nguyễn ', N'Thị Kim Phụng', CAST(N'1984-07-26' AS Date), N'Nữ', N'Tiến sĩ', N'', N'BM10')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0029', N'Nguyễn', N'Quốc Thắng', CAST(N'1977-02-12' AS Date), N'Nam', N'Tiến sĩ', N'', N'BM10')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0030', N'Mai', N'Hồng Chi', CAST(N'1982-03-13' AS Date), N'Nữ', N'Tiến sĩ', N'', N'BM10')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0031', N'Nguyễn', N'Thị Hằng Nga ', CAST(N'1984-04-14' AS Date), N'Nữ', N'Tiến sĩ', N'', N'BM11')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0032', N'Nguyễn ', N'Thị Hiền ', CAST(N'1982-05-14' AS Date), N'Nữ', N'Tiến sĩ', N'', N'BM11')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0033', N'Lương', N'Xuân Minh', CAST(N'1975-04-13' AS Date), N'Nam', N'Tiến sĩ', N'', N'BM11')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0034', N'Nguyễn', N'Thị Mai Phương', CAST(N'1984-04-28' AS Date), N'Nữ', N'Tiến sĩ', N'', N'BM12')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0035', N'Đặng ', N'Đình Tân', CAST(N'1978-05-29' AS Date), N'Nam', N'Tiến sĩ', N'', N'BM12')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0036', N'Đỗ', N'Thị Hương', CAST(N'1985-06-01' AS Date), N'Nữ', N'Thạc sĩ', N'', N'BM12')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0037', N'Hà', N'Bình Minh', CAST(N'1980-10-10' AS Date), N'Nam', N'Tiến sĩ', N'', N'BM13')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0038', N'Nguyễn', N'Quang Anh', CAST(N'1975-10-21' AS Date), N'Nam', N'Tiến sĩ', N'', N'BM13')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0039', N'Trịnh', N'Hoàng Nam', CAST(N'1977-07-07' AS Date), N'Nam', N'Tiến sĩ', N'', N'BM13')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0040', N'Pham', N'Xuân Kiên', CAST(N'1981-01-28' AS Date), N'Nam', N'Tiến sĩ', N'', N'BM14')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0041', N'Nguyễn', N'Thị Thu Hà', CAST(N'1988-11-13' AS Date), N'Nữ', N'Thạc sĩ', N'', N'BM14')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0042', N'Nguyễn', N'Duy Thanh', CAST(N'1979-09-01' AS Date), N'Nam', N'Tiến sĩ', N'', N'BM14')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0043', N'Nguyễn', N'Văn Thi', CAST(N'1981-08-03' AS Date), N'Nam', N'Thạc sĩ', N'', N'BM15')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0044', N'Phó', N'Hải Đăng', CAST(N'1975-07-02' AS Date), N'Nam', N'Thạc sĩ', N'', N'BM15')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0045', N'Nguyễn', N'Văn Kiên', CAST(N'1980-06-09' AS Date), N'Nam', N'Thạc sĩ', N'', N'BM15')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0046', N'Nguyễn ', N'Ngọc Phương Dung', CAST(N'1980-12-23' AS Date), N'Nữ', N'Thạc sĩ', N'', N'BM16')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0047', N'Lưu', N'Hớn Vũ', CAST(N'1977-11-02' AS Date), N'Nam', N'Tiến sĩ', N'', N'BM16')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0048', N'Đào ', N'Nguyễn Anh Đức', CAST(N'1980-05-06' AS Date), N'Nam', N'Tiến sĩ', N'', N'BM16')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0049', N'Nguyễn', N'Quang Nhật', CAST(N'1978-11-11' AS Date), N'Nam', N'Tiến sĩ', N'', N'BM17')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0050', N'Lê ', N'Thị Thùy Nhung', CAST(N'1979-07-05' AS Date), N'Nữ', N'Tiến sĩ', N'', N'BM17')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0051', N'Phan', N'Anh', CAST(N'1981-06-16' AS Date), N'Nam', N'Thạc sĩ', N'', N'BM17')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0052', N'Lê ', N'Nguyễn Bảo', CAST(N'1980-04-17' AS Date), N'Nam', N'Thạc sĩ', N'', N'BM18')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0053', N'Đặng ', N'Thu Lan', CAST(N'1981-02-25' AS Date), N'Nữ', N'Thạc sĩ', N'', N'BM18')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0054', N'Lê ', N'Thị Ánh Tuyết', CAST(N'1981-01-01' AS Date), N'Nữ', N'Tiến sĩ', N'', N'BM19')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0055', N'Hồ', N'Thúy Ái', CAST(N'1982-05-30' AS Date), N'Nữ', N'Tiến sĩ', N'', N'BM19')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0056', N'Lê ', N'Kiên Cường', CAST(N'1977-06-30' AS Date), N'Nam', N'Tiến sĩ', N'', N'BM19')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0057', N'Nguyễn', N'Xuân Trường', CAST(N'1974-06-29' AS Date), N'Nam', N'Tiến sĩ', N'', N'BM20')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0058', N'Võ ', N'Lê Linh Đan', CAST(N'1983-11-18' AS Date), N'Nữ', N'Tiến sĩ', N'', N'BM20')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0059', N'Trương', N'Tiến Sĩ', CAST(N'1981-12-29' AS Date), N'Nam', N'Thạc sĩ', N'', N'BM20')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0060', N'Nguyễn ', N'Thị Hồng Vinh ', CAST(N'1985-01-19' AS Date), N'Nữ', N'Tiến sĩ', N'', N'BM21')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0061', N'Hà', N'Văn Dũng', CAST(N'1979-08-01' AS Date), N'Nam', N'Tiến sĩ', N'Phó giáo sư', N'BM21')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0062', N'Lê ', N'Quang Minh', CAST(N'1978-09-02' AS Date), N'Nam', N'Tiến sĩ', N'', N'BM21')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0063', N'Nguyễn', N'Kiên Bích Tuyền', CAST(N'1979-02-09' AS Date), N'Nữ', N'Tiến sĩ', N'', N'BM22')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0064', N'Viên', N'Thế Giang', CAST(N'1977-10-19' AS Date), N'Nam', N'Tiến sĩ', N'', N'BM22')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0065', N'Bùi ', N'Kim Dung', CAST(N'1978-01-29' AS Date), N'Nữ', N'Thạc sĩ', N'', N'BM22')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0066', N'Võ ', N'Song Toàn', CAST(N'1976-08-08' AS Date), N'Nam', N'Tiến sĩ', N'', N'BM23')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0067', N'Hồ', N'Xuân Thắng', CAST(N'1977-09-10' AS Date), N'Nam', N'Tiến sĩ', N'Phó giáo sư', N'BM23')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0068', N'Bùi', N'Huy Tùng', CAST(N'1976-08-23' AS Date), N'Nam', N'Thạc sĩ', N'', N'BM23')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0069', N'Nguyễn', N'Thị Thu Thủy', CAST(N'1978-05-01' AS Date), N'Nữ', N'Tiến sĩ', N'', N'BM24')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0070', N'Phạm ', N'Xuân Vương', CAST(N'1977-09-11' AS Date), N'Nam', N'Thạc sĩ', N'', N'BM24')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0071', N'Nguyễn', N'Ngọc Thảo Phương', CAST(N'1982-08-29' AS Date), N'Nữ', N'Thạc sĩ', N'', N'BM24')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0072', N'Cung ', N'Thị Tuyết Mai', CAST(N'1983-12-11' AS Date), N'Nữ', N'Tiến sĩ', N'', N'BM25')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0073', N'Nguyễn', N'Thị Thu Lài', CAST(N'1983-12-13' AS Date), N'Nữ', N'Tiến sĩ', N'', N'BM25')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0074', N'Nguyễn', N'Quốc Toàn', CAST(N'1985-04-13' AS Date), N'Nam', N'Tiến sĩ', N'', N'BM25')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0075', N'Hồ', N'Việt Hà', CAST(N'1983-01-15' AS Date), N'Nữ', N'Thạc sĩ', N'', N'BM25')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0076', N'Trần', N'Quốc Hưng', CAST(N'1987-02-10' AS Date), N'Nam', N'Thạc sĩ', N'', N'BM26')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0077', N'Phan ', N'Thị Cẩm Lai', CAST(N'1981-03-29' AS Date), N'Nữ', N'Thạc sĩ', N'', N'BM26')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0078', N'Dương ', N'Thị Thanh Hậu', CAST(N'1980-07-07' AS Date), N'Nữ', N'Thạc sĩ', N'', N'BM26')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0079', N'Nguyễn', N'Thị Trang Nhung', CAST(N'1980-08-08' AS Date), N'Nữ', N'Thạc sĩ', N'', N'BM27')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0080', N'Hà', N'Thanh Quyền', CAST(N'1979-09-09' AS Date), N'Nam', N'Thạc sĩ', N'', N'BM27')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0081', N'Trương', N'Thị Thùy Dung', CAST(N'1983-10-10' AS Date), N'Nữ', N'Thạc sĩ', N'', N'BM27')
GO
INSERT [dbo].[GiangVien] ([MaGV], [Ho], [Ten], [NgaySinh], [GioiTinh], [HocHam], [HocVi], [MaBM]) VALUES (N'GV0082', N'Nguyễn', N'Thị Hiền', CAST(N'1982-02-02' AS Date), N'Nữ', N'Thạc sĩ', N'', N'BM27')
GO
INSERT [dbo].[HocKy] ([TenHocKy], [NamHoc], [TGbatdau], [TGketthuc]) VALUES (1, N'2022 - 2023', CAST(N'2022-09-05' AS Date), CAST(N'2023-01-31' AS Date))
GO
INSERT [dbo].[HocKy] ([TenHocKy], [NamHoc], [TGbatdau], [TGketthuc]) VALUES (1, N'2023 - 2024', CAST(N'2023-09-05' AS Date), CAST(N'2024-02-15' AS Date))
GO
INSERT [dbo].[HocKy] ([TenHocKy], [NamHoc], [TGbatdau], [TGketthuc]) VALUES (2, N'2022 - 2023', CAST(N'2023-02-19' AS Date), CAST(N'2023-07-21' AS Date))
GO
INSERT [dbo].[HocKy] ([TenHocKy], [NamHoc], [TGbatdau], [TGketthuc]) VALUES (2, N'2023 - 2024', CAST(N'2024-03-02' AS Date), CAST(N'2024-07-30' AS Date))
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ACC301_223_D01', N'030138220001', 8, 6, 8, 7, 7.1)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ACC301_D01', N'030138220001', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'BAF301_223_D01', N'030138220001', 10, 9, 5, 10, 8.8)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MKE304_223_D02', N'030138220001', 8, 10, 8, 4, 6.4)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ACC301_D01', N'030138220002', 8, 8, 7, 5, 6.3)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'BAF301_223_D01', N'030138220002', 8, 7, 6, 9, 7.9)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MKE304_223_D02', N'030138220002', 8, 4, 5, 8, 6.6)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ACC301_D01', N'030138220003', 9, 9, 5, 7, 7.2)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'BAF301_223_D01', N'030138220003', 10, 8, 10, 6, 7.6)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MKE304_223_D02', N'030138220003', 8, 4, 9, 5, 5.9)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ACC301_D01', N'030138220004', 9, 9, 4, 6, 6.5)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'BAF301_223_D01', N'030138220004', 8, 10, 4, 5, 6.1)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MKE304_223_D02', N'030138220004', 10, 9, 10, 9, 9.3)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ACC301_D01', N'030138220005', 8, 9, 9, 5, 6.9)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'BAF301_223_D01', N'030138220005', 9, 9, 7, 4, 6.1)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MKE304_223_D02', N'030138220005', 10, 7, 9, 7, 7.7)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'FIN301_D01', N'030138220006', 10, 9, 5, 5, 6.3)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'FIN303_223_D02', N'030138220006', 8, 10, 8, 6, 7.4)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'FIN311_D01', N'030138220006', 9, 6, 4, 5, 5.4)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'FIN301_D01', N'030138220007', 9, 6, 4, 7, 6.4)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'FIN303_223_D02', N'030138220007', 8, 4, 10, 6, 6.6)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'FIN311_D01', N'030138220007', 10, 8, 5, 5, 6.1)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'FIN301_D01', N'030138220008', 9, 7, 10, 6, 7.3)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'FIN303_223_D02', N'030138220008', 9, 4, 7, 10, 8.1)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'FIN311_D01', N'030138220008', 8, 7, 5, 8, 7.2)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'FIN301_D01', N'030138220009', 9, 5, 10, 5, 6.4)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'FIN303_223_D02', N'030138220009', 8, 8, 4, 6, 6.2)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'FIN311_D01', N'030138220009', 9, 8, 7, 4, 5.9)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'FIN301_D01', N'030138220010', 10, 10, 7, 7, 7.9)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'FIN303_223_D02', N'030138220010', 10, 7, 8, 10, 9)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'FIN311_D01', N'030138220010', 8, 10, 8, 4, 6.4)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ACC705_D01', N'030138220011', 8, 9, 8, 6, 7.2)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'BAF308_223_D01', N'030138220011', 10, 5, 7, 8, 7.4)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'BAF308_D01', N'030138220011', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'DIM706_D01', N'030138220011', 9, 4, 10, 4, 5.7)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ACC705_D01', N'030138220012', 10, 5, 6, 4, 5.2)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'BAF308_223_D01', N'030138220012', 10, 6, 10, 6, 7.2)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'BAF308_D01', N'030138220012', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'DIM706_D01', N'030138220012', 8, 9, 5, 10, 8.6)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ACC705_D01', N'030138220013', 10, 7, 4, 9, 7.7)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'BAF308_223_D01', N'030138220013', 9, 6, 8, 9, 8.2)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'BAF308_D01', N'030138220013', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'DIM706_D01', N'030138220013', 9, 7, 9, 4, 6.1)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ACC705_D01', N'030138220014', 8, 7, 6, 5, 5.9)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'BAF308_D01', N'030138220014', 9, 6, 8, 10, 8.7)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'DIM706_D01', N'030138220014', 9, 9, 6, 9, 8.4)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ACC705_D01', N'030138220015', 8, 4, 7, 8, 7)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'BAF308_D01', N'030138220015', 8, 9, 9, 9, 8.9)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'DIM706_D01', N'030138220015', 10, 5, 5, 8, 7)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ACC705_223_D01', N'030138220016', 9, 6, 4, 5, 5.4)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MLM306_D01', N'030138220016', 9, 8, 6, 10, 8.7)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MLM307_D01', N'030138220016', 8, 6, 6, 4, 5.2)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ACC705_223_D01', N'030138220017', 9, 5, 5, 4, 4.9)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MLM306_D01', N'030138220017', 9, 9, 4, 10, 8.5)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MLM307_D01', N'030138220017', 8, 10, 8, 7, 7.9)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ACC705_223_D01', N'030138220018', 8, 7, 7, 5, 6.1)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MLM306_D01', N'030138220018', 10, 5, 5, 10, 8)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MLM307_D01', N'030138220018', 9, 7, 4, 10, 8.1)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ACC705_223_D01', N'030138220019', 10, 6, 10, 4, 6.2)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MLM306_D01', N'030138220019', 10, 10, 6, 6, 7.2)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MLM307_D01', N'030138220019', 8, 7, 5, 8, 7.2)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ACC705_223_D01', N'030138220020', 9, 9, 4, 4, 5.5)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MLM306_D01', N'030138220020', 9, 6, 5, 10, 8.1)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MLM307_D01', N'030138220020', 8, 8, 6, 6, 6.6)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MLM303_223_D01', N'030138220021', 9, 7, 5, 9, 7.8)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MLM306_D04', N'030138220021', 8, 4, 8, 10, 8.2)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MLM307_D04', N'030138220021', 8, 5, 10, 5, 6.3)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MLM303_223_D01', N'030138220022', 9, 7, 5, 4, 5.3)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MLM306_D04', N'030138220022', 10, 10, 4, 5, 6.3)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MLM307_D04', N'030138220022', 9, 5, 6, 10, 8.1)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MLM303_223_D01', N'030138220023', 9, 5, 7, 10, 8.3)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MLM306_D04', N'030138220023', 10, 6, 9, 7, 7.5)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MLM307_D04', N'030138220023', 8, 6, 6, 7, 6.7)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MLM303_223_D01', N'030138220024', 10, 6, 4, 7, 6.5)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MLM306_D04', N'030138220024', 8, 5, 9, 4, 5.6)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MLM307_D04', N'030138220024', 10, 7, 8, 8, 8)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MLM303_223_D01', N'030138220025', 8, 9, 10, 10, 9.6)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MLM306_D04', N'030138220025', 8, 5, 6, 5, 5.5)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MLM307_D04', N'030138220025', 8, 5, 4, 9, 7.1)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'BAF301_D01', N'030138220026', 10, 10, 8, 5, 7.1)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'INE305_D02', N'030138220026', 10, 6, 5, 6, 6.2)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ITS709_D01', N'030138220026', 8, 4, 10, 5, 6.1)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'BAF301_D01', N'030138220027', 10, 4, 10, 7, 7.3)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'INE305_D02', N'030138220027', 8, 6, 4, 9, 7.3)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ITS709_D01', N'030138220027', 10, 4, 10, 6, 6.8)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'BAF301_D01', N'030138220028', 10, 6, 7, 4, 5.6)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'INE305_D02', N'030138220028', 8, 7, 4, 5, 5.5)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ITS709_D01', N'030138220028', 9, 7, 9, 4, 6.1)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'BAF301_D01', N'030138220029', 10, 10, 9, 7, 8.3)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'INE305_D02', N'030138220029', 9, 8, 8, 10, 9.1)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ITS709_D01', N'030138220029', 8, 4, 4, 7, 5.9)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'BAF301_D01', N'030138220030', 10, 7, 5, 8, 7.4)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'INE305_D02', N'030138220030', 8, 4, 10, 5, 6.1)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ITS709_D01', N'030138220030', 10, 4, 8, 10, 8.4)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ACC301_223_D01', N'030138220031', 10, 5, 7, 4, 5.4)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'INE305_1_223_D02', N'030138220031', 8, 5, 6, 6, 6)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ITS322_223_D01', N'030138220031', 8, 7, 5, 5, 5.7)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ACC301_223_D01', N'030138220032', 9, 5, 8, 6, 6.5)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'INE305_1_223_D02', N'030138220032', 9, 5, 4, 7, 6.2)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ITS322_223_D01', N'030138220032', 9, 5, 6, 7, 6.6)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ACC301_223_D01', N'030138220033', 9, 10, 9, 4, 6.7)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'INE305_1_223_D02', N'030138220033', 9, 4, 4, 8, 6.5)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ITS322_223_D01', N'030138220033', 10, 9, 10, 5, 7.3)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ACC301_223_D01', N'030138220034', 9, 10, 10, 9, 9.4)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'INE305_1_223_D02', N'030138220034', 9, 10, 9, 9, 9.2)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ITS322_223_D01', N'030138220034', 9, 5, 6, 8, 7.1)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ITS322_D01', N'030138220034', 9, 9, 10, 8, 8.7)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'INE305_1_223_D02', N'030138220035', 9, 4, 10, 6, 6.7)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ITS322_223_D01', N'030138220035', 9, 8, 5, 6, 6.5)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ITS322_D01', N'030138220035', 10, 5, 4, 7, 6.3)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'BAF308_223_D01', N'030138220036', 9, 7, 9, 4, 6.1)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ENB305_D01', N'030138220036', 10, 9, 4, 9, 8.1)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MAG707_223_D01', N'030138220036', 10, 4, 7, 9, 7.7)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'BAF308_223_D01', N'030138220037', 9, 10, 6, 10, 9.1)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ENB305_D01', N'030138220037', 8, 4, 9, 6, 6.4)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MAG707_223_D01', N'030138220037', 10, 4, 9, 4, 5.6)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ENB305_D01', N'030138220038', 9, 5, 4, 6, 5.7)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'FIN303_223_D01', N'030138220038', 9, 5, 6, 10, 8.1)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MAG707_223_D01', N'030138220038', 8, 7, 7, 10, 8.6)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ENB305_D01', N'030138220039', 10, 5, 4, 6, 5.8)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'FIN303_223_D01', N'030138220039', 9, 6, 8, 10, 8.7)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MAG707_223_D01', N'030138220039', 9, 6, 8, 5, 6.2)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ENB305_D01', N'030138220040', 9, 9, 10, 6, 7.7)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'FIN301_D02', N'030138220040', 9, 7, 9, 5, 6.6)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'FIN303_223_D01', N'030138220040', 9, 10, 6, 10, 9.1)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MAG707_223_D01', N'030138220040', 9, 10, 9, 10, 9.7)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'FIN303_223_D01', N'030138220041', 10, 8, 10, 9, 9.1)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'INE308_D01', N'030138220041', 9, 10, 10, 8, 8.9)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'FIN303_223_D01', N'030138220042', 10, 7, 5, 4, 5.4)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'INE308_D01', N'030138220042', 10, 7, 9, 7, 7.7)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'INE308_D01', N'030138220043', 10, 9, 6, 7, 7.5)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'INE308_D01', N'030138220044', 9, 9, 6, 4, 5.9)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'INE308_D01', N'030138220045', 8, 5, 5, 8, 6.8)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'FIN301_D02', N'030138220046', 9, 7, 4, 8, 7.1)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'FIN301_D02', N'030138220047', 9, 6, 10, 6, 7.1)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'FIN301_D02', N'030138220048', 9, 8, 6, 7, 7.2)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'FIN301_D02', N'030138220049', 9, 7, 7, 9, 8.2)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'FIN311_D02', N'030138220050', 8, 10, 4, 9, 8.1)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'FIN311_D02', N'030138220051', 8, 6, 8, 9, 8.1)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'FIN311_D02', N'030138220052', 10, 4, 6, 6, 6)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ITS322_D01', N'030138220052', 9, 6, 8, 6, 6.7)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'FIN311_D02', N'030138220053', 10, 7, 8, 8, 8)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ITS322_D01', N'030138220053', 8, 9, 4, 5, 5.9)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'FIN311_D02', N'030138220054', 9, 10, 8, 10, 9.5)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ITS322_D01', N'030138220054', 8, 9, 9, 7, 7.9)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'BAF307_D02', N'030138220055', 10, 4, 4, 4, 4.6)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MAG707_223_D02', N'030138220055', 10, 10, 5, 4, 6)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MAG707_223_D02', N'030138220056', 9, 5, 8, 10, 8.5)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MAG707_223_D02', N'030138220057', 10, 5, 8, 6, 6.6)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MAG707_223_D02', N'030138220058', 10, 8, 6, 8, 7.8)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MAG707_223_D02', N'030138220059', 8, 7, 8, 10, 8.8)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'BAF307_D02', N'030538220056', 9, 8, 9, 8, 8.3)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'BAF307_D02', N'030538220057', 8, 9, 7, 6, 7)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'BAF307_D02', N'030538220058', 10, 5, 10, 5, 6.5)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'BAF307_D02', N'030538220059', 8, 8, 6, 6, 6.6)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'BAF307_D01', N'030538220060', 8, 5, 5, 8, 6.8)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'BAF307_D01', N'030538220061', 9, 4, 9, 9, 8)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'BAF307_D01', N'030538220062', 10, 9, 10, 10, 9.8)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'DIM703_D04', N'030538220062', 8, 6, 7, 7, 6.9)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'BAF307_D01', N'030538220063', 8, 10, 7, 6, 7.2)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'DIM703_D04', N'030538220063', 9, 10, 7, 8, 8.3)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'BAF307_D01', N'030538220064', 10, 4, 6, 5, 5.5)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'DIM703_D04', N'030538220064', 10, 4, 10, 6, 6.8)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'DIM703_D04', N'030538220065', 8, 4, 8, 6, 6.2)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'FIN311_223_D01', N'030538220065', 8, 6, 4, 4, 4.8)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'DIM703_D04', N'030538220066', 10, 10, 8, 7, 8.1)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'FIN311_223_D01', N'030538220066', 8, 9, 4, 7, 6.9)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'FIN311_223_D01', N'030538220067', 9, 6, 4, 4, 4.9)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ITS322_223_D02', N'030538220067', 10, 5, 7, 6, 6.4)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'FIN311_223_D01', N'030538220068', 8, 4, 6, 5, 5.3)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ITS322_223_D02', N'030538220068', 8, 6, 9, 7, 7.3)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'FIN311_223_D01', N'030538220069', 9, 10, 6, 6, 7.1)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ITS322_223_D02', N'030538220069', 8, 5, 8, 5, 5.9)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ITS322_223_D02', N'030538220070', 8, 10, 8, 10, 9.4)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ITS322_223_D02', N'030538220071', 8, 6, 8, 10, 8.6)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MAG307_223_D01', N'030538220071', 8, 7, 6, 4, 5.4)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'DIM703_D03', N'030538220072', 10, 5, 8, 7, 7.1)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MAG307_223_D01', N'030538220072', 9, 10, 9, 9, 9.2)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'DIM703_D03', N'030538220073', 8, 8, 5, 7, 6.9)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ITS332_223_D01', N'030538220073', 10, 5, 5, 4, 5)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MAG307_223_D01', N'030538220073', 10, 4, 7, 5, 5.7)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'DIM703_D03', N'030538220074', 9, 9, 4, 4, 5.5)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MAG307_223_D01', N'030538220074', 10, 5, 10, 7, 7.5)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'DIM703_D03', N'030538220075', 10, 10, 7, 10, 9.4)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MAG307_223_D01', N'030538220075', 9, 7, 10, 8, 8.3)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'DIM703_D03', N'030538220076', 10, 7, 7, 7, 7.3)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MAG309_D02', N'030538220076', 9, 7, 9, 10, 9.1)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ITS332_223_D01', N'030538220077', 8, 5, 6, 10, 8)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MAG309_D02', N'030538220077', 10, 8, 10, 8, 8.6)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ELI302_223_D02', N'030538220078', 10, 4, 8, 4, 5.4)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ITS332_223_D01', N'030538220078', 10, 10, 7, 10, 9.4)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MAG309_D02', N'030538220078', 9, 5, 4, 7, 6.2)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ELI302_223_D02', N'030538220079', 8, 8, 7, 9, 8.3)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ITS332_223_D01', N'030538220079', 10, 10, 5, 7, 7.5)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MAG309_D02', N'030538220079', 9, 6, 4, 7, 6.4)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ELI302_223_D02', N'030538220080', 9, 9, 9, 8, 8.5)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ITS332_223_D01', N'030538220080', 10, 7, 4, 6, 6.2)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MAG309_D02', N'030538220080', 9, 8, 7, 9, 8.4)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MES308_D01', N'030538220080', 9, 10, 9, 7, 8.2)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ELI302_223_D02', N'030538220081', 8, 5, 10, 10, 8.8)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MES308_D01', N'030538220081', 8, 5, 9, 10, 8.6)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'ELI302_223_D02', N'030538220082', 10, 6, 7, 6, 6.6)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MES308_D01', N'030538220082', 9, 6, 5, 8, 7.1)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'BAF307_D03', N'030538220083', 8, 8, 5, 4, 5.4)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MES308_D01', N'030538220083', 8, 8, 5, 4, 5.4)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'BAF307_D03', N'030538220084', 10, 8, 7, 7, 7.5)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'LAW317_223_D02', N'030538220084', 10, 8, 4, 4, 5.4)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'BAF307_D03', N'030538220085', 8, 5, 4, 5, 5.1)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'LAW317_223_D02', N'030538220085', 9, 5, 9, 5, 6.2)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'BAF307_D03', N'030538220086', 9, 5, 4, 6, 5.7)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'LAW317_223_D02', N'030538220086', 8, 4, 5, 7, 6.1)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'BAF307_D03', N'030538220087', 10, 4, 9, 4, 5.6)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'LAW317_223_D03', N'030538220087', 8, 7, 9, 6, 7)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'INE305_D01', N'030538220088', 8, 10, 8, 10, 9.4)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'INE305_D01', N'030538220089', 10, 6, 5, 10, 8.2)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'LAW321_D02', N'030738220090', 9, 5, 7, 8, 7.3)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'LAW321_D02', N'030738220091', 10, 4, 5, 5, 5.3)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'LAW321_D02', N'030738220092', 10, 9, 7, 4, 6.2)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'LAW317_223_D01', N'030738220093', 10, 6, 7, 6, 6.6)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'LAW321_D02', N'030738220093', 8, 4, 7, 4, 5)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'LAW317_223_D02', N'030738220094', 9, 7, 7, 7, 7.2)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'LAW321_D02', N'030738220094', 9, 4, 4, 4, 4.5)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'LAW317_223_D02', N'030738220095', 10, 4, 7, 4, 5.2)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'LAW317_223_D01', N'030738220096', 8, 9, 4, 9, 7.9)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'MES308_D01', N'030738220096', 9, 6, 4, 10, 7.9)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'INE305_D01', N'030738220097', 10, 9, 5, 7, 7.3)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'LAW317_223_D01', N'030738220097', 8, 5, 10, 9, 8.3)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'INE305_D01', N'030738220098', 10, 10, 10, 8, 9)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'LAW317_223_D01', N'030738220098', 8, 6, 10, 10, 9)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'INE305_D01', N'030738220099', 10, 8, 5, 4, 5.6)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'LAW317_223_D01', N'030738220099', 9, 5, 9, 7, 7.2)
GO
INSERT [dbo].[KetQua] ([MaLHP], [MaSV], [DiemChuyenCan], [Bai_KTGK], [BTN], [ThiKTHP], [DTB]) VALUES (N'LAW317_223_D04', N'030738220100', 8, 7, 9, 5, 6.5)
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'ACC301_223_D01', N'Nguyên lý kế toán', 60, N'4', 1, 5, 1, 9, N'MH27', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'ACC301_223_D02', N'Nguyên lý kế toán', 60, N'6', 1, 5, 12, 20, N'MH27', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'ACC301_223_D03', N'Nguyên lý kế toán', 60, N'3', 6, 10, 12, 20, N'MH27', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'ACC301_223_D04', N'Nguyên lý kế toán', 60, N'2 - 3', 6, 10, 12, 20, N'MH27', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'ACC301_223_D05', N'Nguyên lý kế toán', 60, N'6', 1, 5, 12, 20, N'MH27', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'ACC301_D01', N'Nguyên lý kế toán', 60, N'7 - 3', 1, 5, 1, 9, N'MH27', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'ACC301_D02', N'Nguyên lý kế toán', 60, N'7 - 3', 6, 10, 1, 9, N'MH27', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'ACC301_D03', N'Nguyên lý kế toán', 60, N'6', 1, 5, 12, 20, N'MH27', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'ACC301_D04', N'Nguyên lý kế toán', 60, N'4', 1, 5, 12, 20, N'MH27', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'ACC301_D05', N'Nguyên lý kế toán', 60, N'6', 6, 10, 12, 20, N'MH27', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'ACC305_223_D02', N'Kế toán công', 80, N'3', 6, 10, 1, 9, N'MH32', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'ACC306_D01', N'Kế toán ngân hàng', 70, N'3', 1, 5, 1, 9, N'MH31', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'ACC306_D02', N'Kế toán ngân hàng', 70, N'4', 6, 10, 1, 9, N'MH31', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'ACC702_D01', N'Kế toán chi phí', 60, N'4', 1, 5, 12, 20, N'MH30', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'ACC702_D02', N'Kế toán chi phí', 60, N'3', 1, 5, 12, 20, N'MH30', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'ACC705_223_D01', N'Kế toán tài chính', 70, N'4', 6, 10, 1, 9, N'MH28', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'ACC705_223_D02', N'Kế toán tài chính', 70, N'3 - 4', 1, 5, 13, 20, N'MH28', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'ACC705_D01', N'Kế toán tài chính', 60, N'6', 1, 5, 1, 9, N'MH28', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'ACC705_D02', N'Kế toán tài chính', 60, N'3', 1, 5, 2, 10, N'MH28', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'ACC705_D03', N'Kế toán tài chính', 60, N'2', 1, 5, 12, 20, N'MH28', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'ACC705_D04', N'Kế toán tài chính', 60, N'6', 6, 10, 12, 20, N'MH28', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'ACC707_D01', N'Kế toán tài chính tại các doanh nghiệp đặc thù', 80, N'2', 1, 5, 2, 10, N'MH29', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'ACC707_D02', N'Kế toán tài chính tại các doanh nghiệp đặc thù', 80, N'2', 6, 10, 2, 10, N'MH29', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'ACC714_223_D01', N'Kiểm toán báo cáo tài chính ', 80, N'4', 1, 5, 1, 9, N'MH33', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'ACC714_223_D02', N'Kiểm toán báo cáo tài chính ', 80, N'5 - 3', 6, 10, 1, 9, N'MH33', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'BAF301_223_D01', N'Hoạt động kinh doanh ngân hàng', 60, N'5-3', 1, 5, 3, 20, N'MH01', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'BAF301_223_D02', N'Hoạt động kinh doanh ngân hàng', 60, N'3-5', 1, 5, 1, 9, N'MH01', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'BAF301_223_D03', N'Hoạt động kinh doanh ngân hàng', 60, N'5-6', 6, 10, 1, 9, N'MH01', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'BAF301_D01', N'Hoạt động kinh doanh ngân hàng', 60, N'4', 1, 5, 1, 9, N'MH01', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'BAF302_D01', N'Kinh doanh ngoại hối', 70, N'4', 6, 10, 1, 9, N'MH07', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'BAF302_D02', N'Kinh doanh ngoại hối', 70, N'4', 1, 5, 1, 9, N'MH07', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'BAF306_223_D01', N'Thẩm định định giá tài sản', 80, N'3', 6, 10, 1, 9, N'MH06', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'BAF306_D01', N'Thẩm định định giá tài sản', 60, N'6', 1, 5, 1, 9, N'MH06', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'BAF306_D02', N'Thẩm định định giá tài sản', 60, N'6', 6, 10, 12, 20, N'MH06', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'BAF307_223_D01', N'Thanh toán quốc tế', 60, N'4', 1, 5, 1, 9, N'MH03', 2, N'2022-2023')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'BAF307_223_D02', N'Thanh toán quốc tế', 60, N'5', 1, 5, 12, 20, N'MH03', 2, N'2022-2023')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'BAF307_D01', N'Thanh toán quốc tế', 60, N'5', 6, 10, 1, 9, N'MH03', 1, N'2022-2023')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'BAF307_D02', N'Thanh toán quốc tế', 60, N'7 - 3', 1, 5, 3, 9, N'MH03', 1, N'2022-2023')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'BAF307_D03', N'Thanh toán quốc tế', 60, N'7 - 2', 6, 10, 3, 9, N'MH03', 1, N'2022-2023')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'BAF308_223_D01', N'Tín dụng ngân hàng', 75, N'5', 6, 10, 12, 20, N'MH04', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'BAF308_D01', N'Tín dụng ngân hàng', 75, N'6', 1, 5, 12, 20, N'MH04', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'BAF311_D01', N'Thẩm định dự án đầu tư', 50, N'4', 1, 5, 1, 9, N'MH17', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'BAF311_D02', N'Thẩm định dự án đầu tư', 50, N'4', 6, 10, 1, 9, N'MH17', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'BAF311_D03', N'Thẩm định dự án đầu tư', 50, N'2', 6, 10, 2, 10, N'MH17', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'BAF704_223_D01', N'Phái sinh tiền tệ', 70, N'3', 1, 5, 1, 9, N'MH08', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'BAF704_223_D02', N'Phái sinh tiền tệ', 70, N'4 - 5', 1, 5, 13, 20, N'MH08', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'DIM703_223_D01', N'Khởi nghiệp kinh doanh trong thời đại số', 60, N'3 - 5', 1, 5, 13, 20, N'MH24', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'DIM703_223_D02', N'Khởi nghiệp kinh doanh trong thời đại số', 60, N'2 3', 6, 10, 13, 20, N'MH24', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'DIM703_D01', N'Khởi nghiệp kinh doanh trong thời đại số', 60, N'7 - 3', 1, 5, 2, 9, N'MH24', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'DIM703_D02', N'Khởi nghiệp kinh doanh trong thời đại số', 60, N'2', 6, 10, 2, 20, N'MH24', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'DIM703_D03', N'Khởi nghiệp kinh doanh trong thời đại số', 60, N'2', 1, 5, 2, 20, N'MH24', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'DIM703_D04', N'Khởi nghiệp kinh doanh trong thời đại số', 60, N'7 - 3', 6, 10, 12, 20, N'MH24', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'DIM706_D01', N'Marketing số', 80, N'5', 6, 10, 12, 20, N'MH22', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'ELI301_D01', N'Ngữ pháp', 70, N'6', 1, 5, 1, 9, N'MH46', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'ELI302_223_D01', N'Phát âm', 60, N'3', 1, 5, 1, 9, N'MH45', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'ELI302_223_D02', N'Phát âm', 60, N'5', 1, 5, 12, 20, N'MH45', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'ELI305_D01', N'Ngữ nghĩa học', 60, N'5', 6, 10, 12, 17, N'MH49', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'ELI305_D02', N'Ngữ nghĩa học', 60, N'5', 1, 5, 12, 17, N'MH49', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'ENB305_D01', N'Phiên dịch thương mại', 60, N'5', 1, 5, 1, 9, N'MH48', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'ENB305_D02', N'Phiên dịch thương mại', 60, N'5', 6, 10, 1, 9, N'MH48', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'FIN301_223_D01', N'Lý thuyết tài chính tiền tệ', 60, N'3 - 4', 1, 5, 13, 20, N'MH11', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'FIN301_223_D02', N'Lý thuyết tài chính tiền tệ', 60, N'4', 1, 5, 1, 9, N'MH11', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'FIN301_223_D03', N'Lý thuyết tài chính tiền tệ', 60, N'2 - 3', 6, 10, 13, 20, N'MH11', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'FIN301_D01', N'Lý thuyết tài chính tiền tệ', 60, N'6', 1, 5, 1, 9, N'MH11', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'FIN301_D02', N'Lý thuyết tài chính tiền tệ', 60, N'5', 1, 5, 1, 9, N'MH11', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'FIN301_D03', N'Lý thuyết tài chính tiền tệ', 60, N'5', 6, 10, 1, 9, N'MH11', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'FIN303_223_D01', N'Tài chính doanh nghiệp', 60, N'2', 1, 5, 1, 9, N'MH12', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'FIN303_223_D02', N'Tài chính doanh nghiệp', 60, N'3', 1, 5, 1, 9, N'MH12', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'FIN303_223_D03', N'Tài chính doanh nghiệp', 60, N'2', 6, 19, 1, 9, N'MH12', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'FIN303_D01', N'Tài chính doanh nghiệp', 60, N'3', 1, 5, 1, 9, N'MH12', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'FIN303_D02', N'Tài chính doanh nghiệp', 60, N'2', 6, 10, 2, 10, N'MH12', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'FIN303_D03', N'Tài chính doanh nghiệp', 60, N'2', 1, 5, 2, 10, N'MH12', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'FIN306_223_D01', N'Tài chính công ty đa quốc gia', 80, N'6', 6, 10, 12, 20, N'MH13', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'FIN306_D01', N'Tài chính công ty đa quốc gia', 60, N'3', 6, 10, 1, 9, N'MH13', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'FIN306_D02', N'Tài chính công ty đa quốc gia', 60, N'4', 1, 5, 1, 9, N'MH13', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'FIN309_D01', N'Đầu tư tài chính', 60, N'5', 1, 5, 1, 9, N'MH16', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'FIN309_D02', N'Đầu tư tài chính', 60, N'3', 1, 5, 1, 9, N'MH16', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'FIN311_223_D01', N'Thuế', 60, N'6', 1, 5, 1, 9, N'MH09', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'FIN311_223_D02', N'Thuế', 60, N'7 - 2', 1, 5, 15, 22, N'MH09', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'FIN311_D01', N'Thuế', 60, N'5', 6, 10, 12, 20, N'MH09', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'FIN311_D02', N'Thuế', 60, N'5', 1, 5, 12, 20, N'MH09', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'FIN312_223_D01', N'Bảo hiểm', 80, N'3 - 2', 6, 10, 1, 9, N'MH10', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'FIN312_D01', N'Bảo hiểm', 80, N'3', 1, 5, 1, 9, N'MH10', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'INE305_1_223_D01', N'Logistics quốc tế', 60, N'5 - 2', 1, 5, 1, 9, N'MH55', 2, N'2022-2023')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'INE305_1_223_D02', N'Logistics quốc tế', 60, N'6', 1, 5, 12, 20, N'MH55', 2, N'2022-2023')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'INE305_D01', N'Logistics quốc tế', 60, N'7 - 4', 6, 10, 1, 9, N'MH55', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'INE305_D02', N'Logistics quốc tế', 60, N'7 - 4', 1, 5, 1, 9, N'MH55', 1, N'2022-2023')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'INE306_223_D01', N'Kinh doanh quốc tế', 60, N'4', 1, 5, 1, 9, N'MH56', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'INE306_223_D02', N'Kinh doanh quốc tế', 60, N'5', 1, 5, 12, 20, N'MH56', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'INE306_D01', N'Kinh doanh quốc tế', 60, N'6', 1, 5, 1, 9, N'MH56', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'INE307_223_D01', N'Tài chính quốc tế', 60, N'4', 1, 5, 1, 9, N'MH14', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'INE307_223_D02', N'Tài chính quốc tế', 60, N'2 - 6', 1, 5, 13, 20, N'MH14', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'INE307_D01', N'Tài chính quốc tế', 80, N'5', 1, 5, 12, 20, N'MH14', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'INE308_D01', N'Kỹ thuật ngoại thương', 60, N'7 - 5', 1, 5, 1, 9, N'MH51', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'INE309_223_D01', N'Quản trị dự án quốc tế', 80, N'6', 6, 10, 1, 9, N'MH59', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'INE310_223_D01', N'Chiến lược kinh doanh quốc tế', 60, N'4', 1, 5, 1, 9, N'MH58', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'INE310_223_D02', N'Chiến lược kinh doanh quốc tế', 60, N'5 - 7', 1, 5, 1, 8, N'MH58', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'INE310_D02', N'Chiến lược kinh doanh quốc tế', 80, N'2 - 7', 1, 5, 13, 20, N'MH58', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'INE311_D01', N'Đầu tư quốc tế', 60, N'4', 1, 5, 1, 9, N'MH57', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'ITB302_D01', N'Marketing điện tử', 60, N'4', 6, 10, 12, 20, N'MH44', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'ITB302_D02', N'Marketing điện tử', 60, N'4', 1, 5, 12, 20, N'MH44', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'ITS319_D01', N'Đảm bảo chất lượng và kiểm thử phần mềm', 80, N'6', 1, 5, 1, 9, N'MH42', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'ITS322_223_D01', N'Hệ quản trị cơ sở dữ liệu', 60, N'4', 6, 10, 1, 9, N'MH39', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'ITS322_223_D02', N'Hệ quản trị cơ sở dữ liệu', 60, N'2 - 7', 6, 10, 13, 20, N'MH39', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'ITS322_223_D03', N'Hệ quản trị cơ sở dữ liệu', 60, N'5 - 4', 1, 5, 1, 9, N'MH39', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'ITS322_D01', N'Hệ quản trị cơ sở dữ liệu', 65, N'5 -7', 6, 10, 1, 9, N'MH39', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'ITS332_223_D01', N'Phát triển ứng dụng mã nguồn mở', 60, N'6 - 3', 1, 5, 1, 9, N'MH43', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'ITS339_223_D01', N'Phân tích thiết kế hệ thống thông tin', 60, N'3 - 4', 6, 10, 1, 9, N'MH37', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'ITS339_223_D02', N'Phân tích thiết kế hệ thống thông tin', 60, N'2 - 3', 1, 5, 13, 20, N'MH37', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'ITS339_223_D03', N'Phân tích thiết kế hệ thống thông tin', 60, N'5 - 4', 1, 5, 1, 8, N'MH37', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'ITS344_223_D01', N'Quản trị dự án hệ thống thông tin', 80, N'6 - 5', 6, 10, 1, 9, N'MH40', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'ITS346_223_D01', N'Quản trị tác nghiệp thương mại điện tử', 70, N'5', 1, 5, 1, 6, N'MH41', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'ITS346_223_D02', N'Quản trị tác nghiệp thương mại điện tử', 70, N'5', 1, 5, 12, 17, N'MH41', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'ITS708_D01', N'Lập trình web', 60, N'2 - 3', 6, 10, 2, 9, N'MH38', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'ITS708_D02', N'Lập trình web', 60, N'5 - 3', 1, 5, 12, 20, N'MH38', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'ITS708_D03', N'Lập trình web', 60, N'5 - 3', 6, 10, 12, 20, N'MH38', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'ITS709_D01', N'Mạng máy tính và truyền thông', 60, N'3 - 5', 1, 5, 1, 9, N'MH36', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'ITS709_D02', N'Mạng máy tính và truyền thông', 60, N'2 - 4', 1, 5, 1, 9, N'MH36', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'ITS709_D03', N'Mạng máy tính và truyền thông', 60, N'2 - 4', 6, 10, 13, 20, N'MH36', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'LAW302_223_D01', N'Luật Hiến pháp', 60, N'2', 1, 5, 1, 9, N'MH63', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'LAW302_223_D02', N'Luật Hiến pháp', 60, N'4', 6, 10, 1, 9, N'MH63', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'LAW304_223_D01', N'Luật kinh doanh', 70, N'5 - 6', 1, 5, 1, 9, N'MH67', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'LAW304_D01', N'Luật kinh doanh', 70, N'5 - 7', 1, 5, 14, 20, N'MH67', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'LAW306_223_D01', N'Luật Dân sự 1', 60, N'5 - 2', 6, 10, 1, 9, N'MH60', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'LAW307_223_D01', N'Luật Dân sự 2', 60, N'6', 1, 5, 12, 20, N'MH61', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'LAW308_223_D01', N'Luật hành chính', 60, N'6', 1, 5, 1, 9, N'MH62', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'LAW308_223_D02', N'Luật hành chính', 60, N'6', 6, 10, 1, 9, N'MH62', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'LAW309_223_D01', N'Luật hình sự', 60, N'6', 6, 10, 12, 20, N'MH64', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'LAW309_223_D02', N'Luật hình sự', 60, N'2 - 5', 6, 10, 13, 20, N'MH64', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'LAW317_223_D01', N'Luật ngân hàng', 60, N'6', 1, 5, 12, 20, N'MH66', 2, N'2022-2023')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'LAW317_223_D02', N'Luật ngân hàng', 60, N'6', 1, 5, 12, 20, N'MH66', 2, N'2022-2023')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'LAW321_D01', N'Luật tố tụng dân sự', 60, N'4', 6, 10, 1, 9, N'MH65', 1, N'2022-2023')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'LAW321_D02', N'Luật tố tụng dân sự', 60, N'5', 1, 5, 1, 9, N'MH65', 1, N'2022-2023')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'MAG307_223_D01', N'Quản trị chuỗi cung ứng', 80, N'3 - 5', 1, 5, 13, 20, N'MH26', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'MAG307_223_D02', N'Nguyên lý kế toán', 80, N'3 - 5', 6, 10, 13, 20, N'MH27', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'MAG307_D01', N'Quản trị chuỗi cung ứng', 60, N'2', 1, 5, 2, 10, N'MH26', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'MAG307_D02', N'Quản trị chuỗi cung ứng', 60, N'2', 6, 10, 2, 10, N'MH26', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'MAG307_D03', N'Quản trị chuỗi cung ứng', 60, N'4', 1, 5, 1, 9, N'MH26', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'MAG308_223_D01', N'Quản trị dự án', 80, N'6 - 5', 6, 10, 1, 9, N'MH25', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'MAG308_D01', N'Quản trị dự án', 80, N'2', 1, 5, 1, 9, N'MH25', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'MAG309_D01', N'Quản trị marketing', 60, N'4', 1, 5, 1, 9, N'MH23', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'MAG309_D02', N'Quản trị marketing', 60, N'7 - 2', 1, 5, 2, 9, N'MH23', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'MAG309_D03', N'Quản trị marketing', 60, N'7 - 2', 6, 10, 2, 9, N'MH23', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'MAG318_D01', N'Đàm phán kinh doanh quốc tế', 80, N'6', 1, 5, 12, 20, N'MH53', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'MAG320_223_D01', N'Quản trị nguồn nhân lực', 60, N'5 - 4', 6, 10, 1, 9, N'MH19', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'MAG320_223_D02', N'Quản trị nguồn nhân lực', 60, N'3 - 4', 1, 5, 13, 20, N'MH19', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'MAG320_223_D03', N'Quản trị nguồn nhân lực', 60, N'5 - 7', 1, 5, 1, 8, N'MH19', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'MAG320_D01', N'Quản trị nguồn nhân lực', 70, N'5', 6, 10, 12, 20, N'MH19', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'MAG320_D02', N'Quản trị nguồn nhân lực', 70, N'5', 1, 5, 12, 20, N'MH19', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'MAG704_D01', N'Quản trị lực lượng bán hàng', 70, N'5', 1, 5, 1, 9, N'MH20', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'MAG704_D02', N'Quản trị lực lượng bán hàng', 70, N'5', 6, 10, 1, 9, N'MH20', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'MAG704_D03', N'Quản trị lực lượng bán hàng', 70, N'4', 1, 5, 12, 20, N'MH20', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'MAG707_223_D02', N'Truyền thông kinh doanh', 60, N'4', 1, 5, 1, 9, N'MH18', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'MES308_D01', N'Kinh tế học quản lý', 70, N'3', 6, 10, 1, 9, N'MH52', 1, N'2022-2023')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'MKE304_223_D01', N'Marketing dịch vụ tài chính', 60, N'2', 6, 10, 1, 9, N'MH02', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'MKE304_223_D02', N'Marketing dịch vụ tài chính', 60, N'3 - 6', 6, 10, 3, 20, N'MH02', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'MKE304_D01', N'Marketing dịch vụ tài chính', 60, N'6', 1, 5, 1, 9, N'MH02', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'MKE304_D02', N'Marketing dịch vụ tài chính', 60, N'6', 6, 10, 1, 9, N'MH02', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'MLM303_223_D01', N'Tư tưởng Hồ Chí Minh', 50, N'4', 1, 5, 1, 6, N'MH73', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'MLM303_223_D02', N'Tư tưởng Hồ Chí Minh', 50, N'4', 1, 5, 13, 18, N'MH73', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'MLM303_223_D03', N'Tư tưởng Hồ Chí Minh', 50, N'4', 6, 10, 1, 6, N'MH73', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'MLM303_223_D04', N'Tư tưởng Hồ Chí Minh', 50, N'4', 6, 10, 13, 18, N'MH73', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'MLM303_223_D05', N'Tư tưởng Hồ Chí Minh', 50, N'5', 1, 5, 12, 17, N'MH73', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'MLM303_223_D06', N'Tư tưởng Hồ Chí Minh', 50, N'5', 1, 5, 1, 6, N'MH73', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'MLM303_223_D07', N'Tư tưởng Hồ Chí Minh', 50, N'7', 6, 10, 2, 7, N'MH73', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'MLM303_223_D08', N'Tư tưởng Hồ Chí Minh', 50, N'5', 6, 10, 1, 6, N'MH73', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'MLM306_D01', N'Triết học Mác-LêNin', 50, N'7', 6, 10, 5, 17, N'MH69', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'MLM306_D02', N'Triết học Mác-LêNin', 50, N'2', 1, 5, 5, 17, N'MH69', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'MLM306_D03', N'Triết học Mác-LêNin', 50, N'5', 6, 10, 5, 17, N'MH69', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'MLM306_D04', N'Triết học Mác-LêNin', 50, N'4', 1, 5, 7, 19, N'MH69', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'MLM306_D05', N'Triết học Mác-LêNin', 50, N'4', 6, 10, 7, 19, N'MH69', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'MLM306_D06', N'Triết học Mác-LêNin', 50, N'2', 1, 5, 6, 18, N'MH69', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'MLM306_D07', N'Triết học Mác-LêNin', 50, N'5', 6, 10, 6, 18, N'MH69', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'MLM307_D01', N'Kinh tế chính trị Mác-LêNin', 60, N'6', 1, 5, 1, 6, N'MH70', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'MLM307_D02', N'Kinh tế chính trị Mác-LêNin', 60, N'6', 6, 10, 1, 6, N'MH70', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'MLM307_D03', N'Kinh tế chính trị Mác-LêNin', 60, N'5', 6, 10, 1, 6, N'MH70', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'MLM307_D04', N'Kinh tế chính trị Mác-LêNin', 60, N'3', 6, 10, 1, 6, N'MH70', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'MLM307_D05', N'Kinh tế chính trị Mác-LêNin', 60, N'2', 1, 5, 1, 6, N'MH70', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'MLM307_D06', N'Kinh tế chính trị Mác-LêNin', 60, N'7', 1, 5, 2, 7, N'MH70', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'MLM307_D07', N'Kinh tế chính trị Mác-LêNin', 60, N'4', 6, 10, 1, 6, N'MH70', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'MLM307_D08', N'Kinh tế chính trị Mác-LêNin', 60, N'3', 1, 5, 1, 6, N'MH70', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'MLM308_223_D01', N'Chủ nghĩa xã hội khoa học', 50, N'5', 1, 5, 1, 6, N'MH71', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'MLM308_223_D02', N'Chủ nghĩa xã hội khoa học', 50, N'5', 1, 5, 1, 6, N'MH71', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'MLM308_223_D03', N'Chủ nghĩa xã hội khoa học', 50, N'7', 1, 5, 2, 7, N'MH71', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'MLM308_223_D04', N'Chủ nghĩa xã hội khoa học', 50, N'7', 6, 10, 1, 6, N'MH71', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'SOC301_223_D01', N'Cơ sở văn hóa Việt Nam', 60, N'6', 1, 5, 1, 6, N'MH75', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'SOC301_223_D02', N'Cơ sở văn hóa Việt Nam', 60, N'4', 6, 10, 1, 6, N'MH75', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'SOC301_D01', N'Cơ sở văn hóa Việt Nam', 60, N'4', 1, 5, 2, 13, N'MH75', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'SOC301_D02', N'Cơ sở văn hóa Việt Nam', 60, N'4', 1, 5, 2, 13, N'MH75', 1, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'SOC309_223_D01', N'Văn học Anh- Mỹ', 60, N'4', 6, 10, 1, 9, N'MH47', 2, N'2023-2024')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [TenLHP], [SL_DangKy], [Thu], [TietBatDau], [TietKetThuc], [TuanBatDau], [TuanKetThuc], [MaMH], [TenHocKy], [NamHoc]) VALUES (N'SOC309_223_D02', N'Văn học Anh- Mỹ', 60, N'3 - 6', 1, 5, 13, 20, N'MH47', 2, N'2023-2024')
GO
INSERT [dbo].[LopSinhHoat] ([MaLop], [TenLop], [SoLuong], [MaGV]) VALUES (N'ML01', N'DH38NH01', 55, N'GV0002')
GO
INSERT [dbo].[LopSinhHoat] ([MaLop], [TenLop], [SoLuong], [MaGV]) VALUES (N'ML02', N'DH38NH02', 34, N'GV0003')
GO
INSERT [dbo].[LopSinhHoat] ([MaLop], [TenLop], [SoLuong], [MaGV]) VALUES (N'ML03', N'DH38CT01', 11, N'GV0009')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH01', 1, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH01', 2, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH02', 2, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH03', 1, N'2022-2023')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH04', 1, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH04', 2, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH05', 1, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH06', 2, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH07', 2, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH08', 1, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH09', 1, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH09', 2, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH10', 2, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH11', 1, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH12', 2, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH13', 2, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH14', 2, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH15', 1, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH16', 2, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH17', 1, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH18', 2, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH19', 1, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH20', 1, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH21', 2, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH22', 1, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH23', 1, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH24', 1, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH25', 1, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH26', 2, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH27', 1, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH27', 2, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH28', 1, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH28', 2, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH29', 1, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH30', 2, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH31', 1, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH32', 1, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH33', 2, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH34', 2, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH35', 1, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH36', 1, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH37', 2, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH38', 1, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH39', 1, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH39', 2, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH40', 2, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH41', 2, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH42', 1, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH43', 2, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH44', 1, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH45', 2, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH46', 1, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH47', 1, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH48', 1, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH49', 1, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH50', 1, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH51', 1, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH52', 1, N'2022-2023')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH53', 1, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH54', 1, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH55', 1, N'2022-2023')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH55', 2, N'2022-2023')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH56', 2, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH57', 1, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH58', 2, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH59', 1, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH60', 1, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH61', 1, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH62', 2, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH63', 2, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH64', 1, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH65', 1, N'2022-2023')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH66', 2, N'2022-2023')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH67', 2, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH68', 1, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH69', 1, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH70', 1, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH71', 2, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH72', 1, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH73', 2, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH74', 1, N'2023-2024')
GO
INSERT [dbo].[MoMonHoc] ([MaMH], [TenHocKy], [NamHoc]) VALUES (N'MH75', 2, N'2023-2024')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH01', N'Hoạt động kinh doanh ngân hàng', N'Banking Operation', 3, N'BM01')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH02', N'Marketing dịch vụ tài chính', N'Marketing in Financial Service', 3, N'BM01')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH03', N'Thanh toán quốc tế', N'International payment', 3, N'BM01')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH04', N'Tín dụng ngân hàng', N'Bank Lending', 3, N'BM02')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH05', N'Thẩm định dự án ', N'Project Appraisal
', 3, N'BM02')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH06', N'Thẩm định định giá tài sản', N'Asset Appraisal', 3, N'BM02')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH07', N'Kinh doanh ngoại hối', N'Forex Trading', 3, N'BM03')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH08', N'Phái sinh tiền tệ', N'Currency derivatives', 3, N'BM03')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH09', N'Thuế', N'Taxation', 3, N'BM04')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH10', N'Bảo hiểm', N'Insurance', 3, N'BM04')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH11', N'Lý thuyết tài chính tiền tệ', N'Theory of finance and money', 3, N'BM04')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH12', N'Tài chính doanh nghiệp', N'Corporate finance', 3, N'BM05')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH13', N'Tài chính công ty đa quốc gia', N'Multinational corporation finance', 3, N'BM05')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH14', N'Tài chính quốc tế', N'International finance', 3, N'BM05')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH15', N'Ứng dụng và định giá phái sinh nâng cao', N'Advanced derivatives pricing and applications', 3, N'BM06')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH16', N'Đầu tư tài chính', N'Financial investment', 3, N'BM06')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH17', N'Thẩm định dự án đầu tư', N'Investment Project appraisal', 3, N'BM06')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH18', N'Truyền thông kinh doanh', N'Business Communication', 3, N'BM07')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH19', N'Quản trị nguồn nhân lực', N'Human Resource Management', 3, N'BM07')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH20', N'Quản trị lực lượng bán hàng', N'Sales force management', 3, N'BM07')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH21', N'Chiến lược kinh doanh số', N'Digital bussinesss strategy', 3, N'BM08')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH22', N'Marketing số', N'Digital Marketing', 3, N'BM08')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH23', N'Quản trị marketing', N'Marketing Manager', 3, N'BM08')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH24', N'Khởi nghiệp kinh doanh trong thời đại số', N'Starting business in the digital age', 3, N'BM09')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH25', N'Quản trị dự án', N'Project management ', 3, N'BM09')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH26', N'Quản trị chuỗi cung ứng', N'Managing the supply chain', 3, N'BM09')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH27', N'Nguyên lý kế toán', N'Accounting principles', 3, N'BM10')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH28', N'Kế toán tài chính', N'Financial accountant', 3, N'BM10')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH29', N'Kế toán tài chính tại các doanh nghiệp đặc thù', N'Financial accounting at specific business', 3, N'BM10')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH30', N'Kế toán chi phí', N'Cost accounting', 3, N'BM11')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH31', N'Kế toán ngân hàng', N'Bank accountant', 3, N'BM11')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH32', N'Kế toán công', N'Accountants', 3, N'BM11')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH33', N'Kiểm toán báo cáo tài chính ', N'Audited financial statements', 3, N'BM12')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH34', N'Kiểm toán công nghệ thông tin', N'Information technology audit', 3, N'BM12')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH35', N'Kiểm soát nội bộ', N'Internal control', 3, N'BM12')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH36', N'Mạng máy tính và truyền thông', N'Computer Network and Communication', 3, N'BM13')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH37', N'Phân tích thiết kế hệ thống thông tin', N'Information Systems Analysis and Design', 3, N'BM13')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH38', N'Lập trình web', N'Web programming', 3, N'BM13')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH39', N'Hệ quản trị cơ sở dữ liệu', N'Database Management Systems', 3, N'BM14')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH40', N'Quản trị dự án hệ thống thông tin', N'Information Systems Project Management', 3, N'BM14')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH41', N'Quản trị tác nghiệp thương mại điện tử', N'Operational Management in E-Commerce', 3, N'BM14')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH42', N'Đảm bảo chất lượng và kiểm thử phần mềm', N'Software testing and Quality assurance', 3, N'BM15')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH43', N'Phát triển ứng dụng mã nguồn mở', N'Developing Open Source Software', 3, N'BM15')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH44', N'Marketing điện tử', N'Electronic Marketing', 3, N'BM15')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH45', N'Phát âm', N'Pronounce', 3, N'BM16')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH46', N'Ngữ pháp', N'Grammar', 3, N'BM16')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH47', N'Văn học Anh- Mỹ', N'Anglo-American Literature', 3, N'BM17')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH48', N'Phiên dịch thương mại', N'Commercial interpretation', 4, N'BM17')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH49', N'Ngữ nghĩa học', N'Semantics', 2, N'BM18')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH50', N'Ngoại ngữ 2 (1), (2), (3), (4)', N'Foreign language 2 (1), (2), (3), (4)', 16, N'BM18')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH51', N'Kỹ thuật ngoại thương', N'Foreign Trade Operations', 3, N'BM19')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH52', N'Kinh tế học quản lý', N'Managerial Economics', 3, N'BM19')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH53', N'Đàm phán kinh doanh quốc tế', N'International Business Negotiations', 3, N'BM19')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH54', N'Thanh toán quốc tế', N'International Payment', 3, N'BM20')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH55', N'Logistics quốc tế', N'International Logistics', 3, N'BM20')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH56', N'Kinh doanh quốc tế', N'International Business', 3, N'BM20')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH57', N'Đầu tư quốc tế', N'International Investment', 3, N'BM21')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH58', N'Chiến lược kinh doanh quốc tế', N'International Business Strategy', 3, N'BM21')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH59', N'Quản trị dự án quốc tế', N'International Project Management', 3, N'BM21')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH60', N'Luật Dân sự 1', N'Civil Law 1', 3, N'BM22')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH61', N'Luật Dân sự 2', N'Civil Law 2', 3, N'BM22')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH62', N'Luật hành chính', N'Administrative law', 3, N'BM22')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH63', N'Luật Hiến pháp', N'Constitutional law', 3, N'BM23')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH64', N'Luật hình sự', N'Criminal law', 3, N'BM23')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH65', N'Luật tố tụng dân sự', N'Civil Procedure Code', 3, N'BM23')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH66', N'Luật ngân hàng', N'Banking law', 3, N'BM24')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH67', N'Luật kinh doanh', N'Business law', 3, N'BM24')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH68', N'Luật đầu tư', N'Investment law', 3, N'BM24')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH69', N'Triết học Mác-LêNin', N'Marxist-Leninist philosophy', 2, N'BM25')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH70', N'Kinh tế chính trị Mác-LêNin', N'Marxist-Leninist political economy', 2, N'BM25')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH71', N'Chủ nghĩa xã hội khoa học', N'Science socialism', 2, N'BM25')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH72', N'Lịch sử Đảng Cộng Sản Việt Nam', N'History of the Communist Party of Vietnam', 2, N'BM26')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH73', N'Tư tưởng Hồ Chí Minh', N'Ho Chi Minh Thought', 2, N'BM26')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH74', N'Xã hội học', N'Sociology', 2, N'BM27')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenTV], [TenTA], [SoTC], [MaGV]) VALUES (N'MH75', N'Cơ sở văn hóa Việt Nam', N'Vietnamese cultural establishment', 3, N'BM27')
GO
INSERT [dbo].[NganhHoc] ([MaNganh], [TenNganh]) VALUES (N'N01', N'Ngành Tài chính Ngân hàng')
GO
INSERT [dbo].[NganhHoc] ([MaNganh], [TenNganh]) VALUES (N'N02', N'Ngành Quản trị kinh doanh')
GO
INSERT [dbo].[NganhHoc] ([MaNganh], [TenNganh]) VALUES (N'N03', N'Ngành Ngôn ngữ Anh')
GO
INSERT [dbo].[NganhHoc] ([MaNganh], [TenNganh]) VALUES (N'N04', N'Ngành Luật kinh tế')
GO
INSERT [dbo].[NganhHoc] ([MaNganh], [TenNganh]) VALUES (N'N05', N'Ngành Kinh tế quốc tế')
GO
INSERT [dbo].[NganhHoc] ([MaNganh], [TenNganh]) VALUES (N'N06', N'Ngành kế toán')
GO
INSERT [dbo].[NganhHoc] ([MaNganh], [TenNganh]) VALUES (N'N07', N'Ngành Hệ thống thông tin quản lý')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'ACC301_223_D01', N'GV0029')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'ACC301_223_D02', N'GV0030')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'ACC301_223_D03', N'GV0030')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'ACC301_223_D04', N'GV0030')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'ACC301_223_D05', N'GV0030')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'ACC301_D01', N'GV0028')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'ACC301_D02', N'GV0028')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'ACC301_D03', N'GV0028')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'ACC301_D04', N'GV0029')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'ACC301_D05', N'GV0029')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'ACC305_223_D02', N'GV0033')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'ACC306_D01', N'GV0032')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'ACC306_D02', N'GV0033')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'ACC702_D01', N'GV0031')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'ACC702_D02', N'GV0032')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'ACC705_223_D01', N'GV0030')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'ACC705_223_D02', N'GV0030')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'ACC705_D01', N'GV0028')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'ACC705_D02', N'GV0028')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'ACC705_D03', N'GV0029')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'ACC705_D04', N'GV0029')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'ACC707_D01', N'GV0029')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'ACC707_D02', N'GV0030')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'ACC714_223_D01', N'GV0034')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'ACC714_223_D02', N'GV0035')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'BAF301_223_D01', N'GV0003')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'BAF301_223_D02', N'GV0002')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'BAF301_223_D03', N'GV0005')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'BAF301_D01', N'GV0001')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'BAF302_D01', N'GV0008')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'BAF302_D02', N'GV0007')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'BAF306_223_D01', N'GV0005')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'BAF306_D01', N'GV0004')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'BAF306_D02', N'GV0005')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'BAF307_223_D01', N'GV0007')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'BAF307_223_D01', N'GV009')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'BAF307_223_D02', N'GV0007')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'BAF307_D01', N'GV0009')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'BAF307_D01', N'GV0024')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'BAF307_D02', N'GV0008')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'BAF307_D02', N'GV007')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'BAF307_D03', N'GV0003')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'BAF307_D03', N'GV008')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'BAF308_223_D01', N'GV0003')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'BAF308_D01', N'GV0004')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'BAF311_D01', N'GV0006')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'BAF311_D02', N'GV0006')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'BAF311_D03', N'GV0004')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'BAF704_223_D01', N'GV0008')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'BAF704_223_D02', N'GV0007')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'DIM703_223_D01', N'GV0024')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'DIM703_223_D02', N'GV0023')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'DIM703_D01', N'GV0021')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'DIM703_D02', N'GV0023')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'DIM703_D03', N'GV0025')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'DIM703_D04', N'GV0025')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'DIM706_D01', N'GV0021')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'ELI301_D01', N'GV0049')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'ELI302_223_D01', N'GV0049')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'ELI302_223_D02', N'GV0049')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'ELI305_D01', N'GV0051')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'ELI305_D02', N'GV0051')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'ENB305_D01', N'GV0050')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'ENB305_D02', N'GV0051')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'FIN301_223_D01', N'GV0011')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'FIN301_223_D02', N'GV0011')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'FIN301_223_D03', N'GV0012')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'FIN301_D01', N'GV0011')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'FIN301_D02', N'GV0012')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'FIN301_D03', N'GV0010')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'FIN303_223_D01', N'GV0015')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'FIN303_223_D02', N'GV0015')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'FIN303_223_D03', N'GV0013')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'FIN303_D01', N'GV0013')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'FIN303_D02', N'GV0013')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'FIN303_D03', N'GV0014')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'FIN306_223_D01', N'GV0015')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'FIN306_D01', N'GV0013')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'FIN306_D02', N'GV0014')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'FIN309_D01', N'GV0017')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'FIN309_D02', N'GV0018')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'FIN311_223_D01', N'GV0010')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'FIN311_223_D02', N'GV0011')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'FIN311_D01', N'GV0011')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'FIN311_D02', N'GV0012')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'FIN312_223_D01', N'GV0012')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'FIN312_D01', N'GV0011')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'INE305_1_223_D01', N'GV0058')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'INE305_1_223_D02', N'GV0059')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'INE305_D01', N'GV007')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'INE305_D02', N'GV008')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'INE306_223_D01', N'GV0058')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'INE306_223_D02', N'GV0060')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'INE306_D01', N'GV0057')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'INE307_223_D01', N'GV0051')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'INE307_223_D02', N'GV0050')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'INE307_D01', N'GV0050')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'INE308_D01', N'GV0057')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'INE309_223_D01', N'GV0058')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'INE310_223_D01', N'GV0055')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'INE310_223_D02', N'GV0055')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'INE310_D02', N'GV0058')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'INE311_D01', N'GV0058')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'ITB302_D01', N'GV0044')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'ITB302_D02', N'GV0045')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'ITS319_D01', N'GV0042')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'ITS322_223_D01', N'GV0040')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'ITS322_223_D02', N'GV0041')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'ITS322_223_D03', N'GV0042')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'ITS322_D01', N'GV0040')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'ITS332_223_D01', N'GV0038')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'ITS339_223_D01', N'GV0040')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'ITS339_223_D02', N'GV0041')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'ITS339_223_D03', N'GV0042')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'ITS344_223_D01', N'GV0042')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'ITS346_223_D01', N'GV0043')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'ITS346_223_D02', N'GV0044')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'ITS708_D01', N'GV0037')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'ITS708_D02', N'GV0038')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'ITS708_D03', N'GV0039')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'ITS709_D01', N'GV0037')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'ITS709_D02', N'GV0037')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'ITS709_D03', N'GV0038')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'LAW302_223_D01', N'GV0067')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'LAW302_223_D02', N'GV0067')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'LAW304_223_D01', N'GV0068')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'LAW304_D01', N'GV0067')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'LAW306_223_D01', N'GV0065')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'LAW307_223_D01', N'GV0065')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'LAW308_223_D01', N'GV0066')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'LAW308_223_D02', N'GV0066')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'LAW309_223_D01', N'GV0068')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'LAW309_223_D02', N'GV0068')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'LAW317_223_D01', N'GV0070')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'LAW317_223_D02', N'GV0070')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'LAW321_D01', N'GV0069')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'LAW321_D02', N'GV0069')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'MAG307_223_D01', N'GV0024')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'MAG307_223_D02', N'GV0025')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'MAG307_D01', N'GV0020')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'MAG307_D02', N'GV0020')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'MAG307_D03', N'GV0024')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'MAG308_223_D01', N'GV0021')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'MAG308_D01', N'GV0019')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'MAG309_D01', N'GV0023')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'MAG309_D02', N'GV0024')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'MAG309_D03', N'GV0025')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'MAG318_D01', N'GV0023')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'MAG320_223_D01', N'GV0020')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'MAG320_223_D02', N'GV0020')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'MAG320_223_D03', N'GV0021')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'MAG320_D01', N'GV0019')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'MAG320_D02', N'GV0019')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'MAG704_D01', N'GV0019')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'MAG704_D02', N'GV0020')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'MAG704_D03', N'GV0021')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'MAG707_223_D02', N'GV0021')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'MES308_D01', N'GV0054')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'MKE304_223_D01', N'GV0009')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'MKE304_223_D02', N'GV0009')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'MKE304_D01', N'GV0001')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'MKE304_D02', N'GV0003')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'MLM303_223_D01', N'GV0076')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'MLM303_223_D02', N'GV0076')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'MLM303_223_D03', N'GV0077')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'MLM303_223_D04', N'GV0077')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'MLM303_223_D05', N'GV0078')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'MLM303_223_D06', N'GV0078')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'MLM303_223_D07', N'GV0076')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'MLM303_223_D08', N'GV0076')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'MLM306_D01', N'GV0072')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'MLM306_D02', N'GV0072')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'MLM306_D03', N'GV0072')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'MLM306_D04', N'GV0073')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'MLM306_D05', N'GV0073')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'MLM306_D06', N'GV0074')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'MLM306_D07', N'GV0074')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'MLM307_D01', N'GV0073')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'MLM307_D02', N'GV0074')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'MLM307_D03', N'GV0074')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'MLM307_D04', N'GV0074')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'MLM307_D05', N'GV0072')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'MLM307_D06', N'GV0072')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'MLM307_D07', N'GV0073')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'MLM307_D08', N'GV0073')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'MLM308_223_D01', N'GV0074')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'MLM308_223_D02', N'GV0074')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'MLM308_223_D03', N'GV0075')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'MLM308_223_D04', N'GV0075')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'SOC301_223_D01', N'GV0072')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'SOC301_223_D01', N'GV0077')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'SOC301_223_D02', N'GV0072')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'SOC301_223_D02', N'GV0078')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'SOC301_D01', N'GV0074')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'SOC301_D02', N'GV0075')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'SOC309_223_D01', N'GV0050')
GO
INSERT [dbo].[PhuTrach] ([MaLHP], [MaGV]) VALUES (N'SOC309_223_D02', N'GV0050')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220001', N'Nguyễn', N'Văn An', CAST(N'2004-01-01' AS Date), N'Nam', N'030138220001@st.buh.edu.vn', N'0901234567', N'092302005853', N'Thành phố Cần Thơ', N'Thành phố Cần Thơ', N'10, Đường Hoàng Văn Thụ, Phường An Hòa, Quận Ninh Kiều, Cần Thơ', N'K38', CAST(N'2022-10-17' AS Date), N'CN01', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220002', N'Trần', N'Thị Bình', CAST(N'2004-01-02' AS Date), N'Nữ', N'030138220002@st.buh.edu.vn', N'0912345678', N'079204701815', N'Thành phố Hồ Chí Minh', N'Thành phố Hồ Chí Minh', N'72, Đường Nguyễn Huệ, Phường Bến Nghé, Quận 1, TP. Hồ Chí Minh', N'K38', CAST(N'2022-10-17' AS Date), N'CN01', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220003', N'Lê', N'Minh Cường', CAST(N'2004-01-03' AS Date), N'Nam', N'030138220003@st.buh.edu.vn', N'0923456789', N'038304755257', N'Thanh Hóa', N'Thanh Hóa', N'976, Đường Lê Lợi, Phường Điện Biên, Thành phố Thanh Hóa, Thanh Hóa', N'K38', CAST(N'2022-10-17' AS Date), N'CN01', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220004', N'Phạm', N'Thanh Dung', CAST(N'2004-01-04' AS Date), N'Nữ', N'030138220004@st.buh.edu.vn', N'0934567890', N'079204345985', N'Thành phố Hồ Chí Minh', N'Thành phố Hồ Chí Minh', N'532, Đường Phạm Ngũ Lão, Phường Phạm Ngũ Lão, Quận 1, TP. Hồ Chí Minh', N'K38', CAST(N'2022-10-17' AS Date), N'CN01', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220005', N'Hoàng', N'Hải Đăng', CAST(N'2004-01-05' AS Date), N'Nam', N'030138220005@st.buh.edu.vn', N'0945678901', N'011204827461', N'Điện Biên', N'Điện Biên', N'781, Đường Điện Biên Phủ, Phường Tân Thanh, TP. Điện Biên, Điện Biên', N'K38', CAST(N'2022-10-17' AS Date), N'CN01', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220006', N'Vũ', N'Ngọc Anh', CAST(N'2004-01-06' AS Date), N'Nữ', N'030138220006@st.buh.edu.vn', N'0916546115', N'052204315715', N'Bình Định', N'Bình Định', N'64, Đường Nguyễn Tất Thành, Phường Trần Hưng Đạo, TP. Quy Nhơn, Bình Định', N'K38', CAST(N'2022-10-17' AS Date), N'CN01', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220007', N'Đặng', N'Quốc Bảo', CAST(N'2004-01-07' AS Date), N'Nam', N'030138220007@st.buh.edu.vn', N'0914569875', N'067304349952', N'Đắk Nông', N'Đắk Nông', N'67, Đường Lê Duẩn, Phường Nghĩa Trung, TP. Gia Nghĩa, Đắk Nông', N'K38', CAST(N'2022-10-17' AS Date), N'CN01', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220008', N'Bùi', N'Lan Chi', CAST(N'2004-01-08' AS Date), N'Nữ', N'030138220008@st.buh.edu.vn', N'0913549542', N'037304192348', N'Ninh Bình', N'Ninh Bình', N'90, Đường Trần Hưng Đạo, Phường Bích Đào, TP. Ninh Bình, Ninh Bình', N'K38', CAST(N'2022-10-17' AS Date), N'CN01', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220009', N'Đỗ', N'Hoàng Dương', CAST(N'2004-01-09' AS Date), N'Nam', N'030138220009@st.buh.edu.vn', N'0925761145', N'014304232972', N'Sơn La', N'Sơn La', N'42, Đường Mai Hắc Đế, Phường Chiềng Sinh, TP. Sơn La, Sơn La', N'K38', CAST(N'2022-10-17' AS Date), N'CN01', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220010', N'Phan', N'Minh Em', CAST(N'2004-01-10' AS Date), N'Nữ', N'030138220010@st.buh.edu.vn', N'0925841699', N'042304179553', N'Hà Tĩnh', N'Hà Tĩnh', N'554, Đường Nguyễn Du, Phường Thạch Linh, TP. Hà Tĩnh, Hà Tĩnh', N'K38', CAST(N'2022-10-17' AS Date), N'CN01', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220011', N'Đinh', N'Văn Hiếu', CAST(N'2004-01-11' AS Date), N'Nam', N'030138220011@st.buh.edu.vn', N'0948784156', N'094304575752', N'Sóc Trăng', N'Sóc Trăng', N'568, Đường 30/4, Phường 5, TP. Sóc Trăng, Sóc Trăng', N'K38', CAST(N'2022-10-17' AS Date), N'CN02', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220012', N'Mai', N'Thị Hoa', CAST(N'2004-01-12' AS Date), N'Nữ', N'030138220012@st.buh.edu.vn', N'0915648651', N'079204800362', N'Thành phố Hồ Chí Minh', N'Thành phố Hồ Chí Minh', N'901, Đường Cách Mạng Tháng Tám, Phường Bến Thành, Quận 1, TP. Hồ Chí Minh', N'K38', CAST(N'2022-10-17' AS Date), N'CN02', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220013', N'Lý', N'Hồng Sơn', CAST(N'2004-01-13' AS Date), N'Nam', N'030138220013@st.buh.edu.vn', N'0945456654', N'024204458329', N'Bắc Giang', N'Bắc Giang', N'54, Đường Hoàng Văn Thụ, Phường Ngô Quyền, TP. Bắc Giang, Bắc Giang', N'K38', CAST(N'2022-10-17' AS Date), N'CN02', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220014', N'Lưu', N'Thu Hương', CAST(N'2004-01-14' AS Date), N'Nữ', N'030138220014@st.buh.edu.vn', N'0965484133', N'084204591772', N'Trà Vinh', N'Trà Vinh', N'16, Đường Lê Lợi, Phường 1, TP. Trà Vinh, Trà Vinh', N'K38', CAST(N'2022-10-17' AS Date), N'CN02', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220015', N'Trịnh', N'Hoàng Hải', CAST(N'2004-01-15' AS Date), N'Nam', N'030138220015@st.buh.edu.vn', N'0956465151', N'015204132252', N'Yên Bái', N'Yên Bái', N'39, Đường Nguyễn Tất Thành, Phường Yên Thịnh, TP. Yên Bái, Yên Bái', N'K38', CAST(N'2022-10-17' AS Date), N'CN02', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220016', N'Ngô', N'Thị Vân', CAST(N'2004-01-16' AS Date), N'Nữ', N'030138220016@st.buh.edu.vn', N'0915615651', N'081204832989', N'Tiền Giang', N'Tiền Giang', N'81, Đường Võ Văn Kiệt, Phường 2, TP. Mỹ Tho, Tiền Giang', N'K38', CAST(N'2022-10-17' AS Date), N'CN02', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220017', N'Dương', N'Tấn Phát', CAST(N'2004-01-17' AS Date), N'Nam', N'030138220017@st.buh.edu.vn', N'0945645155', N'077304333518', N'Bà Rịa-Vũng Tàu', N'Bà Rịa-Vũng Tàu', N'634, Đường Võ Thị Sáu, Phường Nguyễn An Ninh, TP. Vũng Tàu, Bà Rịa-Vũng Tàu', N'K38', CAST(N'2022-10-17' AS Date), N'CN02', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220018', N'Hồ', N'Bảo Trâm', CAST(N'2004-01-18' AS Date), N'Nữ', N'030138220018@st.buh.edu.vn', N'0915648654', N'04304158883', N'Cao Bằng', N'Cao Bằng', N'37, Đường Điện Biên Phủ, Phường Sông Bằng, TP. Cao Bằng, Cao Bằng', N'K38', CAST(N'2022-10-17' AS Date), N'CN02', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220019', N'Phùng', N'Quang Minh', CAST(N'2004-01-19' AS Date), N'Nam', N'030138220019@st.buh.edu.vn', N'0956464855', N'066208605743', N'Đắk Lắk', N'Đắk Lắk', N'560, Đường Nguyễn Đình Chiểu, Phường Tân An, TP. Buôn Ma Thuột, Đắk Lắk', N'K38', CAST(N'2022-10-17' AS Date), N'CN02', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220020', N'Cao', N'Thu Hiền', CAST(N'2004-01-20' AS Date), N'Nữ', N'030138220020@st.buh.edu.vn', N'0949874613', N'082304442157', N'Bến Tre', N'Bến Tre', N'43, Đường Nguyễn Đình Chiểu, Phường 2, TP. Bến Tre, Bến Tre', N'K38', CAST(N'2022-10-17' AS Date), N'CN02', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220021', N'Tô', N'Minh Thắng', CAST(N'2004-01-21' AS Date), N'Nam', N'030138220021@st.buh.edu.vn', N'0989761531', N'045204736366', N'Quảng Trị', N'Quảng Trị', N'534, Đường Lê Duẩn, Phường 1, TP. Đông Hà, Quảng Trị', N'K38', CAST(N'2022-10-17' AS Date), N'CN02', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220022', N'Đoàn', N'Thùy Trang', CAST(N'2004-01-22' AS Date), N'Nữ', N'030138220022@st.buh.edu.vn', N'0987984166', N'087306690471', N'Đồng Tháp', N'Đồng Tháp', N'658, Đường Lê Hồng Phong, Phường 2, TP. Cao Lãnh, Đồng Tháp', N'K38', CAST(N'2022-10-17' AS Date), N'CN03', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220023', N'Trương', N'Tấn Thành', CAST(N'2004-01-23' AS Date), N'Nam', N'030138220023@st.buh.edu.vn', N'0948785612', N'077306182100', N'Bà Rịa-Vũng Tàu', N'Bà Rịa-Vũng Tàu', N'701, Đường Võ Thị Sáu, Phường Nguyễn An Ninh, TP. Vũng Tàu, Bà Rịa-Vũng Tàu', N'K38', CAST(N'2022-10-17' AS Date), N'CN03', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220024', N'Trịnh', N'Mỹ Linh', CAST(N'2004-01-24' AS Date), N'Nữ', N'030138220024@st.buh.edu.vn', N'0948976133', N'051304000163', N'Quảng Ngãi', N'Quảng Ngãi', N'23, Đường Trần Phú, Phường Trần Phú, TP. Quảng Ngãi, Quảng Ngãi', N'K38', CAST(N'2022-10-17' AS Date), N'CN03', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220025', N'Châu', N'Phương Anh', CAST(N'2004-01-25' AS Date), N'Nữ', N'030138220025@st.buh.edu.vn', N'0916546521', N'060306009490', N'Bình Thuận', N'Bình Thuận', N'786, Đường Lê Lợi, Phường Phước Long, TP. Phan Thiết, Bình Thuận', N'K38', CAST(N'2022-10-17' AS Date), N'CN03', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220026', N'Tạ', N'Công Duy', CAST(N'2004-01-26' AS Date), N'Nam', N'030138220026@st.buh.edu.vn', N'0941564651', N'06304049458', N'Bắc Kạn', N'Bắc Kạn', N'75, Đường Hoàng Văn Thụ, Phường Nguyễn Thái Học, TP. Bắc Kạn, Bắc Kạn', N'K38', CAST(N'2022-10-17' AS Date), N'CN03', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220027', N'Bạch', N'Quỳnh Chi', CAST(N'2004-01-27' AS Date), N'Nữ', N'030138220027@st.buh.edu.vn', N'0948979813', N'072308856278', N'Tây Ninh', N'Tây Ninh', N'51, Đường Trần Hưng Đạo, Phường 1, TP. Tây Ninh, Tây Ninh', N'K38', CAST(N'2022-10-17' AS Date), N'CN03', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220028', N'Lương', N'Thanh Tú', CAST(N'2004-01-28' AS Date), N'Nam', N'030138220028@st.buh.edu.vn', N'0948978133', N'079204513701', N'Thành phố Hồ Chí Minh', N'Thành phố Hồ Chí Minh', N'604, Đường Nguyễn Công Trứ, Phường Nguyễn Thái Bình, Quận 1, TP. Hồ Chí Minh', N'K38', CAST(N'2022-10-17' AS Date), N'CN03', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220029', N'Võ', N'Lan Anh', CAST(N'2004-01-29' AS Date), N'Nữ', N'030138220029@st.buh.edu.vn', N'0348748515', N'036304715372', N'Nam Định', N'Nam Định', N'37, Đường Hùng Vương, Phường Văn Miếu, TP. Nam Định, Nam Định', N'K38', CAST(N'2022-10-17' AS Date), N'CN03', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220030', N'Khuất', N'Phương Thảo', CAST(N'2004-01-30' AS Date), N'Nữ', N'030138220030@st.buh.edu.vn', N'0348945616', N'061204187673', N'Kon Tum', N'Kon Tum', N'11, Đường Nguyễn Huệ, Phường Trần Hưng Đạo, TP. Kon Tum, Kon Tum', N'K38', CAST(N'2022-10-17' AS Date), N'CN03', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220031', N'Nguyễn', N'Hữu Nghĩa', CAST(N'2004-01-31' AS Date), N'Nam', N'030138220031@st.buh.edu.vn', N'0348789413', N'026201581675', N'Vĩnh Phúc', N'Vĩnh Phúc', N'522, Đường Lý Thường Kiệt, Phường Đống Đa, TP. Vĩnh Yên, Vĩnh Phúc', N'K38', CAST(N'2022-10-17' AS Date), N'CN03', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220032', N'Lê', N'Kim Ngân', CAST(N'2004-02-01' AS Date), N'Nữ', N'030138220032@st.buh.edu.vn', N'0348485485', N'035304316455', N'Hà Nam', N'Hà Nam', N'865, Đường Lê Lợi, Phường Phủ Lý, TP. Phủ Lý, Hà Nam', N'K38', CAST(N'2022-10-17' AS Date), N'CN03', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220033', N'Nguyễn', N'Đức Toàn', CAST(N'2004-02-02' AS Date), N'Nam', N'030138220033@st.buh.edu.vn', N'0348978946', N'08304666542', N'Tuyên Quang', N'Tuyên Quang', N'64, Đường Hùng Vương, Phường Tân Quang, TP. Tuyên Quang, Tuyên Quang', N'K38', CAST(N'2022-10-17' AS Date), N'CN04', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220034', N'Huỳnh', N'Gia Hân', CAST(N'2004-02-03' AS Date), N'Nữ', N'030138220034@st.buh.edu.vn', N'0348489415', N'011201508862', N'Điện Biên', N'Điện Biên', N'655, Đường Điện Biên Phủ, Phường Mường Thanh, TP. Điện Biên Phủ, Điện Biên', N'K38', CAST(N'2022-10-17' AS Date), N'CN04', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220035', N'Nguyễn', N'Hoàng Sơn', CAST(N'2004-02-04' AS Date), N'Nam', N'030138220035@st.buh.edu.vn', N'0387845215', N'022204685923', N'Quảng Ninh', N'Quảng Ninh', N'76, Đường Hạ Long, Phường Bãi Cháy, TP. Hạ Long, Quảng Ninh', N'K38', CAST(N'2022-10-17' AS Date), N'CN04', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220036', N'Nguyễn', N'Thị Nhung', CAST(N'2004-02-05' AS Date), N'Nữ', N'030138220036@st.buh.edu.vn', N'0387987541', N'080204696338', N'Long An', N'Long An', N'567, Đường 30/4, Phường 2, TP. Tân An, Long An', N'K38', CAST(N'2022-10-17' AS Date), N'CN04', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220037', N'Trần', N'Bảo Ngọc', CAST(N'2004-02-06' AS Date), N'Nữ', N'030138220037@st.buh.edu.vn', N'0378461515', N'02304568493', N'Hà Giang', N'Hà Giang', N'778, Đường Quang Trung, Phường Ngọc Hà, TP. Hà Giang, Hà Giang', N'K38', CAST(N'2022-10-17' AS Date), N'CN04', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220038', N'Nguyễn', N'Văn Toàn', CAST(N'2004-02-07' AS Date), N'Nam', N'030138220038@st.buh.edu.vn', N'0348751256', N'042304456897', N'Hà Tĩnh', N'Hà Tĩnh', N'89, Đường Nguyễn Du, Phường Thạch Linh, TP. Hà Tĩnh, Hà Tĩnh', N'K38', CAST(N'2022-10-17' AS Date), N'CN04', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220039', N'Trần', N'Ngọc Bảo', CAST(N'2004-02-08' AS Date), N'Nam', N'030138220039@st.buh.edu.vn', N'0389784651', N'052204975765', N'Bình Định', N'Bình Định', N'451, Đường Lý Thường Kiệt, Phường Trần Phú, TP. Quy Nhơn, Bình Định', N'K38', CAST(N'2022-10-17' AS Date), N'CN04', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220040', N'Nguyễn', N'Văn Khoa', CAST(N'2004-02-09' AS Date), N'Nam', N'030138220040@st.buh.edu.vn', N'0359847897', N'096204612255', N'Cà Mau', N'Cà Mau', N'92, Đường Trần Phú, Phường 8, TP. Cà Mau, Cà Mau', N'K38', CAST(N'2022-10-17' AS Date), N'CN04', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220041', N'Trần', N'Minh Thư', CAST(N'2004-02-10' AS Date), N'Nữ', N'030138220041@st.buh.edu.vn', N'0348946515', N'048304524217', N'Thành phố Đà Nẵng', N'Thành phố Đà Nẵng', N'67, Đường Nguyễn Tất Thành, Phường Hải Châu I, Quận Hải Châu, Đà Nẵng', N'K38', CAST(N'2022-10-17' AS Date), N'CN04', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220042', N'Hoàng', N'Hải Nam', CAST(N'2004-02-11' AS Date), N'Nam', N'030138220042@st.buh.edu.vn', N'0389789786', N'012204535469', N'Lai Châu', N'Lai Châu', N'544, Đường Điện Biên Phủ, Phường Tân Phong, TP. Lai Châu, Lai Châu', N'K38', CAST(N'2022-10-17' AS Date), N'CN05', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220043', N'Trương', N'Bảo Duy', CAST(N'2004-02-12' AS Date), N'Nam', N'030138220043@st.buh.edu.vn', N'0348789455', N'001209547881', N'Thành phố Hà Nội', N'Thành phố Hà Nội', N'135, Đường Hoàng Diệu, Phường Quán Thánh, Quận Ba Đình, Hà Nội', N'K38', CAST(N'2022-10-17' AS Date), N'CN05', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220044', N'Trần', N'Thảo Vy', CAST(N'2004-02-13' AS Date), N'Nữ', N'030138220044@st.buh.edu.vn', N'0348789784', N'079204599775', N'Thành phố Hồ Chí Minh', N'Thành phố Hồ Chí Minh', N'542, Đường Nguyễn Huệ, Phường Bến Nghé, Quận 1, TP. Hồ Chí Minh', N'K38', CAST(N'2022-10-17' AS Date), N'CN05', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220045', N'Lý', N'Thành Đạt', CAST(N'2004-02-14' AS Date), N'Nam', N'030138220045@st.buh.edu.vn', N'0348787455', N'079204266873', N'Thành phố Hồ Chí Minh', N'Thành phố Hồ Chí Minh', N'74, Đường Nguyễn Công Trứ, Phường Nguyễn Thái Bình, Quận 1, TP. Hồ Chí Minh', N'K38', CAST(N'2022-10-17' AS Date), N'CN05', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220046', N'Hồ', N'Hương Giang', CAST(N'2004-02-15' AS Date), N'Nữ', N'030138220046@st.buh.edu.vn', N'0965152155', N'025204656173', N'Phú Thọ', N'Phú Thọ', N'448, Đường Hùng Vương, Phường Âu Cơ, TP. Việt Trì, Phú Thọ', N'K38', CAST(N'2022-10-17' AS Date), N'CN05', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220047', N'Trần', N'Khánh Hòa', CAST(N'2004-02-16' AS Date), N'Nữ', N'030138220047@st.buh.edu.vn', N'0945415333', N'031304729918', N'Thành phố Hải Phòng', N'Thành phố Hải Phòng', N'439, Đường Lạch Tray, Phường Đằng Giang, Quận Ngô Quyền, Hải Phòng', N'K38', CAST(N'2022-10-17' AS Date), N'CN05', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220048', N'Nguyễn', N'Văn Sơn', CAST(N'2004-02-17' AS Date), N'Nam', N'030138220048@st.buh.edu.vn', N'0948946531', N'042304012846', N'Hà Tĩnh', N'Hà Tĩnh', N'31, Đường Nguyễn Du, Phường Thạch Linh, TP. Hà Tĩnh, Hà Tĩnh', N'K38', CAST(N'2022-10-17' AS Date), N'CN05', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220049', N'Nguyễn', N'Quốc Khánh', CAST(N'2004-02-18' AS Date), N'Nam', N'030138220049@st.buh.edu.vn', N'0348946516', N'070303155937', N'Bình Phước', N'Bình Phước', N'91, Đường Lý Thường Kiệt, Phường Tân Tiến, TP. Phước Long, Bình Phước', N'K38', CAST(N'2022-10-17' AS Date), N'CN05', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220050', N'Lê', N'Thị Bích', CAST(N'2004-02-19' AS Date), N'Nữ', N'030138220050@st.buh.edu.vn', N'0384651651', N'079204626834', N'Thành phố Hồ Chí Minh', N'Thành phố Hồ Chí Minh', N'43, Đường Phạm Ngũ Lão, Phường Phạm Ngũ Lão, Quận 1, TP. Hồ Chí Minh', N'K38', CAST(N'2022-10-17' AS Date), N'CN05', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220051', N'Hoàng', N'Hữu Tài', CAST(N'2004-02-19' AS Date), N'Nam', N'030138220051@st.buh.edu.vn', N'0989416566', N'026204946734', N'Vĩnh Phúc', N'Vĩnh Phúc', N'11, Đường Lý Thường Kiệt, Phường Đống Đa, TP. Vĩnh Yên, Vĩnh Phúc', N'K38', CAST(N'2022-10-17' AS Date), N'CN05', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220052', N'Ngô', N'Thanh Nhàn', CAST(N'2004-02-21' AS Date), N'Nữ', N'030138220052@st.buh.edu.vn', N'0946546515', N'079204363792', N'Thành phố Hồ Chí Minh', N'Thành phố Hồ Chí Minh', N'45, Đường Cách Mạng Tháng Tám, Phường Bến Thành, Quận 1, TP. Hồ Chí Minh', N'K38', CAST(N'2022-10-17' AS Date), N'CN05', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220053', N'Đinh', N'Minh Phương', CAST(N'2004-02-22' AS Date), N'Nam', N'030138220053@st.buh.edu.vn', N'0348746515', N'045204678295', N'Quảng Trị', N'Quảng Trị', N'90, Đường Trần Hưng Đạo, Phường 1, TP. Đông Hà, Quảng Trị', N'K38', CAST(N'2022-10-17' AS Date), N'CN05', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220054', N'Lê', N'Tấn Hưng', CAST(N'2004-02-23' AS Date), N'Nam', N'030138220054@st.buh.edu.vn', N'0364848955', N'075204335353', N'Đồng Nai', N'Đồng Nai', N'7, Đường Quốc lộ 1A, Phường Tân Mai, TP. Biên Hòa, Đồng Nai', N'K38', CAST(N'2022-10-17' AS Date), N'CN05', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030138220055', N'Phan', N'Thu Nguyệt', CAST(N'2004-02-24' AS Date), N'Nữ', N'030138220055@st.buh.edu.vn', N'0984521122', N'085200824355', N'Bến Tre', N'Bến Tre', N'12,Đường Võ Thị Sáu, Phường Nguyễn An Ninh, TP. Bến Tre, Bến Tre', N'K38', CAST(N'2022-10-17' AS Date), N'CN05', N'N01', N'ML01')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030538220056', N'Lương', N'Hải Yến', CAST(N'2004-02-25' AS Date), N'Nữ', N'030538220056@st.buh.edu.vn', N'0941521522', N'014300855658', N'Sơn La', N'Sơn La', N'39, Đường Mai Hắc Đế, Phường Chiềng Sinh, TP. Sơn La, Sơn La', N'K38', CAST(N'2022-10-17' AS Date), N'CN06', N'N02', N'ML02')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030538220057', N'Đàm', N'Huyền Trang', CAST(N'2004-02-26' AS Date), N'Nữ', N'030538220057@st.buh.edu.vn', N'0368489561', N'031302461871', N'Thành phố Hải Phòng', N'Thành phố Hải Phòng', N'211, Đường Lạch Tray, Phường Đằng Giang, Quận Ngô Quyền, Hải Phòng', N'K38', CAST(N'2022-10-17' AS Date), N'CN06', N'N02', N'ML02')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030538220058', N'Lê', N'Quốc Toản', CAST(N'2004-02-27' AS Date), N'Nam', N'030538220058@st.buh.edu.vn', N'0911215855', N'070304389525', N'Bình Phước', N'Bình Phước', N'232, Đường Lý Thường Kiệt, Phường Tân Tiến, TP. Phước Long, Bình Phước', N'K38', CAST(N'2022-10-17' AS Date), N'CN06', N'N02', N'ML02')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030538220059', N'Hòag', N'Kim Hương', CAST(N'2004-02-28' AS Date), N'Nữ', N'030538220059@st.buh.edu.vn', N'0315649846', N'034304285944', N'Thái Bình', N'Thái Bình', N'23, Đường Lý Thường Kiệt, Phường Quang Trung, TP. Thái Bình, Thái Bình', N'K38', CAST(N'2022-10-17' AS Date), N'CN06', N'N02', N'ML02')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030538220060', N'Lý', N'Hoàng Hưng', CAST(N'2004-02-29' AS Date), N'Nam', N'030538220060@st.buh.edu.vn', N'0916465131', N'015208401849', N'Yên Bái', N'Yên Bái', N'44, Đường Nguyễn Thị Minh Khai, Phường Yên Thịnh, TP. Yên Bái, Yên Bái', N'K38', CAST(N'2022-10-17' AS Date), N'CN06', N'N02', N'ML02')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030538220061', N'Trần', N'Quang Huy', CAST(N'2004-03-01' AS Date), N'Nam', N'030538220061@st.buh.edu.vn', N'0315844888', N'066204512448', N'Đắk Lắk', N'Đắk Lắk', N'134, Đường Trần Phú, Phường Tân An, TP. Buôn Ma Thuột, Đắk Lắk', N'K38', CAST(N'2022-10-17' AS Date), N'CN06', N'N02', N'ML02')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030538220062', N'Phạm', N'Thị Hồng', CAST(N'2004-03-02' AS Date), N'Nữ', N'030538220062@st.buh.edu.vn', N'0930070444', N'079204822704', N'Thành phố Hồ Chí Minh', N'Thành phố Hồ Chí Minh', N'55, Đường Lê Lợi, Phường Bến Thành, Quận 1, TP. Hồ Chí Minh', N'K38', CAST(N'2022-10-17' AS Date), N'CN06', N'N02', N'ML02')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030538220063', N'Nguyễn', N'Hoàng Minh', CAST(N'2004-03-03' AS Date), N'Nam', N'030538220063@st.buh.edu.vn', N'0815145132', N'017204893513', N'Hòa Bình', N'Hòa Bình', N'44, Đường Lý Thường Kiệt, Phường Tân Hòa, TP. Hòa Bình, Hòa Bình', N'K38', CAST(N'2022-10-17' AS Date), N'CN06', N'N02', N'ML02')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030538220064', N'Phạm', N'Ngọc Diệp', CAST(N'2004-03-04' AS Date), N'Nữ', N'030538220064@st.buh.edu.vn', N'0311598533', N'054200740833', N'Phú Yên', N'Phú Yên', N'57, Đường Hùng Vương, Phường 1, TP. Tuy Hòa, Phú Yên', N'K38', CAST(N'2022-10-17' AS Date), N'CN06', N'N02', N'ML02')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030538220065', N'Chu', N'Bảo Anh', CAST(N'2004-03-05' AS Date), N'Nữ', N'030538220065@st.buh.edu.vn', N'0955894651', N'001204234652', N'Thành phố Hà Nội', N'Thành phố Hà Nội', N'98, Đường Hoàng Diệu, Phường Quán Thánh, Quận Ba Đình, Hà Nội', N'K38', CAST(N'2022-10-17' AS Date), N'CN06', N'N02', N'ML02')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030538220066', N'Lý', N'Phương Uyên', CAST(N'2004-03-06' AS Date), N'Nữ', N'030538220066@st.buh.edu.vn', N'0916546513', N'064302332973', N'Gia Lai', N'Gia Lai', N'12, Đường Nguyễn Chí Thanh, Phường Thắng Lợi, TP. Pleiku, Gia Lai', N'K38', CAST(N'2022-10-17' AS Date), N'CN07', N'N02', N'ML02')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030538220067', N'Phạm', N'Thành Công', CAST(N'2004-03-07' AS Date), N'Nam', N'030538220067@st.buh.edu.vn', N'0355654512', N'079204177960', N'Thành phố Hồ Chí Minh', N'Thành phố Hồ Chí Minh', N'90, Đường Võ Thị Sáu, Phường Thạnh Lộc, Quận 12, TP. Hồ Chí Minh', N'K38', CAST(N'2022-10-17' AS Date), N'CN07', N'N02', N'ML02')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030538220068', N'Nguyễn', N'Văn Trung', CAST(N'2004-03-08' AS Date), N'Nam', N'030538220068@st.buh.edu.vn', N'0348485155', N'042304656235', N'Hà Tĩnh', N'Hà Tĩnh', N'14, Đường Nguyễn Du, Phường Thạch Linh, TP. Hà Tĩnh, Hà Tĩnh', N'K38', CAST(N'2022-10-17' AS Date), N'CN07', N'N02', N'ML02')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030538220069', N'Lê', N'Hữu Thắng', CAST(N'2004-03-09' AS Date), N'Nam', N'030538220069@st.buh.edu.vn', N'0946548415', N'027204323486', N'Bắc Ninh', N'Bắc Ninh', N'30, Đường Lý Thường Kiệt, Phường Võ Cường, TP. Bắc Ninh, Bắc Ninh', N'K38', CAST(N'2022-10-17' AS Date), N'CN07', N'N02', N'ML02')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030538220070', N'Phạm', N'Thu Trang', CAST(N'2004-03-10' AS Date), N'Nữ', N'030538220070@st.buh.edu.vn', N'0941654115', N'086204861193', N'Vĩnh Long', N'Vĩnh Long', N'23, Đường Nguyễn Văn Linh, Phường 1, TP. Vĩnh Long, Vĩnh Long', N'K38', CAST(N'2022-10-17' AS Date), N'CN07', N'N02', N'ML02')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030538220071', N'Trịnh', N'Thanh Sơn', CAST(N'2004-03-11' AS Date), N'Nam', N'030538220071@st.buh.edu.vn', N'0356465465', N'079204455377', N'Thành phố Hồ Chí Minh', N'Thành phố Hồ Chí Minh', N'65, Đường Nguyễn Công Trứ, Phường Nguyễn Thái Bình, Quận 1, TP. Hồ Chí Minh', N'K38', CAST(N'2022-10-17' AS Date), N'CN07', N'N02', N'ML02')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030538220072', N'Hoàng', N'Ngọc Nhi', CAST(N'2004-03-12' AS Date), N'Nữ', N'030538220072@st.buh.edu.vn', N'0398785122', N'056304395397', N'Khánh Hòa', N'Khánh Hòa', N'35, Đường Trần Phú, Phường Lộc Thọ, TP. Nha Trang, Khánh Hòa', N'K38', CAST(N'2022-10-17' AS Date), N'CN07', N'N02', N'ML02')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030538220073', N'Vương', N'Hoàng Nam', CAST(N'2004-03-13' AS Date), N'Nam', N'030538220073@st.buh.edu.vn', N'0348465415', N'017209214357', N'Hòa Bình', N'Hòa Bình', N'46, Đường Lý Thường Kiệt, Phường Tân Hòa, TP. Hòa Bình, Hòa Bình', N'K38', CAST(N'2022-10-17' AS Date), N'CN07', N'N02', N'ML02')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030538220074', N'Lý', N'Quang Dũng', CAST(N'2004-03-14' AS Date), N'Nam', N'030538220074@st.buh.edu.vn', N'0944511222', N'064304914396', N'Gia Lai', N'Gia Lai', N'227, Đường Nguyễn Chí Thanh, Phường Thắng Lợi, TP. Pleiku, Gia Lai', N'K38', CAST(N'2022-10-17' AS Date), N'CN07', N'N02', N'ML02')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030538220075', N'Mai', N'Kim Tuyền', CAST(N'2004-03-15' AS Date), N'Nữ', N'030538220075@st.buh.edu.vn', N'0951548415', N'035304531851', N'Hà Nam', N'Hà Nam', N'18, Đường Trần Phú, Phường Hà Trung, TP. Phủ Lý, Hà Nam', N'K38', CAST(N'2022-10-17' AS Date), N'CN07', N'N02', N'ML02')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030538220076', N'Hoàng', N'Văn Tân', CAST(N'2004-03-16' AS Date), N'Nam', N'030538220076@st.buh.edu.vn', N'0941545122', N'042304569874', N'Hà Tĩnh', N'Hà Tĩnh', N'59, Đường Nguyễn Du, Phường Thạch Linh, TP. Hà Tĩnh, Hà Tĩnh', N'K38', CAST(N'2022-10-17' AS Date), N'CN07', N'N02', N'ML02')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030538220077', N'Lê', N'Hữu Lộc', CAST(N'2004-03-17' AS Date), N'Nam', N'030538220077@st.buh.edu.vn', N'0348465155', N'025206429420', N'Phú Thọ', N'Phú Thọ', N'12, Đường Hùng Vương, Phường Âu Cơ, TP. Việt Trì, Phú Thọ', N'K38', CAST(N'2022-10-17' AS Date), N'CN08', N'N02', N'ML02')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030538220078', N'Hồ', N'Quốc Tường', CAST(N'2004-03-18' AS Date), N'Nam', N'030538220078@st.buh.edu.vn', N'0348789995', N'072304183937', N'Tây Ninh', N'Tây Ninh', N'51, Đường Lê Lợi, Phường 3, TP. Tây Ninh, Tây Ninh', N'K38', CAST(N'2022-10-17' AS Date), N'CN08', N'N02', N'ML02')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030538220079', N'Hoàng', N'Thị Hạnh', CAST(N'2004-03-19' AS Date), N'Nữ', N'030538220079@st.buh.edu.vn', N'0314456655', N'079204747725', N'Thành phố Hồ Chí Minh', N'Thành phố Hồ Chí Minh', N'11, Đường Lê Lai, Phường An Phú, Quận 2, TP. Hồ Chí Minh', N'K38', CAST(N'2022-10-17' AS Date), N'CN08', N'N02', N'ML02')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030538220080', N'Võ', N'Văn Bình', CAST(N'2004-03-20' AS Date), N'Nam', N'030538220080@st.buh.edu.vn', N'0348988874', N'092304525643', N'Thành phố Cần Thơ', N'Thành phố Cần Thơ', N'66, Đường Nguyễn Văn Cừ, Phường An Khánh, Quận Ninh Kiều, Cần Thơ', N'K38', CAST(N'2022-10-17' AS Date), N'CN08', N'N02', N'ML02')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030538220081', N'Hoàng ', N'Nhân Tuấn', CAST(N'2004-03-21' AS Date), N'Nữ', N'030538220081@st.buh.edu.vn', N'0345165165', N'058309911885', N'Ninh Thuận', N'Ninh Thuận', N'34, Đường Lê Lợi, Phường Phước Hải, TP. Phan Rang-Tháp Chàm, Ninh Thuận', N'K38', CAST(N'2022-10-17' AS Date), N'CN08', N'N02', N'ML02')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030538220082', N'Trần', N'Văn Hiệp', CAST(N'2004-03-22' AS Date), N'Nam', N'030538220082@st.buh.edu.vn', N'0945144125', N'094303002089', N'Sóc Trăng', N'Sóc Trăng', N'15, Đường Nguyễn Trung Trực, Phường 2, TP. Sóc Trăng, Sóc Trăng', N'K38', CAST(N'2022-10-17' AS Date), N'CN08', N'N02', N'ML02')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030538220083', N'Lê', N'Thị Hương', CAST(N'2004-03-23' AS Date), N'Nữ', N'030538220083@st.buh.edu.vn', N'0941511514', N'079204979832', N'Thành phố Hồ Chí Minh', N'Thành phố Hồ Chí Minh', N'66, Đường Nguyễn Thái Bình, Phường Nguyễn Thái Bình, Quận 1, TP. Hồ Chí Minh', N'K38', CAST(N'2022-10-17' AS Date), N'CN08', N'N02', N'ML02')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030538220084', N'Nguyễn', N'Tuấn Anh', CAST(N'2004-03-24' AS Date), N'Nam', N'030538220084@st.buh.edu.vn', N'0911511544', N'091309257616', N'Kiên Giang', N'Kiên Giang', N'177, Đường Nguyễn Trung Trực, Phường Vĩnh Lạc, TP. Rạch Giá, Kiên Giang', N'K38', CAST(N'2022-10-17' AS Date), N'CN08', N'N02', N'ML02')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030538220085', N'Phạm', N'Thùy Linh', CAST(N'2004-03-25' AS Date), N'Nữ', N'030538220085@st.buh.edu.vn', N'0989846222', N'087304773443', N'Đồng Tháp', N'Đồng Tháp', N'58, Đường Trần Phú, Phường 1, TP. Cao Lãnh, Đồng Tháp', N'K38', CAST(N'2022-10-17' AS Date), N'CN08', N'N02', N'ML02')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030538220086', N'Hoàng', N'Quốc Bảo', CAST(N'2004-03-26' AS Date), N'Nam', N'030538220086@st.buh.edu.vn', N'0345619845', N'068301471322', N'Lâm Đồng', N'Lâm Đồng', N'64, Đường Nguyễn Văn Cừ, Phường 7, TP. Đà Lạt, Lâm Đồng', N'K38', CAST(N'2022-10-17' AS Date), N'CN08', N'N02', N'ML02')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030538220087', N'Vũ', N'Thanh Hà', CAST(N'2004-03-27' AS Date), N'Nữ', N'030538220087@st.buh.edu.vn', N'0381564555', N'079204358706', N'Thành phố Hồ Chí Minh', N'Thành phố Hồ Chí Minh', N'14, Đường Trần Hưng Đạo, Phường 1, Quận 5, TP. Hồ Chí Minh', N'K38', CAST(N'2022-10-17' AS Date), N'CN08', N'N02', N'ML02')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030538220088', N'Đặng', N'Minh Khoa', CAST(N'2004-03-28' AS Date), N'Nam', N'030538220088@st.buh.edu.vn', N'0384562844', N'044204951289', N'Quảng Bình', N'Quảng Bình', N'51, Đường Trần Hưng Đạo, Phường Đống Mác, TP. Đồng Hới, Quảng Bình', N'K38', CAST(N'2022-10-17' AS Date), N'CN08', N'N02', N'ML02')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030538220089', N'Bùi', N'Bích Ngọc', CAST(N'2004-03-29' AS Date), N'Nữ', N'030538220089@st.buh.edu.vn', N'0315648488', N'04305779809', N'Cao Bằng', N'Cao Bằng', N'62, Đường Hùng Vương, Phường Sông Hiến, TP. Cao Bằng, Cao Bằng', N'K38', CAST(N'2022-10-17' AS Date), N'CN08', N'N02', N'ML02')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030738220090', N'Đỗ', N'Văn Khánh', CAST(N'2004-03-30' AS Date), N'Nam', N'030738220090@st.buh.edu.vn', N'0941561555', N'096201938879', N'Cà Mau', N'Cà Mau', N'154, Đường Lý Thường Kiệt, Phường 6, TP. Cà Mau, Cà Mau', N'K38', CAST(N'2022-10-17' AS Date), N'CN09', N'N03', N'ML03')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030738220091', N'Phan', N'Kim Anh', CAST(N'2004-03-31' AS Date), N'Nữ', N'030738220091@st.buh.edu.vn', N'0975151515', N'034300136115', N'Thái Bình', N'Thái Bình', N'54, Đường Lê Quý Đôn, Phường Lê Hồng Phong, TP. Thái Bình, Thái Bình', N'K38', CAST(N'2022-10-17' AS Date), N'CN09', N'N03', N'ML03')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030738220092', N'Đinh', N'Quốc Huy', CAST(N'2004-04-01' AS Date), N'Nam', N'030738220092@st.buh.edu.vn', N'0389584895', N'068304568712', N'Lâm Đồng', N'Lâm Đồng', N'72, Đường Trần Phú, Phường 3, TP. Đà Lạt, Lâm Đồng', N'K38', CAST(N'2022-10-17' AS Date), N'CN09', N'N03', N'ML03')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030738220093', N'Mai', N'Thùy Dung', CAST(N'2004-04-02' AS Date), N'Nữ', N'030738220093@st.buh.edu.vn', N'0314488899', N'086208245421', N'Vĩnh Long', N'Vĩnh Long', N'11, Đường Trần Đại Nghĩa, Phường 4, TP. Vĩnh Long, Vĩnh Long', N'K38', CAST(N'2022-10-17' AS Date), N'CN09', N'N03', N'ML03')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030738220094', N'Lý', N'Văn Tâm', CAST(N'2004-04-03' AS Date), N'Nam', N'030738220094@st.buh.edu.vn', N'0915451564', N'042304785694', N'Hà Tĩnh', N'Hà Tĩnh', N'64, Đường Hà Huy Tập, Phường Bắc Hà, TP. Hà Tĩnh, Hà Tĩnh', N'K38', CAST(N'2022-10-17' AS Date), N'CN09', N'N03', N'ML03')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030738220095', N'Lưu', N'Thị Mai', CAST(N'2004-04-04' AS Date), N'Nữ', N'030738220095@st.buh.edu.vn', N'0315648965', N'079208302379', N'Thành phố Hồ Chí Minh', N'Thành phố Hồ Chí Minh', N'34, Đường Võ Văn Tần, Phường 6, Quận 3, TP. Hồ Chí Minh', N'K38', CAST(N'2022-10-17' AS Date), N'CN09', N'N03', N'ML03')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030738220096', N'Trịnh', N'Công Sơn', CAST(N'2004-04-05' AS Date), N'Nam', N'030738220096@st.buh.edu.vn', N'0956485525', N'08304452867', N'Tuyên Quang', N'Tuyên Quang', N'75, Đường Bình Thuận, Phường Phan Thiết, TP. Tuyên Quang, Tuyên Quang', N'K38', CAST(N'2022-10-17' AS Date), N'CN09', N'N03', N'ML03')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030738220097', N'Ngô', N'Ngọc Lan', CAST(N'2004-04-06' AS Date), N'Nữ', N'030738220097@st.buh.edu.vn', N'0915154154', N'054204315722', N'Phú Yên', N'Phú Yên', N'73, Đường Trần Hưng Đạo, Phường 7, TP. Tuy Hòa, Phú Yên', N'K38', CAST(N'2022-10-17' AS Date), N'CN09', N'N03', N'ML03')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030738220098', N'Dương', N'Minh Tuấn', CAST(N'2004-04-07' AS Date), N'Nam', N'030738220098@st.buh.edu.vn', N'0365485455', N'048308090719', N'Thành phố Đà Nẵng', N'Thành phố Đà Nẵng', N'92, Đường Nguyễn Văn Linh, Phường Thạc Gián, Quận Thanh Khê, TP. Đà Nẵng', N'K38', CAST(N'2022-10-17' AS Date), N'CN09', N'N03', N'ML03')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030738220099', N'Hồ', N'Thị Thu', CAST(N'2004-04-08' AS Date), N'Nữ', N'030738220099@st.buh.edu.vn', N'0348948945', N'080208600098', N'Long An', N'Long An', N'14, Đường Hùng Vương, Phường 6, TP. Tân An, Long An', N'K38', CAST(N'2022-10-17' AS Date), N'CN09', N'N03', N'ML03')
GO
INSERT [dbo].[SinhVien] ([MaSV], [Ho], [Ten], [NgaySinh], [GioiTinh], [Email], [SDT], [CCCD], [NoiSinh], [QueQuan], [DiaChi], [KhoaTrungTuyen], [NgayNhapHoc], [MaCN], [MaNganh], [MaLop]) VALUES (N'030738220100', N'Phùng', N'Hoàng Nam', CAST(N'2004-04-09' AS Date), N'Nam', N'030738220100@st.buh.edu.vn', N'0321656545', N'022201708210', N'Quảng Ninh', N'Quảng Ninh', N'64, Đường Trần Hưng Đạo, Phường Bạch Đằng, TP. Hạ Long, Quảng Ninh', N'K38', CAST(N'2022-10-17' AS Date), N'CN09', N'N03', N'ML03')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220001', N'Nguyễn', N'Minh Khôi', N'0912345632', N'minhkhoi@gmail.com', N'Cha', N'10, Đường Hoàng Văn Thụ, Phường An Hòa, Quận Ninh Kiều, Cần Thơ')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220002', N'Trần', N'Lan Chi', N'0923452344', N'lanchi@gmail.com', N'Mẹ', N'72, Đường Nguyễn Huệ, Phường Bến Nghé, Quận 1, TP. Hồ Chí Minh')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220003', N'Lê', N'Hải Đăng', N'0934534225', N'haidang@gmail.com', N'Cha', N'976, Đường Lê Lợi, Phường Điện Biên, Thành phố Thanh Hóa, Thanh Hóa')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220004', N'Phạm', N'Anh Thư', N'0945212102', N'anhthu@gmail.com', N'Mẹ', N'532, Đường Phạm Ngũ Lão, Phường Phạm Ngũ Lão, Quận 1, TP. Hồ Chí Minh')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220005', N'Hoàng', N'Linh Đan', N'0956783032', N'linhdan@gmail.com', N'Mẹ', N'781, Đường Điện Biên Phủ, Phường Tân Thanh, TP. Điện Biên, Điện Biên')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220006', N'Vũ', N'Sơn Tùng', N'0967445512', N'sontung@gmail.com', N'Cha', N'64, Đường Nguyễn Tất Thành, Phường Trần Hưng Đạo, TP. Quy Nhơn, Bình Định')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220007', N'Đặng', N'Hương Giang', N'0978902032', N'huonggiang@gmail.com', N'Mẹ', N'67, Đường Lê Duẩn, Phường Nghĩa Trung, TP. Gia Nghĩa, Đắk Nông')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220008', N'Bùi', N'Phong Vũ', N'0989520322', N'phongvu@gmail.com', N'Cha', N'90, Đường Trần Hưng Đạo, Phường Bích Đào, TP. Ninh Bình, Ninh Bình')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220009', N'Đỗ', N'Ngọc Lan', N'0990020566', N'ngoclan@gmail.com', N'Mẹ', N'42, Đường Mai Hắc Đế, Phường Chiềng Sinh, TP. Sơn La, Sơn La')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220010', N'Phan', N'Tuấn Anh', N'0913303315', N'tuananh@gmail.com', N'Cha', N'554, Đường Nguyễn Du, Phường Thạch Linh, TP. Hà Tĩnh, Hà Tĩnh')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220011', N'Đinh', N'Thảo Vy', N'0922333055', N'thaovy@gmail.com', N'Mẹ', N'568, Đường 30/4, Phường 5, TP. Sóc Trăng, Sóc Trăng')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220012', N'Mai', N'Khoa Bảo', N'0933662626', N'khoabao@gmail.com', N'Cha', N'901, Đường Cách Mạng Tháng Tám, Phường Bến Thành, Quận 1, TP. Hồ Chí Minh')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220013', N'Lý', N'Vy Anh', N'0944365626', N'vyanh@gmail.com', N'Mẹ', N'54, Đường Hoàng Văn Thụ, Phường Ngô Quyền, TP. Bắc Giang, Bắc Giang')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220014', N'Lưu', N'Nam Khánh', N'0955650303', N'namkhanh@gmail.com', N'Cha', N'16, Đường Lê Lợi, Phường 1, TP. Trà Vinh, Trà Vinh')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220015', N'Trịnh', N'Hạnh Ngân', N'0966262666', N'hanhngan@gmail.com', N'Mẹ', N'39, Đường Nguyễn Tất Thành, Phường Yên Thịnh, TP. Yên Bái, Yên Bái')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220016', N'Ngô', N'Việt Anh', N'0977915626', N'vietanh@gmail.com', N'Cha', N'81, Đường Võ Văn Kiệt, Phường 2, TP. Mỹ Tho, Tiền Giang')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220017', N'Dương', N'Mai Anh', N'0988551516', N'maianh@gmail.com', N'Mẹ', N'634, Đường Võ Thị Sáu, Phường Nguyễn An Ninh, TP. Vũng Tàu, Bà Rịa-Vũng Tàu')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220018', N'Hồ', N'Quân Đạt', N'0999166656', N'quandat@gmail.com', N'Cha', N'37, Đường Điện Biên Phủ, Phường Sông Bằng, TP. Cao Bằng, Cao Bằng')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220019', N'Phùng', N'Thu Hương', N'0910262662', N'thuhuong@gmail.com', N'Mẹ', N'560, Đường Nguyễn Đình Chiểu, Phường Tân An, TP. Buôn Ma Thuột, Đắk Lắk')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220020', N'Cao', N'Tùng Dương', N'0921251566', N'tungduong@gmail.com', N'Cha', N'43, Đường Nguyễn Đình Chiểu, Phường 2, TP. Bến Tre, Bến Tre')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220021', N'Tô', N'Huyền My', N'0932351515', N'huyenmy@gmail.com', N'Mẹ', N'534, Đường Lê Duẩn, Phường 1, TP. Đông Hà, Quảng Trị')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220022', N'Đoàn', N'Minh Quân', N'0946515166', N'minhquan@gmail.com', N'Cha', N'658, Đường Lê Hồng Phong, Phường 2, TP. Cao Lãnh, Đồng Tháp')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220023', N'Trương', N'Trúc Ly', N'0955615155', N'truclly@gmail.com', N'Mẹ', N'701, Đường Võ Thị Sáu, Phường Nguyễn An Ninh, TP. Vũng Tàu, Bà Rịa-Vũng Tàu')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220024', N'Trịnh', N'Đức Thịnh', N'0965154511', N'ducthinh@gmail.com', N'Cha', N'23, Đường Trần Phú, Phường Trần Phú, TP. Quảng Ngãi, Quảng Ngãi')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220025', N'Châu', N'Dung Anh', N'0976526562', N'dunganh@gmail.com', N'Mẹ', N'786, Đường Lê Lợi, Phường Phước Long, TP. Phan Thiết, Bình Thuận')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220026', N'Tạ', N'Hoàng Nam', N'0987821962', N'hoangnam@gmail.com', N'Cha', N'75, Đường Hoàng Văn Thụ, Phường Nguyễn Thái Học, TP. Bắc Kạn, Bắc Kạn')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220027', N'Bạch', N'Hoa Lý', N'0998156566', N'hoaly@gmail.com', N'Mẹ', N'51, Đường Trần Hưng Đạo, Phường 1, TP. Tây Ninh, Tây Ninh')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220028', N'Lương', N'Khánh Duy', N'0919016262', N'khanhduy@gmail.com', N'Cha', N'604, Đường Nguyễn Công Trứ, Phường Nguyễn Thái Bình, Quận 1, TP. Hồ Chí Minh')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220029', N'Võ', N'Hà My', N'0922562666', N'hamy@gmail.com', N'Mẹ', N'37, Đường Hùng Vương, Phường Văn Miếu, TP. Nam Định, Nam Định')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220030', N'Khuất', N'Toàn Thắng', N'0904254242', N'toanthang@gmail.com', N'Cha', N'11, Đường Nguyễn Huệ, Phường Trần Hưng Đạo, TP. Kon Tum, Kon Tum')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220031', N'Nguyễn', N'Trang Đài', N'0901282858', N'trangdai@gmail.com', N'Mẹ', N'522, Đường Lý Thường Kiệt, Phường Đống Đa, TP. Vĩnh Yên, Vĩnh Phúc')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220032', N'Lê', N'Phát Tài', N'0920110556', N'phattai@gmail.com', N'Cha', N'865, Đường Lê Lợi, Phường Phủ Lý, TP. Phủ Lý, Hà Nam')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220033', N'Nguyễn', N'Chi Mai', N'0921482825', N'chimai@gmail.com', N'Mẹ', N'64, Đường Hùng Vương, Phường Tân Quang, TP. Tuyên Quang, Tuyên Quang')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220034', N'Huỳnh', N'Kiên Trung', N'0928392335', N'kientrung@gmail.com', N'Cha', N'655, Đường Điện Biên Phủ, Phường Mường Thanh, TP. Điện Biên Phủ, Điện Biên')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220035', N'Nguyễn', N'Nhung Mai', N'0923423426', N'nhungmai@gmail.com', N'Mẹ', N'76, Đường Hạ Long, Phường Bãi Cháy, TP. Hạ Long, Quảng Ninh')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220036', N'Nguyễn', N'Quốc Huy', N'0921324676', N'quochuy@gmail.com', N'Cha', N'567, Đường 30/4, Phường 2, TP. Tân An, Long An')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220037', N'Trần', N'Tuyết Nhi', N'0919583930', N'tuyetnhi@gmail.com', N'Mẹ', N'778, Đường Quang Trung, Phường Ngọc Hà, TP. Hà Giang, Hà Giang')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220038', N'Nguyễn', N'Thanh Bình', N'0929095983', N'thanhbinh@gmail.com', N'Cha', N'89, Đường Nguyễn Du, Phường Thạch Linh, TP. Hà Tĩnh, Hà Tĩnh')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220039', N'Trần', N'Bình Minh', N'0930939503', N'binhminh@gmail.com', N'Cha', N'451, Đường Lý Thường Kiệt, Phường Trần Phú, TP. Quy Nhơn, Bình Định')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220040', N'Nguyễn', N'Giang Sơn', N'0950303303', N'giangson@gmail.com', N'Mẹ', N'92, Đường Trần Phú, Phường 8, TP. Cà Mau, Cà Mau')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220041', N'Trần', N'Văn Sơn', N'0915151555', N'vanson@gmail.com', N'Cha', N'67, Đường Nguyễn Tất Thành, Phường Hải Châu I, Quận Hải Châu, Đà Nẵng')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220042', N'Hoàng', N'Thu Hà', N'0316548656', N'thuha@gmail.com', N'Mẹ', N'544, Đường Điện Biên Phủ, Phường Tân Phong, TP. Lai Châu, Lai Châu')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220043', N'Trương', N'Quốc Hùng', N'0341566555', N'quocho@gmail.com', N'Cha', N'135, Đường Hoàng Diệu, Phường Quán Thánh, Quận Ba Đình, Hà Nội')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220044', N'Trần', N'Lan Hương', N'0348489565', N'lanhuong@gmail.com', N'Mẹ', N'542, Đường Nguyễn Huệ, Phường Bến Nghé, Quận 1, TP. Hồ Chí Minh')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220045', N'Lý', N'Thành Nam', N'0916531653', N'thanhnam@gmail.com', N'Cha', N'74, Đường Nguyễn Công Trứ, Phường Nguyễn Thái Bình, Quận 1, TP. Hồ Chí Minh')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220046', N'Hồ', N'Thùy Dương', N'0315648655', N'thuyduong@gmail.com', N'Mẹ', N'448, Đường Hùng Vương, Phường Âu Cơ, TP. Việt Trì, Phú Thọ')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220047', N'Trần', N'Minh Tuấn', N'0916532165', N'minhtuan@gmail.com', N'Cha', N'439, Đường Lạch Tray, Phường Đằng Giang, Quận Ngô Quyền, Hải Phòng')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220048', N'Nguyễn', N'Ánh Tuyết', N'0941515113', N'anhtuyet@gmail.com', N'Mẹ', N'31, Đường Nguyễn Du, Phường Thạch Linh, TP. Hà Tĩnh, Hà Tĩnh')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220049', N'Nguyễn', N'Gia Bảo', N'0364561654', N'giabao@gmail.com', N'Cha', N'91, Đường Lý Thường Kiệt, Phường Tân Tiến, TP. Phước Long, Bình Phước')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220050', N'Lê', N'Diễm My', N'0315648485', N'diemmy@gmail.com', N'Mẹ', N'43, Đường Phạm Ngũ Lão, Phường Phạm Ngũ Lão, Quận 1, TP. Hồ Chí Minh')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220051', N'Hoàng', N'Hữu Phước', N'0325648955', N'huuphuoc@gmail.com', N'Cha', N'11, Đường Lý Thường Kiệt, Phường Đống Đa, TP. Vĩnh Yên, Vĩnh Phúc')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220052', N'Ngô', N'Thúy Ngân', N'0318451156', N'thuyngan@gmail.com', N'Mẹ', N'45, Đường Cách Mạng Tháng Tám, Phường Bến Thành, Quận 1, TP. Hồ Chí Minh')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220053', N'Đinh', N'Khánh Hoàng', N'0913514666', N'khanhhoang@gmail.com', N'Cha', N'90, Đường Trần Hưng Đạo, Phường 1, TP. Đông Hà, Quảng Trị')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220054', N'Lê', N'Hồng Nhung', N'0941654565', N'hongnhung@gmail.com', N'Mẹ', N'7, Đường Quốc lộ 1A, Phường Tân Mai, TP. Biên Hòa, Đồng Nai')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030138220055', N'Phan', N'Minh Khang', N'0321656545', N'minhkhang@gmail.com', N'Cha', N'12,Đường Võ Thị Sáu, Phường Nguyễn An Ninh, TP. Bến Tre, Bến Tre')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030538220056', N'Lương', N'Mai Hương', N'0348948945', N'maihuong@gmail.com', N'Mẹ', N'39, Đường Mai Hắc Đế, Phường Chiềng Sinh, TP. Sơn La, Sơn La')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030538220057', N'Đàm', N'Văn Phú', N'0365485455', N'vanphu@gmail.com', N'Cha', N'211, Đường Lạch Tray, Phường Đằng Giang, Quận Ngô Quyền, Hải Phòng')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030538220058', N'Lê', N'Hạnh Dung', N'0915154154', N'hanhdung@gmail.com', N'Mẹ', N'232, Đường Lý Thường Kiệt, Phường Tân Tiến, TP. Phước Long, Bình Phước')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030538220059', N'Hòag', N'Hữu Tín', N'0956485525', N'huutin@gmail.com', N'Cha', N'23, Đường Lý Thường Kiệt, Phường Quang Trung, TP. Thái Bình, Thái Bình')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030538220060', N'Lý', N'Bảo Anh', N'0315648965', N'baoanh@gmail.com', N'Mẹ', N'44, Đường Nguyễn Thị Minh Khai, Phường Yên Thịnh, TP. Yên Bái, Yên Bái')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030538220061', N'Trần', N'Tuấn Kiệt', N'0915451564', N'tuankiet@gmail.com', N'Cha', N'134, Đường Trần Phú, Phường Tân An, TP. Buôn Ma Thuột, Đắk Lắk')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030538220062', N'Phạm', N'Ngọc Trâm', N'0314488899', N'ngoctram@gmail.com', N'Mẹ', N'55, Đường Lê Lợi, Phường Bến Thành, Quận 1, TP. Hồ Chí Minh')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030538220063', N'Nguyễn', N'Phúc Thịnh', N'0389584895', N'phucthinh@gmail.com', N'Cha', N'44, Đường Lý Thường Kiệt, Phường Tân Hòa, TP. Hòa Bình, Hòa Bình')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030538220064', N'Phạm', N'Diễm Quỳnh', N'0975151515', N'diemquynh@gmail.com', N'Mẹ', N'57, Đường Hùng Vương, Phường 1, TP. Tuy Hòa, Phú Yên')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030538220065', N'Chu', N'Nhật Hào', N'0941561555', N'nhathao@gmail.com', N'Cha', N'98, Đường Hoàng Diệu, Phường Quán Thánh, Quận Ba Đình, Hà Nội')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030538220066', N'Lý', N'Ngọc Mai', N'0315648488', N'ngocmai@gmail.com', N'Mẹ', N'12, Đường Nguyễn Chí Thanh, Phường Thắng Lợi, TP. Pleiku, Gia Lai')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030538220067', N'Phạm', N'Văn Hưng', N'0384562844', N'vanhung@gmail.com', N'Cha', N'90, Đường Võ Thị Sáu, Phường Thạnh Lộc, Quận 12, TP. Hồ Chí Minh')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030538220068', N'Nguyễn', N'Thủy Tiên', N'0381564555', N'thuytien@gmail.com', N'Mẹ', N'14, Đường Nguyễn Du, Phường Thạch Linh, TP. Hà Tĩnh, Hà Tĩnh')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030538220069', N'Lê', N'Hoàng Long', N'0345619845', N'hoanglong@gmail.com', N'Cha', N'30, Đường Lý Thường Kiệt, Phường Võ Cường, TP. Bắc Ninh, Bắc Ninh')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030538220070', N'Phạm', N'Thùy Linh', N'0989846222', N'thuylinh@gmail.com', N'Mẹ', N'23, Đường Nguyễn Văn Linh, Phường 1, TP. Vĩnh Long, Vĩnh Long')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030538220071', N'Trịnh', N'Hữu Nhân', N'0911511544', N'huunhan@gmail.com', N'Cha', N'65, Đường Nguyễn Công Trứ, Phường Nguyễn Thái Bình, Quận 1, TP. Hồ Chí Minh')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030538220072', N'Hoàng', N'Minh Châu', N'0941511514', N'minhchau@gmail.com', N'Mẹ', N'35, Đường Trần Phú, Phường Lộc Thọ, TP. Nha Trang, Khánh Hòa')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030538220073', N'Vương', N'Quang Duy', N'0945144125', N'quangduy@gmail.com', N'Cha', N'46, Đường Lý Thường Kiệt, Phường Tân Hòa, TP. Hòa Bình, Hòa Bình')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030538220074', N'Lý', N'Bích Trâm', N'0345165165', N'bichtram@gmail.com', N'Mẹ', N'227, Đường Nguyễn Chí Thanh, Phường Thắng Lợi, TP. Pleiku, Gia Lai')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030538220075', N'Mai', N'Hồng Quân', N'0348988874', N'hongquan@gmail.com', N'Cha', N'18, Đường Trần Phú, Phường Hà Trung, TP. Phủ Lý, Hà Nam')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030538220076', N'Hoàng', N'Thanh Mai', N'0314456655', N'thanhmai@gmail.com', N'Mẹ', N'59, Đường Nguyễn Du, Phường Thạch Linh, TP. Hà Tĩnh, Hà Tĩnh')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030538220077', N'Lê', N'Phước An', N'0348789995', N'phuocan@gmail.com', N'Cha', N'12, Đường Hùng Vương, Phường Âu Cơ, TP. Việt Trì, Phú Thọ')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030538220078', N'Hồ', N'Mỹ Hạnh', N'0348465155', N'myhanh@gmail.com', N'Mẹ', N'51, Đường Lê Lợi, Phường 3, TP. Tây Ninh, Tây Ninh')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030538220079', N'Hoàng', N'Thanh Tùng', N'0941545122', N'thanhtung@gmail.com', N'Cha', N'11, Đường Lê Lai, Phường An Phú, Quận 2, TP. Hồ Chí Minh')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030538220080', N'Võ', N'Khánh Linh', N'0951548415', N'khanhlinh@gmail.com', N'Mẹ', N'66, Đường Nguyễn Văn Cừ, Phường An Khánh, Quận Ninh Kiều, Cần Thơ')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030538220081', N'Hoàng ', N'Quốc Bảo', N'0944511222', N'quocbao@gmail.com', N'Cha', N'34, Đường Lê Lợi, Phường Phước Hải, TP. Phan Rang-Tháp Chàm, Ninh Thuận')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030538220082', N'Trần', N'Hồng Hạnh', N'0348465415', N'honghanh@gmail.com', N'Mẹ', N'15, Đường Nguyễn Trung Trực, Phường 2, TP. Sóc Trăng, Sóc Trăng')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030538220083', N'Lê', N'Văn Lâm', N'0398785122', N'vanlam@gmail.com', N'Cha', N'66, Đường Nguyễn Thái Bình, Phường Nguyễn Thái Bình, Quận 1, TP. Hồ Chí Minh')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030538220084', N'Nguyễn', N'Thùy Trang', N'0356465465', N'thuytrang@gmail.com', N'Mẹ', N'177, Đường Nguyễn Trung Trực, Phường Vĩnh Lạc, TP. Rạch Giá, Kiên Giang')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030538220085', N'Phạm', N'Thành Đạt', N'0941654115', N'thanhdat@gmail.com', N'Cha', N'58, Đường Trần Phú, Phường 1, TP. Cao Lãnh, Đồng Tháp')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030538220086', N'Hoàng', N'Hồng Vân', N'0946548415', N'hongvan@gmail.com', N'Mẹ', N'64, Đường Nguyễn Văn Cừ, Phường 7, TP. Đà Lạt, Lâm Đồng')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030538220087', N'Vũ', N'Trí Dũng', N'0348485155', N'tridung@gmail.com', N'Cha', N'14, Đường Trần Hưng Đạo, Phường 1, Quận 5, TP. Hồ Chí Minh')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030538220088', N'Đặng', N'Ngọc Diệp', N'0355654512', N'ngocdiep@gmail.com', N'Mẹ', N'51, Đường Trần Hưng Đạo, Phường Đống Mác, TP. Đồng Hới, Quảng Bình')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030538220089', N'Bùi', N'Bảo Khang', N'0916546513', N'baokhang@gmail.com', N'Cha', N'62, Đường Hùng Vương, Phường Sông Hiến, TP. Cao Bằng, Cao Bằng')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030738220090', N'Đỗ', N'Mai Anh', N'0955894651', N'maianh@gmail.com', N'Mẹ', N'154, Đường Lý Thường Kiệt, Phường 6, TP. Cà Mau, Cà Mau')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030738220091', N'Phan', N'Hữu Phước', N'0311598533', N'huuphuoc@gmail.com', N'Cha', N'54, Đường Lê Quý Đôn, Phường Lê Hồng Phong, TP. Thái Bình, Thái Bình')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030738220092', N'Đinh', N'Bích Hồng', N'0815145132', N'bichhong@gmail.com', N'Mẹ', N'72, Đường Trần Phú, Phường 3, TP. Đà Lạt, Lâm Đồng')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030738220093', N'Mai', N'Minh Nhật', N'0930070444', N'minhnhat@gmail.com', N'Cha', N'11, Đường Trần Đại Nghĩa, Phường 4, TP. Vĩnh Long, Vĩnh Long')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030738220094', N'Lý', N'Phương Linh', N'0315844888', N'phuonglinh@gmail.com', N'Mẹ', N'64, Đường Hà Huy Tập, Phường Bắc Hà, TP. Hà Tĩnh, Hà Tĩnh')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030738220095', N'Lưu', N'Hoàng Anh', N'0916465131', N'hoanganh@gmail.com', N'Cha', N'34, Đường Võ Văn Tần, Phường 6, Quận 3, TP. Hồ Chí Minh')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030738220096', N'Trịnh', N'Mỹ Linh', N'0315649846', N'mylinh@gmail.com', N'Mẹ', N'75, Đường Bình Thuận, Phường Phan Thiết, TP. Tuyên Quang, Tuyên Quang')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030738220097', N'Ngô', N'Ngọc Huy', N'0911215855', N'ngochoi@gmail.com', N'Cha', N'73, Đường Trần Hưng Đạo, Phường 7, TP. Tuy Hòa, Phú Yên')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030738220098', N'Dương', N'Bích Ngọc', N'0368489561', N'bichngoc@gmail.com', N'Mẹ', N'92, Đường Nguyễn Văn Linh, Phường Thạc Gián, Quận Thanh Khê, TP. Đà Nẵng')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030738220099', N'Hồ', N'Hữu Hưng', N'0941521522', N'huuhung@gmail.com', N'Cha', N'14, Đường Hùng Vương, Phường 6, TP. Tân An, Long An')
GO
INSERT [dbo].[ThanNhan] ([MaSV], [Ho], [Ten], [SDT], [Email], [QuanHe], [DiaChi]) VALUES (N'030738220100', N'Phùng', N'Ngọc Bích', N'0984521122', N'ngocbich@gmail.com', N'Mẹ', N'64, Đường Trần Hưng Đạo, Phường Bạch Đằng, TP. Hạ Long, Quảng Ninh')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__DangKy__8BB317036DF9743F]    Script Date: 6/30/2024 12:44:08 AM ******/
ALTER TABLE [dbo].[DangKy] ADD UNIQUE NONCLUSTERED 
(
	[MaSV] ASC,
	[MonHoc] ASC,
	[TenHocKy] ASC,
	[NamHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [QL_SV] SET  READ_WRITE 
GO