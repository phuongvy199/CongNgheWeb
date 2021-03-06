CREATE DATABASE [WebBanChuotMayTinh]
GO

USE [WebBanChuotMayTinh]
GO
/****** Object:  Table [dbo].[CHITIETDONHANG]    Script Date: 7/3/2019 12:26:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETDONHANG](
	[MaCTDH] [int] IDENTITY(1,1) NOT NULL,
	[MaSP] [int] NULL,
	[SoLuong] [int] NULL,
	[DonGia] [int] NULL,
	[MaDH] [int] NULL,
 CONSTRAINT [PK_CHITIETDONHANG] PRIMARY KEY CLUSTERED 
(
	[MaCTDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DONHANG]    Script Date: 7/3/2019 12:26:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONHANG](
	[MaDH] [int] IDENTITY(1,1) NOT NULL,
	[TenTaiKhoan] [nvarchar](50) NULL,
	[NgayDatHang] [date] NULL,
	[NgayGiaoHang] [date] NULL,
	[TrangThai] [int] NOT NULL,
 CONSTRAINT [PK_DONHANG] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LIENHE]    Script Date: 7/3/2019 12:26:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LIENHE](
	[MaLH] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[SDT] [char](20) NULL,
	[Email] [char](50) NULL,
	[NoiDungChiTiet] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAISANPHAM]    Script Date: 7/3/2019 12:26:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAISANPHAM](
	[MaLoaiSP] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiSP] [nvarchar](50) NULL,
 CONSTRAINT [PK_LOAISANPHAM] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MENU]    Script Date: 7/3/2019 12:26:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MENU](
	[MaMenu] [int] IDENTITY(1,1) NOT NULL,
	[TenMenu] [nvarchar](50) NULL,
	[Link] [char](50) NULL,
	[MaMenuCha] [char](10) NULL,
 CONSTRAINT [PK_MENU] PRIMARY KEY CLUSTERED 
(
	[MaMenu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHOMTAIKHOAN]    Script Date: 7/3/2019 12:26:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHOMTAIKHOAN](
	[MaNhomTK] [int] IDENTITY(1,1) NOT NULL,
	[TenNhomTK] [nvarchar](200) NULL,
 CONSTRAINT [PK_NHOMTAIKHOAN] PRIMARY KEY CLUSTERED 
(
	[MaNhomTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHANQUYEN]    Script Date: 7/3/2019 12:26:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHANQUYEN](
	[MaNhomTK] [int] NOT NULL,
	[MaQuyen] [int] NOT NULL,
 CONSTRAINT [PK_PHANQUYEN] PRIMARY KEY CLUSTERED 
(
	[MaNhomTK] ASC,
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUYEN]    Script Date: 7/3/2019 12:26:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUYEN](
	[MaQuyen] [int] IDENTITY(1,1) NOT NULL,
	[TenQuyen] [nvarchar](200) NULL,
 CONSTRAINT [PK_QUYEN] PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 7/3/2019 12:26:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](200) NULL,
	[Gia] [int] NULL,
	[GiamGia] [int] NULL,
	[LuotXem] [int] NULL,
	[Anh1] [varchar](200) NULL,
	[Anh2] [varchar](200) NULL,
	[Anh3] [varchar](200) NULL,
	[MoTa1] [nvarchar](max) NULL,
	[MoTa2] [nvarchar](max) NULL,
	[MoTa3] [nvarchar](max) NULL,
	[MoTa4] [nvarchar](max) NULL,
	[MoTa5] [nvarchar](max) NULL,
	[SoLuong] [int] NULL,
	[MaLoaiSP] [int] NULL,
	[MaTH] [int] NULL,
	[MaXX] [int] NULL,
	[Moi] [int] NULL,
 CONSTRAINT [PK_SANPHAM] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 7/3/2019 12:26:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[TenTaiKhoan] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NULL,
	[TenKhachHang] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[SDT] [char](20) NULL,
	[Email] [char](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[MaNhomTK] [int] NULL,
 CONSTRAINT [PK_TAIKHOAN] PRIMARY KEY CLUSTERED 
(
	[TenTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THUONGHIEU]    Script Date: 7/3/2019 12:26:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THUONGHIEU](
	[MaTH] [int] IDENTITY(1,1) NOT NULL,
	[TenTH] [nvarchar](50) NULL,
 CONSTRAINT [PK_THUONGHIEU] PRIMARY KEY CLUSTERED 
(
	[MaTH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XUATXU]    Script Date: 7/3/2019 12:26:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XUATXU](
	[MaXX] [int] IDENTITY(1,1) NOT NULL,
	[TenXX] [nvarchar](50) NULL,
 CONSTRAINT [PK_XUATXU] PRIMARY KEY CLUSTERED 
(
	[MaXX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CHITIETDONHANG] ON 

INSERT [dbo].[CHITIETDONHANG] ([MaCTDH], [MaSP], [SoLuong], [DonGia], [MaDH]) VALUES (4, 5, 1, 1320000, 2)
INSERT [dbo].[CHITIETDONHANG] ([MaCTDH], [MaSP], [SoLuong], [DonGia], [MaDH]) VALUES (5, 2, 1, 237000, 2)
INSERT [dbo].[CHITIETDONHANG] ([MaCTDH], [MaSP], [SoLuong], [DonGia], [MaDH]) VALUES (6, 3, 1, 200000, 2)
INSERT [dbo].[CHITIETDONHANG] ([MaCTDH], [MaSP], [SoLuong], [DonGia], [MaDH]) VALUES (7, 5, 2, 1320000, 3)
INSERT [dbo].[CHITIETDONHANG] ([MaCTDH], [MaSP], [SoLuong], [DonGia], [MaDH]) VALUES (8, 2, 1, 237000, 3)
INSERT [dbo].[CHITIETDONHANG] ([MaCTDH], [MaSP], [SoLuong], [DonGia], [MaDH]) VALUES (9, 3, 1, 200000, 3)
INSERT [dbo].[CHITIETDONHANG] ([MaCTDH], [MaSP], [SoLuong], [DonGia], [MaDH]) VALUES (10, 1, 1, 385000, 4)
INSERT [dbo].[CHITIETDONHANG] ([MaCTDH], [MaSP], [SoLuong], [DonGia], [MaDH]) VALUES (11, 2, 1, 237000, 4)
INSERT [dbo].[CHITIETDONHANG] ([MaCTDH], [MaSP], [SoLuong], [DonGia], [MaDH]) VALUES (12, 3, 1, 200000, 4)
INSERT [dbo].[CHITIETDONHANG] ([MaCTDH], [MaSP], [SoLuong], [DonGia], [MaDH]) VALUES (13, 2, 2, 237000, 5)
INSERT [dbo].[CHITIETDONHANG] ([MaCTDH], [MaSP], [SoLuong], [DonGia], [MaDH]) VALUES (14, 3, 1, 200000, 5)
INSERT [dbo].[CHITIETDONHANG] ([MaCTDH], [MaSP], [SoLuong], [DonGia], [MaDH]) VALUES (15, 2, 5, 237000, 6)
INSERT [dbo].[CHITIETDONHANG] ([MaCTDH], [MaSP], [SoLuong], [DonGia], [MaDH]) VALUES (16, 3, 1, 200000, 6)
INSERT [dbo].[CHITIETDONHANG] ([MaCTDH], [MaSP], [SoLuong], [DonGia], [MaDH]) VALUES (17, 9, 1, 130000, 6)
INSERT [dbo].[CHITIETDONHANG] ([MaCTDH], [MaSP], [SoLuong], [DonGia], [MaDH]) VALUES (19, 2, 1, 237000, 8)
INSERT [dbo].[CHITIETDONHANG] ([MaCTDH], [MaSP], [SoLuong], [DonGia], [MaDH]) VALUES (20, 6, 1, 670000, 9)
INSERT [dbo].[CHITIETDONHANG] ([MaCTDH], [MaSP], [SoLuong], [DonGia], [MaDH]) VALUES (21, 1, 3, 385000, 10)
INSERT [dbo].[CHITIETDONHANG] ([MaCTDH], [MaSP], [SoLuong], [DonGia], [MaDH]) VALUES (22, 1, 4, 385000, 11)
INSERT [dbo].[CHITIETDONHANG] ([MaCTDH], [MaSP], [SoLuong], [DonGia], [MaDH]) VALUES (23, 7, 1, 883000, 11)
INSERT [dbo].[CHITIETDONHANG] ([MaCTDH], [MaSP], [SoLuong], [DonGia], [MaDH]) VALUES (24, 6, 1, 670000, 12)
INSERT [dbo].[CHITIETDONHANG] ([MaCTDH], [MaSP], [SoLuong], [DonGia], [MaDH]) VALUES (25, 17, 1, 250000, 13)
INSERT [dbo].[CHITIETDONHANG] ([MaCTDH], [MaSP], [SoLuong], [DonGia], [MaDH]) VALUES (33, 1, 200, 385000, 20)
SET IDENTITY_INSERT [dbo].[CHITIETDONHANG] OFF
SET IDENTITY_INSERT [dbo].[DONHANG] ON 

INSERT [dbo].[DONHANG] ([MaDH], [TenTaiKhoan], [NgayDatHang], [NgayGiaoHang], [TrangThai]) VALUES (2, N'thanh123                                          ', CAST(N'2019-05-05' AS Date), CAST(N'2019-06-05' AS Date), 1)
INSERT [dbo].[DONHANG] ([MaDH], [TenTaiKhoan], [NgayDatHang], [NgayGiaoHang], [TrangThai]) VALUES (3, N'thanh123                                          ', CAST(N'2019-05-05' AS Date), CAST(N'2019-06-06' AS Date), 1)
INSERT [dbo].[DONHANG] ([MaDH], [TenTaiKhoan], [NgayDatHang], [NgayGiaoHang], [TrangThai]) VALUES (4, N'thanh123                                          ', CAST(N'2019-05-06' AS Date), CAST(N'2019-06-10' AS Date), 1)
INSERT [dbo].[DONHANG] ([MaDH], [TenTaiKhoan], [NgayDatHang], [NgayGiaoHang], [TrangThai]) VALUES (5, N'thanh123                                          ', CAST(N'2019-05-06' AS Date), CAST(N'2019-05-06' AS Date), 1)
INSERT [dbo].[DONHANG] ([MaDH], [TenTaiKhoan], [NgayDatHang], [NgayGiaoHang], [TrangThai]) VALUES (6, N'admin                                             ', CAST(N'2019-05-06' AS Date), CAST(N'2019-05-06' AS Date), 1)
INSERT [dbo].[DONHANG] ([MaDH], [TenTaiKhoan], [NgayDatHang], [NgayGiaoHang], [TrangThai]) VALUES (8, N'admin                                             ', CAST(N'2019-05-06' AS Date), CAST(N'2019-05-06' AS Date), 1)
INSERT [dbo].[DONHANG] ([MaDH], [TenTaiKhoan], [NgayDatHang], [NgayGiaoHang], [TrangThai]) VALUES (9, N'admin                                             ', CAST(N'2019-05-06' AS Date), CAST(N'2019-05-06' AS Date), 1)
INSERT [dbo].[DONHANG] ([MaDH], [TenTaiKhoan], [NgayDatHang], [NgayGiaoHang], [TrangThai]) VALUES (10, N'admin                                             ', CAST(N'2019-05-06' AS Date), NULL, 0)
INSERT [dbo].[DONHANG] ([MaDH], [TenTaiKhoan], [NgayDatHang], [NgayGiaoHang], [TrangThai]) VALUES (11, N'admin                                             ', CAST(N'2019-05-07' AS Date), NULL, 0)
INSERT [dbo].[DONHANG] ([MaDH], [TenTaiKhoan], [NgayDatHang], [NgayGiaoHang], [TrangThai]) VALUES (12, N'admin                                             ', CAST(N'2019-05-09' AS Date), NULL, 0)
INSERT [dbo].[DONHANG] ([MaDH], [TenTaiKhoan], [NgayDatHang], [NgayGiaoHang], [TrangThai]) VALUES (13, N'admin', CAST(N'2019-06-30' AS Date), NULL, 0)
INSERT [dbo].[DONHANG] ([MaDH], [TenTaiKhoan], [NgayDatHang], [NgayGiaoHang], [TrangThai]) VALUES (16, N'admin', CAST(N'2019-07-01' AS Date), NULL, 0)
INSERT [dbo].[DONHANG] ([MaDH], [TenTaiKhoan], [NgayDatHang], [NgayGiaoHang], [TrangThai]) VALUES (20, N'admin', CAST(N'2019-07-01' AS Date), NULL, 0)
SET IDENTITY_INSERT [dbo].[DONHANG] OFF
SET IDENTITY_INSERT [dbo].[LIENHE] ON 

INSERT [dbo].[LIENHE] ([MaLH], [HoTen], [SDT], [Email], [NoiDungChiTiet]) VALUES (1, N'Nguyễn Thành', N'0384563578          ', N'thanhnguyen@123gmail.com                          ', N'Tôi muốn đổi trả sản phẩm chuột thì cần làm thế nào')
INSERT [dbo].[LIENHE] ([MaLH], [HoTen], [SDT], [Email], [NoiDungChiTiet]) VALUES (2, N'Công Nguyễn ', N'01684956352         ', N'chienchien@gmail.com                              ', N'Sản phẩm nhận được không đúng với đơn hàng')
SET IDENTITY_INSERT [dbo].[LIENHE] OFF
SET IDENTITY_INSERT [dbo].[LOAISANPHAM] ON 

INSERT [dbo].[LOAISANPHAM] ([MaLoaiSP], [TenLoaiSP]) VALUES (1, N'Chuột Có Dây')
INSERT [dbo].[LOAISANPHAM] ([MaLoaiSP], [TenLoaiSP]) VALUES (2, N'Chuột Không Dây')
INSERT [dbo].[LOAISANPHAM] ([MaLoaiSP], [TenLoaiSP]) VALUES (3, N'Chuột Gaming')
SET IDENTITY_INSERT [dbo].[LOAISANPHAM] OFF
SET IDENTITY_INSERT [dbo].[MENU] ON 

INSERT [dbo].[MENU] ([MaMenu], [TenMenu], [Link], [MaMenuCha]) VALUES (1, N'Trang chủ', NULL, NULL)
SET IDENTITY_INSERT [dbo].[MENU] OFF
SET IDENTITY_INSERT [dbo].[NHOMTAIKHOAN] ON 

INSERT [dbo].[NHOMTAIKHOAN] ([MaNhomTK], [TenNhomTK]) VALUES (1, N'Admin')
INSERT [dbo].[NHOMTAIKHOAN] ([MaNhomTK], [TenNhomTK]) VALUES (2, N'Customer')
SET IDENTITY_INSERT [dbo].[NHOMTAIKHOAN] OFF
INSERT [dbo].[PHANQUYEN] ([MaNhomTK], [MaQuyen]) VALUES (1, 1)
INSERT [dbo].[PHANQUYEN] ([MaNhomTK], [MaQuyen]) VALUES (1, 2)
INSERT [dbo].[PHANQUYEN] ([MaNhomTK], [MaQuyen]) VALUES (1, 3)
SET IDENTITY_INSERT [dbo].[QUYEN] ON 

INSERT [dbo].[QUYEN] ([MaQuyen], [TenQuyen]) VALUES (1, N'Thêm sản phẩm')
INSERT [dbo].[QUYEN] ([MaQuyen], [TenQuyen]) VALUES (2, N'Sửa sản phẩm')
INSERT [dbo].[QUYEN] ([MaQuyen], [TenQuyen]) VALUES (3, N'Xóa sản phẩm')
SET IDENTITY_INSERT [dbo].[QUYEN] OFF
SET IDENTITY_INSERT [dbo].[SANPHAM] ON 

INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [Gia], [GiamGia], [LuotXem], [Anh1], [Anh2], [Anh3], [MoTa1], [MoTa2], [MoTa3], [MoTa4], [MoTa5], [SoLuong], [MaLoaiSP], [MaTH], [MaXX], [Moi]) VALUES (1, N'Chuột gaming logitech G102 Prodigy', 450000, 385000, 99, N'/Content/Images/Logitech_G102_1.jpg                 ', N'/Content/Images/Logitech_G102_2.jpg    ', N'/Content/Images/Logitech_G102_3.jpg    ', N'<ul>     <li><p>Kiểu dáng đơn giản</p>   <li><p>6 nút có thể lập trình</p>   <li><p>Mắt đọc quang học 8000 DPI</p>   <li><p>Tùy chỉnh DPI trực tiếp trên chuột bằng Logitech Gaming Software</p>   <li><p>Bộ nhớ trong</p>   <li><p>Đèn led RGB</p> </ul>', N'Hiệu suất đẳng cấp chơi game. Nhanh hơn tới 8 lần', N'G102 Prodigy giao tiếp ở mức lên tới 1000 báo cáo mỗi giây - hay nhanh hơn gấp 8 lần so với chuột tiêu chuẩn. Điều này có nghĩa là khi nhấp hay di chuyển chuột, phản ứng trên màn hình gần như tức thời', N'Thiết kế cổ điển. Thoải mái và quen thuộc', N'Giống như Chuột chơi game Logitech G Pro, G102 được lấy cảm hứng từ thiết kế huyền thoại của Chuột chơi game G100S của Logitech. Được các game thủ trên khắp thế giới yêu thích và là món đồ ưa chuộng của những người chơi thể thao điện tử chuyên nghiệp, đó là thiết kế quen thuộc mà chúng tôi đã thiết kế lại và tối ưu hóa từ trong ra ngoài để đạt độ linh hoạt, độ bền và thoải mái trong sử dụng hàng ngày.', 23, 3, 1, 1, 1)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [Gia], [GiamGia], [LuotXem], [Anh1], [Anh2], [Anh3], [MoTa1], [MoTa2], [MoTa3], [MoTa4], [MoTa5], [SoLuong], [MaLoaiSP], [MaTH], [MaXX], [Moi]) VALUES (2, N'Chuột Không Dây Logitech M221 - Hàng Chính Hãng', 319000, 237000, 23, N'/Content/Images/Logitech_M221_1.jpg                 ', N'/Content/Images/Logitech_M221_2.jpg  ', N'/Content/Images/Logitech_M221_3.jpg  ', N'<ul>
	<li>Cổng : USB</li>
	<li>PIN : 1xAA</li>
	<li>Số lượng nút : 3</li>
	<li>Bánh xe cuộn : Có, 2D, Quang học</li>
	<li>Độ phân giải cảm biến : 1000 DPi</li>
	<li>Khoảng cách hoạt động : 10m</li>
	<li>Hổ trợ HĐH : Windows 7/ 8/ 10/ RT , MAC OSx10.5 trở lên, Linux 2.6+2, Chrome OS</li>
</ul>', N'Thiết kế tinh tế và hiện đại', N'Chuột Không Dây Logitech M221 được thiết kế với các đường cong uốn lượn, bo tròn và ôm sát lòng bàn tay, giúp người sử dụng giảm bớt sự đau mỏi cơ các ngón tay và cổ tay. Ngoài ra kích thước nhỏ gọn, sản phẩm có thể được bạn đem theo bên mình và sử dụng khi cần thiết.', N'Công nghệ chuột quang tiên tiến', N'Sản phẩm được trang bị công nghệ chuột quang tiên tiến cho độ phân giải lên đến 1000dpi. Độ phân giải cao giúp , chuột có thể di chuyển nhanh và mượt mà trên nhiều bền mặt, đảm bảo hiệu quả cho công việc, học tập cũng như giải trí.', 15, 2, 1, 2, 1)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [Gia], [GiamGia], [LuotXem], [Anh1], [Anh2], [Anh3], [MoTa1], [MoTa2], [MoTa3], [MoTa4], [MoTa5], [SoLuong], [MaLoaiSP], [MaTH], [MaXX], [Moi]) VALUES (3, N'Chuột Có Dây Fuhlen L102 1000DPI - Hàng Nhập Khẩu', 300000, 200000, 25, N'/Content/Images/Fuhlen_L102_1.jpg                   ', N'/Content/Images/Fuhlen_L102_2.jpg ', N'/Content/Images/Fuhlen_L102_3.jpg ', N'<ul>
	<li>Cảm biến quang độ phân giải 1000DPI</li>
	<li>3 nút bấm thông thường</li>
	<li>Kết nối thông qua cổng USB</li>
</ul>', N'Thiết kế Ergonomic khỏe khoẳn', N'Chuột Có Dây Fuhlen L102 thiết kế Ergonomic khỏe khoẳn, cầm khá vừa tay và thoải mái để người dùng có thể thao tác, sử dụng trong một thời gian dài mà không có cảm giác bị mỏi tay và khó chịu. Bạn có thể chơi game, lướt web đọc tin tức hàng giờ liền mà vẫn thoải mái.', N'Cảm biến quang học hiện đại', N'Sử dụng công nghệ cảm biến quang hiện đại với độ phân giải 1000 DPI với 3 nút bấm cơ bản cho cảm giác lướt chuột êm ái. Do đó mang đến cho bạn nhiều lựa chọn khi giải trí, và làm việc.Còn có thể chịu được tới 3 triệu lượt click chuột với gia tốc trên mặt phẳng khá cao, hoạt đông tốt trên mọi bề mặt có địa hình bằng phẳng, cùng với đó là tốc độ dịch chuyển rất ấn tượng.', 16, 1, 2, 3, 1)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [Gia], [GiamGia], [LuotXem], [Anh1], [Anh2], [Anh3], [MoTa1], [MoTa2], [MoTa3], [MoTa4], [MoTa5], [SoLuong], [MaLoaiSP], [MaTH], [MaXX], [Moi]) VALUES (4, N'Chuột Không Dây DareU LM115G - Hàng Chính Hãng', 199000, 134000, 20, N'/Content/Images/DareU_LM115G_1.jpg                   ', N'/Content/Images/DareU_LM115G_2.jpg                   ', N'/Content/Images/DareU_LM115G_3.jpg                   ', N'<ul>
	<li>Sensor: PAW3512</li>
	<li>Sóng 2.4G</li>
	<li>DPI: 800-1200-1600</li>
	<li>Pin: 1 pin AA</li>
</ul>', N'Thiết kế tinh tế và hiện đại', N'Chuột Không Dây DareU LM115G mang đến cho người dùng sự mới lạ trong thiết kế. Với màu đen và thiết kế bo tròn cho cảm giác thoải mái khi dùng. Sản phẩm tương thích với nhiều hệ điều hành: Windows, MAC.', N'Công nghệ chuột quang tiên tiến', N'Sản phẩm được trang bị công nghệ chuột quang tiên tiến cho độ phân giải lên đến 1600dpi. Độ phân giải cao giúp chuột có thể di chuyển nhanh và mượt mà trên nhiều bền mặt, đảm bảo hiệu quả cho công việc, học tập cũng như giải trí.', 10, 2, 6, 3, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [Gia], [GiamGia], [LuotXem], [Anh1], [Anh2], [Anh3], [MoTa1], [MoTa2], [MoTa3], [MoTa4], [MoTa5], [SoLuong], [MaLoaiSP], [MaTH], [MaXX], [Moi]) VALUES (5, N'Chuột Không Dây Logitech MX Anywhere 2S Receiver USB - Hàng Chính Hãng', 1999000, 1320000, 58, N'/Content/Images/Logitech_MXAnywhere2S_1.jpg', N'/Content/Images/Logitech_MXAnywhere2S_2.jpg', N'/Content/Images/Logitech_MXAnywhere2S_3.jpg', N'<ul>
	<li>Độ phân giải quang học: 4000 DPI</li>
	<li>7 nút thao tác và 1 cần gạt on/off</li>
	<li>Kết nối thông qua cổng USB hoặc công nghệ Bluetooth</li>
	<li>Khoảng cách tối đa 10m</li>
	<li>Pin: Pin sạc Li-Po (500 mAh)</li>
	<li>Công nghệ không dây 2.4 GHz nâng cao</li>
	<li>Công nghệ cảm biến Darkfield có độ chính xác cao</li>
</ul>', N'Tiến trình làm việc đa máy tính dễ dàng', N'Chuột Không Dây Logitech MX Anywhere 2S Receiver USB sử dụng công nghệ Logitech Flow, giúp bạn có thể di chuyển con trỏ chuột qua ba màn hình máy tính và thậm chí cả sao chép/dán văn bản, hình ảnh và tệp tin từ máy này sang máy khác vô cùng dễ dàng. Cùng với hình dáng nhỏ gọn, độc đáo để mang đi khắp nơi, con chuột không dây di động này được thiết kế để giúp bạn hoàn thành nhiệm vụ tại nơi làm việc hay trong khi di chuyển.', N'Tính năng theo dõi Darkfield có độ chính xác cao', N'Sản phẩm sử dụng công nghệ theo dõi Darkfield có chất lượng tốt nhất với độ chính xác cao, có khả năng cảm biến chính xác lên đến 4000 DPI hoàn toàn mới, có thể theo dõi ở bất kỳ đâu - ngay cả trên mặt bàn kính sáng bóng.', 7, 2, 1, 3, 1)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [Gia], [GiamGia], [LuotXem], [Anh1], [Anh2], [Anh3], [MoTa1], [MoTa2], [MoTa3], [MoTa4], [MoTa5], [SoLuong], [MaLoaiSP], [MaTH], [MaXX], [Moi]) VALUES (6, N'Chuột Máy Tính Có Dây Logitech B100 - Hàng Chính Hãng', 139000, 67000, 38, N'/Content/Images/Logitech_B100_1.jpg', N'/Content/Images/Logitech_B100_2.jpg', N'/Content/Images/Logitech_B100_3.jpg', N'<ul>
	<li>Thiết kế thân thiện</li>
	<li>Nút bấm nhạy</li>
	<li>Độ phân giải 800dpi</li>
	<li>Dễ dàng sử dụng</li>
</ul>', N'Thiết kế thân thiện', N'Logitech B100 sử dụng chipset công nghệ mới, di chuyển nhẹ nhàng mà không kén bề mặt, được thiết kế phù hợp cho cả người thuận tay phải hoặc tay trái. Thân chuột có độ cong hợp lý chống trơn trượt và không có rãnh ngăn cách giữa các nút, cho người dùng cảm giác êm tay khi sử dụng.', N'Nút bấm nhạy', N'Các nút bấm rất nảy, kêu tanh tách rất gọn, bánh xe giữa xoay 24 nấc là đủ 1 vòng quay, tách bạch rõ ràng.', 12, 1, 1, 4, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [Gia], [GiamGia], [LuotXem], [Anh1], [Anh2], [Anh3], [MoTa1], [MoTa2], [MoTa3], [MoTa4], [MoTa5], [SoLuong], [MaLoaiSP], [MaTH], [MaXX], [Moi]) VALUES (7, N'Chuột Gaming Có Dây Logitech G402', 1070000, 883000, 55, N'/Content/Images/Logitech_G402_1.jpg', N'/Content/Images/Logitech_G402_2.jpg', N'/Content/Images/Logitech_G402_3.jpg', N'
<ul>
	<li>Chuột quang học cao cấp</li>
	<li>Bộ nhớ miền trong</li>
	<li>Bền và nhẹ</li>
</ul>
', N'', N'Chuột Gaming Có Dây Logitech Thiết kế nhỏ gọn, dễ dàng di chuyển chuột nhanh chóng.', NULL, N'Chuột phản hồi nhanh (125Hz / 8 mili giây), nghĩa là phản ứng gần như cùng lúc với thời điểm chuột di chuyển hoặc nhấp chuột. Hệ thống ứng lực cho chuột cải thiện tốc độ phản hồi.', 5, 3, 1, 5, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [Gia], [GiamGia], [LuotXem], [Anh1], [Anh2], [Anh3], [MoTa1], [MoTa2], [MoTa3], [MoTa4], [MoTa5], [SoLuong], [MaLoaiSP], [MaTH], [MaXX], [Moi]) VALUES (8, N'Chuột quang không dây Fuhlen A09', 150000, 120000, 27, N'/Content/Images/Fuhlen_A09_1.jpg                   ', N'/Content/Images/Fuhlen_A09_2.jpg                   ', N'/Content/Images/Fuhlen_A09_3.jpg                   ', N'<ul>
	<li>Hãng sản xuất: FUHLEN</li>
	<li>Kiểu giao tiếp: USB, Không dây</li>
	<li>Tốc độ: 30 inches/giây</li>
	<li>Độ phân giải: 1000 dpi</li>
	<li>Tuổi thọ pin: 12 tháng</li>
	<li>Thiết kế dùng cho người: Thuận tay phải</li>
</ul>', N'TÍNH NĂNG NỔI BẬT. Thiết kế ấn tượng', N'Chuột USB không dây Fuhlen A09BG có thiết kế rất ấn tượng: khá to tròn và đồ sộ. Thiết kế này lại mang đến sự thoải mái tối đa cho lòng bàn tay và cổ tay bạn dù phải sử dụng trong thời gian dài. Ngoài ra, đầu thu Fuhlen A09BG có khắc hình Fuhlen, kèm theo công tắc ON/OFF phía dưới.', N'Công nghệ Nano 2.4Ghz và không sử dụng đèn quang học.', N'Fuhlen A09BG kết nối nhẹ nhàng và nhanh chóng với sóng 2.4GHz bằng 2 kênh kỹ thuật số RF, giúp cho thiết bị di chuyển dễ dàng hơn, truyền tải dữ liệu nhanh chóng, không có cảm giác bị trễ - chậm hay mất tín hiệu, khoảng cách lên đến 10m.', 5, 2, 2, 3, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [Gia], [GiamGia], [LuotXem], [Anh1], [Anh2], [Anh3], [MoTa1], [MoTa2], [MoTa3], [MoTa4], [MoTa5], [SoLuong], [MaLoaiSP], [MaTH], [MaXX], [Moi]) VALUES (9, N'Chuột Không Dây Fuhlen A06G', 200000, 130000, 3, N'/Content/Images/Fuhlen_A06G_1.jpg                   ', NULL, NULL, N'<ul>
	<li>Kiểu giao tiếp: USB, Không dây</li>
	<li>Tốc độ: 30 inches/giây</li>
	<li>Độ phân giải: 1000 dpi</li>
	<li>Số nút: 3</li>
</ul>', N'Thiết kế nhỏ gọn, A06G dùng cho laptop', N'- Cải tiến sóng không dây 2.4 GHz: Giúp cho thiết bị di chuyển dễ dàng hơn, truyền tải dữ liệu nhanh chóng, không có cảm giác bị trễ - chậm hay mất tín hiệu , khoảng cách lên đến 10m.', N'- Độ phân giải đến 1000dpi: Độ phân giải thiết kế lên đến 1000dpi giúp cho chuột di chuyển dễ dàng, chính xác', N'- Thiết bị thu phát "cắm và quên" (Plug-and-forget): sử dụng công nghệ nano, Do thiết bị thật sự nhỏ và gọn nên bạn có tể cắm vào một cổng USB và quên nó đi', 18, 2, 2, 3, 1)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [Gia], [GiamGia], [LuotXem], [Anh1], [Anh2], [Anh3], [MoTa1], [MoTa2], [MoTa3], [MoTa4], [MoTa5], [SoLuong], [MaLoaiSP], [MaTH], [MaXX], [Moi]) VALUES (10, N'Chuột Không Dây Fuhlen X200
', 1450000, 1400000, 30, N'/Content/Images/Fuhlen_X200_1.jpg                   ', NULL, NULL, NULL, N'Chuột Không Dây Fuhlen X200', N'Chuột không dây Fuhlen X100 kết nối không dây 2.4GHz, thiết kế phong cách game thủ với 7 button chức năng, trang bị cảm biến lazer có độ phân giải 5040 DPI với 4 mức chuyển đổi DPI. Chuột được trang bị Nút chuyển đổi DPI với 4 mức 1000/ 2000/ 32000/ 5040 giúp bạn có thể tùy chỉnh tốc độ chuột phù hợp với nhu cầu làm việc và giải trí, trang bị đèn LED giúp bạn giải tỏa bớt những căng thẳng trong khi hoạt động máy tính. Chuột Fuhlen X200 có 3 màu sắc để lựa chọn phù hợp với sở thích của riêng bạn.', N'Chuột không dây Fuhlen X200 thiết kế tuyệt vời cho các game thủ', N'Tính năng sản phẩm:

- Thiết kế dạng Ergonomic đầy cá tính vừa tầm với tay cho người dùng.

- Công nghệ kết nối không dây 2.4Ghz, cho khoảng cách hoạt động tới 10m.

- Có thêm dây cáp để hoạt động như một chuột có dây

- Cảm biến Lazer tốc độ cao 5040 DPI, đáp ứng mọi thao tác với tốc độ nhanh nhạy.

- Chuyển đổi DPI 4 mức 1000/2000/32000/5040 nhanh chóng và tiện lợi.

- Hoạt động được trên nhiều địa hình kể cả mặt kiếng bóng.

- Thiết kế trẻ trung với 3 màu sắc Đen, Đỏ, Xanh lá để lựa chọn.

- Đèn LED giúp bạn giải tỏa bớt những căng thẳng trong khi hoạt động máy tính.', 12, 2, 2, 3, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [Gia], [GiamGia], [LuotXem], [Anh1], [Anh2], [Anh3], [MoTa1], [MoTa2], [MoTa3], [MoTa4], [MoTa5], [SoLuong], [MaLoaiSP], [MaTH], [MaXX], [Moi]) VALUES (11, N'Chuột gaming Razer Abyssus Essential - Hàng chính hãng', 1000000, 980000, 11, N'/Content/Images/Razer_AbyssusEssential_1.jpg', N'/Content/Images/Razer_AbyssusEssential_2.jpg', N'/Content/Images/Razer_AbyssusEssential_3.jpg', N'<ul>
	<li>Phiên bản phổ thông của Razer Basilisk</li>
	<li>Thiết kế công thái học giữ nguyên</li>
	<li>Cảm giác cầm cực kì thoải mái</li>
	<li>Mắt cảm biết Razer 5G với 6400DPI cực kì chính xác</li>
	<li>Hệ thống Led màu xanh Green</li>
	<li>Phù hợp với các game thủ cầm chuột Palm Grip</li>
	<li>Trọng lượng giảm 12g, phù hợp để Try Hard FPS</li>
</ul>', N'Chuột thiết kế đối xứng, nhỏ gọn phù hợp với người tay nhỏ và vừa, cảm biến mới hiệu suất cao', N'LED Chroma 16.8 triệu màu', NULL, NULL, 2, 3, 3, 3, 1)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [Gia], [GiamGia], [LuotXem], [Anh1], [Anh2], [Anh3], [MoTa1], [MoTa2], [MoTa3], [MoTa4], [MoTa5], [SoLuong], [MaLoaiSP], [MaTH], [MaXX], [Moi]) VALUES (12, N'Chuột DAREU LM066- Hàng Chính Hãng', 165000, 120000, 5, N'\Content\Images\DareU_LM066_1.jpg', N'\Content\Images\DareU_LM066_2.jpg', N'\Content\Images\DareU_LM066_3.jpg', N'Sensor: PAN3512  DPI: 1000  Polling rate: 100Hz  Switch: Huano (10 triệu lần click)  Kích thước: 117*62*40mm  Dây 1.8m  Trọng lượng: 100g +/- 10g', N'Sensor: PAN3512', N'DPI: 1000', N'Switch: Huano (10 triệu lần click)', NULL, 30, 1, 6, 3, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [Gia], [GiamGia], [LuotXem], [Anh1], [Anh2], [Anh3], [MoTa1], [MoTa2], [MoTa3], [MoTa4], [MoTa5], [SoLuong], [MaLoaiSP], [MaTH], [MaXX], [Moi]) VALUES (13, N'Chuột Chơi Game Không Dây Razer Naga', 2600000, 2300000, 19, N'/Content/Images/Razer_Naga_1.jpg', NULL, NULL, NULL, N'Mechanical thumb keypad', N'The important part of Naga Vatican Snake is a thumb keypad designed specifically for gaming, 
Micro-concave mechanical buttons to facilitate game player blind operation, the rapid implementation of the game command.
Replaceable side panel design', N'Replaceable side panel design', N'For different MOBA / MMO games and different players operating preferences, 
Na Jia Vatican snake evolution of the thumb button area can be removed and replaced to meet multiple needs. 
RAZER mechanical mouse fretting
', 15, 3, 3, 2, 1)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [Gia], [GiamGia], [LuotXem], [Anh1], [Anh2], [Anh3], [MoTa1], [MoTa2], [MoTa3], [MoTa4], [MoTa5], [SoLuong], [MaLoaiSP], [MaTH], [MaXX], [Moi]) VALUES (17, N'Chuột Không Dây Microsoft 1850', 380000, 250000, 23, N'/Content/Images/Microsoft_1850_1.jpg', N'/Content/Images/Microsoft_1850_2.jpg', N'/Content/Images/Microsoft_1850_3.jpg', N'<ul>
	<li>Độ phân giải: 1000DPI</li>
	<li></li>
	<li>3 nút thông thường và 1 cần gạt on/off</li>
	<li></li>
	<li>Kết nối thông qua cổng USB</li>
	<li></li>
	<li>Dùng 1 viên Pin AA</li>
	<li></li>
	<li>Thời lượng pin dùng lên đến nhiều tháng</li>
	<li></li>
	<li>Công nghệ kết nối không dây 2.4GHz</li>
	<li></li>
	<li>Máy tính với Windows XP/Vista/7/8/10; Linus; Mac OS</li>
</ul>', N'Chuột Không Dây Microsoft 1850 có thiết kế đơn giản với màu sắc nổi bật và ấn tượng', N'Kết nối nhẹ nhàng và nhanh chóng với sóng 2.4GHz, truyền tải dữ liệu nhanh chóng, không có cảm giác bị trễ - chậm hay mất tín hiệu, khoảng cách lên đến 10m.', NULL, NULL, 20, 2, 4, 3, 1)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [Gia], [GiamGia], [LuotXem], [Anh1], [Anh2], [Anh3], [MoTa1], [MoTa2], [MoTa3], [MoTa4], [MoTa5], [SoLuong], [MaLoaiSP], [MaTH], [MaXX], [Moi]) VALUES (18, N'Chuột Chơi Game Không Dây Logitech G603 Lightspeed 12000DPI - Hàng Chính Hãng', 1700000, 1300000, 45, N'/Content/Images/Logitech_G603_1.jpg', N'/Content/Images/Logitech_G603_2.jpg', N'/Content/Images/Logitech_G603_3.jpg', N'<ul>
	<li>Cảm biến quang học 12000DPI, có thể tùy chỉnh</li>
	<li>Nút click có tuổi thọ lên đến 20 triệu lần nhấn</li>
	<li>Tần số phản hồi 1000Hz</li>
	<li>Tốc độ quét tối đa 400IPS và gia tốc 40g</li>
	<li>Kết nối thông qua cổng USB bằng USB receiver</li>
	<li>Có bộ nhớ trong để lưu lại thiết đặt cho riêng từng game</li>
	<li>Trọng lượng 88.9g chỉ chuột / 112.3g 1 pin AA / 135.7g 2 pin AA</li>
	<li>Sử dụng 2 viên pin AA</li>
</ul>', NULL, NULL, NULL, NULL, 30, 3, 1, 3, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [Gia], [GiamGia], [LuotXem], [Anh1], [Anh2], [Anh3], [MoTa1], [MoTa2], [MoTa3], [MoTa4], [MoTa5], [SoLuong], [MaLoaiSP], [MaTH], [MaXX], [Moi]) VALUES (26, N'DareU 915', 1, 1, 1, N'/Content/Images/DareU_EM915_1.jpg', N'/Content/Images/DareU_EM915_2.jpg', N'/Content/Images/DareU_EM915_3.jpg', N'<ul>     <li><p>Kiểu dáng đơn giản</p>   <li><p>6 nút có thể lập trình</p>   <li><p>Mắt đọc quang học 8000 DPI</p>   <li><p>Tùy chỉnh DPI trực tiếp trên chuột bằng Logitech Gaming Software</p>   <li><p>Bộ nhớ trong</p>   <li><p>Đèn led RGB</p> </ul>', N'Sensor: PAN3512', N'DPI: 1000', N'Switch: Huano (10 triệu lần click)', NULL, 3, 1, 6, 2, 1)
SET IDENTITY_INSERT [dbo].[SANPHAM] OFF
INSERT [dbo].[TAIKHOAN] ([TenTaiKhoan], [MatKhau], [TenKhachHang], [GioiTinh], [SDT], [Email], [DiaChi], [MaNhomTK]) VALUES (N'admin', N'admin ', N'admin', N'Nam', N'0384593636          ', N'nguyenthanhtb98@gmail.com                         ', N'Số nhà 15 ngõ 120 ngách 19 đường Trần Cung', 1)
INSERT [dbo].[TAIKHOAN] ([TenTaiKhoan], [MatKhau], [TenKhachHang], [GioiTinh], [SDT], [Email], [DiaChi], [MaNhomTK]) VALUES (N'admin1', N'admin1', N'admin', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[TAIKHOAN] ([TenTaiKhoan], [MatKhau], [TenKhachHang], [GioiTinh], [SDT], [Email], [DiaChi], [MaNhomTK]) VALUES (N'thanh123', N'123456 ', N'Nguyễn Văn Thành', N'Nam', N'0364597856          ', N'thanhtb98@gmail.com                               ', N'Quận Cầu Giấy Hà Nội', 2)
INSERT [dbo].[TAIKHOAN] ([TenTaiKhoan], [MatKhau], [TenKhachHang], [GioiTinh], [SDT], [Email], [DiaChi], [MaNhomTK]) VALUES (N'user', N'user', N'user', N'Nam', N'0384593636          ', N'nguyenthanhtb98@gmail.com                         ', N'Số nhà 15 ngõ 120 ngách 19 đường Trần Cung', 2)
INSERT [dbo].[TAIKHOAN] ([TenTaiKhoan], [MatKhau], [TenKhachHang], [GioiTinh], [SDT], [Email], [DiaChi], [MaNhomTK]) VALUES (N'user1', N'user1', N'Nguyễn Văn Thành', NULL, NULL, NULL, NULL, 2)
SET IDENTITY_INSERT [dbo].[THUONGHIEU] ON 

INSERT [dbo].[THUONGHIEU] ([MaTH], [TenTH]) VALUES (1, N'Chuột Logitech')
INSERT [dbo].[THUONGHIEU] ([MaTH], [TenTH]) VALUES (2, N'Chuột Fuhlen')
INSERT [dbo].[THUONGHIEU] ([MaTH], [TenTH]) VALUES (3, N'Chuột Razer')
INSERT [dbo].[THUONGHIEU] ([MaTH], [TenTH]) VALUES (4, N'Chuột MicroSoft')
INSERT [dbo].[THUONGHIEU] ([MaTH], [TenTH]) VALUES (6, N'Chuột DareU')
INSERT [dbo].[THUONGHIEU] ([MaTH], [TenTH]) VALUES (7, N'NewMan')
SET IDENTITY_INSERT [dbo].[THUONGHIEU] OFF
SET IDENTITY_INSERT [dbo].[XUATXU] ON 

INSERT [dbo].[XUATXU] ([MaXX], [TenXX]) VALUES (1, N'Việt Nam')
INSERT [dbo].[XUATXU] ([MaXX], [TenXX]) VALUES (2, N'Nhật Bản')
INSERT [dbo].[XUATXU] ([MaXX], [TenXX]) VALUES (3, N'Trung Quốc')
INSERT [dbo].[XUATXU] ([MaXX], [TenXX]) VALUES (4, N'Mỹ')
INSERT [dbo].[XUATXU] ([MaXX], [TenXX]) VALUES (5, N'Hàn Quốc')
SET IDENTITY_INSERT [dbo].[XUATXU] OFF
ALTER TABLE [dbo].[DONHANG] ADD  CONSTRAINT [DF_DONHANG_TrangThai]  DEFAULT ((0)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[TAIKHOAN] ADD  CONSTRAINT [DF_TAIKHOAN_MaNhomTK]  DEFAULT ((2)) FOR [MaNhomTK]
GO
ALTER TABLE [dbo].[CHITIETDONHANG]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETDONHANG_DONHANG] FOREIGN KEY([MaDH])
REFERENCES [dbo].[DONHANG] ([MaDH])
GO
ALTER TABLE [dbo].[CHITIETDONHANG] CHECK CONSTRAINT [FK_CHITIETDONHANG_DONHANG]
GO
ALTER TABLE [dbo].[CHITIETDONHANG]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETDONHANG_SANPHAM] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SANPHAM] ([MaSP])
GO
ALTER TABLE [dbo].[CHITIETDONHANG] CHECK CONSTRAINT [FK_CHITIETDONHANG_SANPHAM]
GO
ALTER TABLE [dbo].[DONHANG]  WITH CHECK ADD  CONSTRAINT [FK_DONHANG_TAIKHOAN] FOREIGN KEY([TenTaiKhoan])
REFERENCES [dbo].[TAIKHOAN] ([TenTaiKhoan])
GO
ALTER TABLE [dbo].[DONHANG] CHECK CONSTRAINT [FK_DONHANG_TAIKHOAN]
GO
ALTER TABLE [dbo].[PHANQUYEN]  WITH CHECK ADD  CONSTRAINT [FK_PHANQUYEN_NHOMTAIKHOAN(MaNhomTK)] FOREIGN KEY([MaNhomTK])
REFERENCES [dbo].[NHOMTAIKHOAN] ([MaNhomTK])
GO
ALTER TABLE [dbo].[PHANQUYEN] CHECK CONSTRAINT [FK_PHANQUYEN_NHOMTAIKHOAN(MaNhomTK)]
GO
ALTER TABLE [dbo].[PHANQUYEN]  WITH CHECK ADD  CONSTRAINT [FK_PHANQUYEN_QUYEN(MaQuyen)] FOREIGN KEY([MaQuyen])
REFERENCES [dbo].[QUYEN] ([MaQuyen])
GO
ALTER TABLE [dbo].[PHANQUYEN] CHECK CONSTRAINT [FK_PHANQUYEN_QUYEN(MaQuyen)]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SANPHAM_LOAISANPHAM] FOREIGN KEY([MaLoaiSP])
REFERENCES [dbo].[LOAISANPHAM] ([MaLoaiSP])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SANPHAM_LOAISANPHAM]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SANPHAM_THUONGHIEU] FOREIGN KEY([MaTH])
REFERENCES [dbo].[THUONGHIEU] ([MaTH])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SANPHAM_THUONGHIEU]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SANPHAM_XUATXU] FOREIGN KEY([MaXX])
REFERENCES [dbo].[XUATXU] ([MaXX])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SANPHAM_XUATXU]
GO
ALTER TABLE [dbo].[TAIKHOAN]  WITH CHECK ADD  CONSTRAINT [FK_TAIKHOAN_NHOMTAIKHOAN] FOREIGN KEY([MaNhomTK])
REFERENCES [dbo].[NHOMTAIKHOAN] ([MaNhomTK])
GO
ALTER TABLE [dbo].[TAIKHOAN] CHECK CONSTRAINT [FK_TAIKHOAN_NHOMTAIKHOAN]
GO
/****** Object:  StoredProcedure [dbo].[DangNhap]    Script Date: 7/3/2019 12:26:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[DangNhap](@username char(50), @password char(50))
as
begin
	declare @count int 
	declare @res bit
	select @count = COUNT (*) from dbo.TAIKHOAN where TAIKHOAN.TenTaiKhoan = @username and TAIKHOAN.MatKhau = @password
	if(@count > 0) set @res = 1
	else set @res = 0
	select @res
end
GO
/****** Object:  StoredProcedure [dbo].[LayDanhSachSanPham]    Script Date: 7/3/2019 12:26:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[LayDanhSachSanPham]
as
begin
select * from SANPHAM
end
GO
/****** Object:  StoredProcedure [dbo].[LayDanhSachSanPhamTheoLoaiSanPham]    Script Date: 7/3/2019 12:26:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[LayDanhSachSanPhamTheoLoaiSanPham](@malsp char(10))
as
begin
select * from SANPHAM
where SANPHAM.MaLoaiSP = @malsp
end
GO
/****** Object:  StoredProcedure [dbo].[LayDanhSachSanPhamTheoThuongHieu]    Script Date: 7/3/2019 12:26:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[LayDanhSachSanPhamTheoThuongHieu](@math char(10))
as
begin
select * from SANPHAM
where SANPHAM.MaLoaiSP = @math
end
GO
/****** Object:  StoredProcedure [dbo].[LayDanhSachSanPhamTheoXuatXu]    Script Date: 7/3/2019 12:26:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[LayDanhSachSanPhamTheoXuatXu](@maxx char(10))
as
begin
select * from SANPHAM
where SANPHAM.MaLoaiSP = @maxx
end
GO
/****** Object:  StoredProcedure [dbo].[ThemTaiKhoan]    Script Date: 7/3/2019 12:26:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ThemTaiKhoan] (@TenTK char(50), @MatKhau char(50), @TenKH nvarchar(50), @GT nvarchar(10), @Email char(50), @SDT char(20), @DiaChi nvarchar(50))
AS
BEGIN
insert into dbo.TAIKHOAN(TenTaiKhoan,MatKhau,TenKhachHang,GioiTinh,Email,SDT,DiaChi)
values(@TenTK, @MatKhau, @TenKH, @GT, @Email, @SDT, @DiaChi)
END
GO
/****** Object:  StoredProcedure [dbo].[XoaDonHang]    Script Date: 7/3/2019 12:26:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[XoaDonHang](@id int)
as
begin
	delete CHITIETDONHANG
	where MaDH = @id
	delete DONHANG
	where MaDH = @id
end
GO
/****** Object:  StoredProcedure [dbo].[XoaLoaiSP]    Script Date: 7/3/2019 12:26:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[XoaLoaiSP](@id int)
as
begin
	update SANPHAM 
	set MaLoaiSP = NULL
	where MaLoaiSP = @id
	delete LOAISANPHAM
	where MaLoaiSP = @id
end
GO
/****** Object:  StoredProcedure [dbo].[XoaNhomTK]    Script Date: 7/3/2019 12:26:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[XoaNhomTK](@MaNhomTK int)
as
begin
	update TAIKHOAN
	set MaNhomTK = NULL
	where MaNhomTK = @MaNhomTK
	delete NHOMTAIKHOAN
	where MaNhomTK = @MaNhomTK
end
GO
/****** Object:  StoredProcedure [dbo].[XoaSanPham]    Script Date: 7/3/2019 12:26:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[XoaSanPham](@id int)
as
begin
	delete CHITIETDONHANG
	where MaSP = @id
	delete SANPHAM
	where MaSP = @id
end
GO
/****** Object:  StoredProcedure [dbo].[XoaThuongHieu]    Script Date: 7/3/2019 12:26:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[XoaThuongHieu](@id int)
as
begin
	update SANPHAM 
	set MaTH = NULL
	where MaTH = @id
	delete THUONGHIEU
	where MaTH = @id
end
GO
/****** Object:  StoredProcedure [dbo].[XoaTK]    Script Date: 7/3/2019 12:26:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[XoaTK](@tentk nvarchar(50))
as
begin
	delete CHITIETDONHANG
	where MaDH = (select MaDH from DONHANG where TenTaiKhoan = @tentk)
	delete DONHANG
	where TenTaiKhoan = @tentk
	delete TAIKHOAN
	where TenTaiKhoan = @tentk
end
GO
/****** Object:  StoredProcedure [dbo].[XoaXuatXu]    Script Date: 7/3/2019 12:26:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[XoaXuatXu](@id int)
as
begin
	update SANPHAM 
	set MaXX = NULL
	where MaXX = @id
	delete XUATXU
	where MaXX = @id
end
GO
USE [master]
GO
ALTER DATABASE [WebBanChuotMayTinh] SET  READ_WRITE 
GO
