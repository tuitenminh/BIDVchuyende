CREATE TABLE [dbo].[chi_nhanh](
	[MaChiNhanh] [int] NOT NULL,
	[TenChiNhanh] [varchar](100) NOT NULL,
	[MaTenChiNhanh] [varchar](100) NOT NULL,
	[MaTP] [int] NOT NULL,
	[Dia_Chi_Duong] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChiNhanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[MaTenChiNhanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dangkydichvu]    Script Date: 2024-04-22 12:01:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dangkydichvu](
	[MaKhachHang] [int] NULL,
	[MaDichVu] [int] NULL,
	[Ngay_DK] [datetime] NOT NULL,
	[Ngay_KT] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khach_hang]    Script Date: 2024-04-22 12:01:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khach_hang](
	[CIF_MaKhachHang] [int] NOT NULL,
	[CMT] [int] NULL,
	[HoTen] [varchar](50) NOT NULL,
	[NgaySinh] [datetime] NOT NULL,
	[Tuoi] [int] NOT NULL,
	[GioiTinh] [char](10) NOT NULL,
	[SDT] [int] NULL,
	[Email] [varchar](30) NULL,
	[TongTS] [int] NOT NULL,
	[NgayMoTK] [datetime] NOT NULL,
	[Ma_PhongBan] [int] NOT NULL,
	[Ma_CanBo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CIF_MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhan_vien]    Script Date: 2024-04-22 12:01:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhan_vien](
	[MaCanBo] [int] NOT NULL,
	[TenCanBo] [varchar](100) NOT NULL,
	[MaTenCanBo] [varchar](100) NOT NULL,
	[MaPhongBan] [int] NOT NULL,
	[MaChiNhanh] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCanBo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[MaTenCanBo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhomduno]    Script Date: 2024-04-22 12:01:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhomduno](
	[MaNhomDuNo] [int] NOT NULL,
	[tenNhomDuNo] [varchar](100) NOT NULL,
	[MaTenNhomDuNo] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhomDuNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[MaTenNhomDuNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhomthekh]    Script Date: 2024-04-22 12:01:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhomthekh](
	[MaPhanNhom] [int] NOT NULL,
	[TenPhanNhom] [varchar](100) NOT NULL,
	[MaTenPhanNhom] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhanNhom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[MaTenPhanNhom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phannhomkh]    Script Date: 2024-04-22 12:01:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phannhomkh](
	[MaKhachHang] [int] NOT NULL,
	[MaPhanNhom] [int] NOT NULL,
	[NgayChamSoc] [datetime] NOT NULL,
	[TNT_cuaKH] [decimal](10, 0) NOT NULL,
	[TNT_tuHDV] [decimal](10, 0) NOT NULL,
	[TNT_tuTD] [decimal](10, 0) NOT NULL,
	[TNT_tuDV] [decimal](10, 0) NOT NULL,
	[NgayKetThuc] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phannhomno]    Script Date: 2024-04-22 12:01:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phannhomno](
	[MaKhachHang] [int] NOT NULL,
	[MaNhomDuNo] [int] NOT NULL,
	[NgayNo] [date] NOT NULL,
	[SoDuNo] [decimal](10, 0) NOT NULL,
	[NgayKetThuc] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phong_ban]    Script Date: 2024-04-22 12:01:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phong_ban](
	[MaPhongBan] [int] NOT NULL,
	[TenPhongBan] [varchar](100) NOT NULL,
	[MaTenPhongBan] [varchar](100) NOT NULL,
	[MaChiNhanh] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhongBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhuongXa]    Script Date: 2024-04-22 12:01:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhuongXa](
	[MaPX] [int] NOT NULL,
	[TenPX] [nvarchar](50) NOT NULL,
	[MaQH] [int] NOT NULL,
 CONSTRAINT [PK_PhuongXa] PRIMARY KEY CLUSTERED 
(
	[MaPX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuanHuyen]    Script Date: 2024-04-22 12:01:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuanHuyen](
	[MaQH] [int] NOT NULL,
	[TenQH] [nvarchar](50) NOT NULL,
	[MaTP] [int] NOT NULL,
 CONSTRAINT [PK_QuanHuyen] PRIMARY KEY CLUSTERED 
(
	[MaQH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sanphamdichvu]    Script Date: 2024-04-22 12:01:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sanphamdichvu](
	[MaSanPham] [int] NOT NULL,
	[TenSanPham] [varchar](100) NOT NULL,
	[MaTenSanPham] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanhPho]    Script Date: 2024-04-22 12:01:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhPho](
	[MaTP] [int] NOT NULL,
	[TenTP] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ThanhPho] PRIMARY KEY CLUSTERED 
(
	[MaTP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[khach_hang] ADD  DEFAULT (NULL) FOR [CMT]
GO
ALTER TABLE [dbo].[khach_hang] ADD  DEFAULT (NULL) FOR [SDT]
GO
ALTER TABLE [dbo].[khach_hang] ADD  DEFAULT (NULL) FOR [Email]
GO
ALTER TABLE [dbo].[chi_nhanh]  WITH CHECK ADD  CONSTRAINT [FK1_TP] FOREIGN KEY([MaTP])
REFERENCES [dbo].[ThanhPho] ([MaTP])
GO
ALTER TABLE [dbo].[chi_nhanh] CHECK CONSTRAINT [FK1_TP]
GO
ALTER TABLE [dbo].[dangkydichvu]  WITH CHECK ADD  CONSTRAINT [FK_MaDichVu] FOREIGN KEY([MaDichVu])
REFERENCES [dbo].[sanphamdichvu] ([MaSanPham])
GO
ALTER TABLE [dbo].[dangkydichvu] CHECK CONSTRAINT [FK_MaDichVu]
GO
ALTER TABLE [dbo].[dangkydichvu]  WITH CHECK ADD  CONSTRAINT [FK_MaKhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[khach_hang] ([CIF_MaKhachHang])
GO
ALTER TABLE [dbo].[dangkydichvu] CHECK CONSTRAINT [FK_MaKhachHang]
GO
ALTER TABLE [dbo].[khach_hang]  WITH CHECK ADD  CONSTRAINT [FK_Ma_CanBo] FOREIGN KEY([Ma_CanBo])
REFERENCES [dbo].[nhan_vien] ([MaCanBo])
GO
ALTER TABLE [dbo].[khach_hang] CHECK CONSTRAINT [FK_Ma_CanBo]
GO
ALTER TABLE [dbo].[khach_hang]  WITH CHECK ADD  CONSTRAINT [FK_Ma_PhongBan] FOREIGN KEY([Ma_PhongBan])
REFERENCES [dbo].[phong_ban] ([MaPhongBan])
GO
ALTER TABLE [dbo].[khach_hang] CHECK CONSTRAINT [FK_Ma_PhongBan]
GO
ALTER TABLE [dbo].[nhan_vien]  WITH CHECK ADD  CONSTRAINT [FK_MaChiNhanh] FOREIGN KEY([MaChiNhanh])
REFERENCES [dbo].[chi_nhanh] ([MaChiNhanh])
GO
ALTER TABLE [dbo].[nhan_vien] CHECK CONSTRAINT [FK_MaChiNhanh]
GO
ALTER TABLE [dbo].[nhan_vien]  WITH CHECK ADD  CONSTRAINT [FK_MaPhongBan] FOREIGN KEY([MaPhongBan])
REFERENCES [dbo].[phong_ban] ([MaPhongBan])
GO
ALTER TABLE [dbo].[nhan_vien] CHECK CONSTRAINT [FK_MaPhongBan]
GO
ALTER TABLE [dbo].[phannhomkh]  WITH CHECK ADD  CONSTRAINT [FK2_MaKhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[khach_hang] ([CIF_MaKhachHang])
GO
ALTER TABLE [dbo].[phannhomkh] CHECK CONSTRAINT [FK2_MaKhachHang]
GO
ALTER TABLE [dbo].[phannhomkh]  WITH CHECK ADD  CONSTRAINT [FK2_MaPhanNhom] FOREIGN KEY([MaPhanNhom])
REFERENCES [dbo].[nhomthekh] ([MaPhanNhom])
GO
ALTER TABLE [dbo].[phannhomkh] CHECK CONSTRAINT [FK2_MaPhanNhom]
GO
ALTER TABLE [dbo].[phannhomno]  WITH CHECK ADD  CONSTRAINT [FK2_MaNhomDuNo] FOREIGN KEY([MaNhomDuNo])
REFERENCES [dbo].[nhomduno] ([MaNhomDuNo])
GO
ALTER TABLE [dbo].[phannhomno] CHECK CONSTRAINT [FK2_MaNhomDuNo]
GO
ALTER TABLE [dbo].[phannhomno]  WITH CHECK ADD  CONSTRAINT [FK3_MaKhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[khach_hang] ([CIF_MaKhachHang])
GO
ALTER TABLE [dbo].[phannhomno] CHECK CONSTRAINT [FK3_MaKhachHang]
GO
ALTER TABLE [dbo].[PhuongXa]  WITH CHECK ADD  CONSTRAINT [FK_MaQH] FOREIGN KEY([MaQH])
REFERENCES [dbo].[QuanHuyen] ([MaQH])
GO
ALTER TABLE [dbo].[PhuongXa] CHECK CONSTRAINT [FK_MaQH]
GO
ALTER TABLE [dbo].[QuanHuyen]  WITH CHECK ADD  CONSTRAINT [FK_MaTP] FOREIGN KEY([MaTP])
REFERENCES [dbo].[ThanhPho] ([MaTP])
GO
ALTER TABLE [dbo].[QuanHuyen] CHECK CONSTRAINT [FK_MaTP]
GO
