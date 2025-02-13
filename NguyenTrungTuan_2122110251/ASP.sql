USE [WebASP]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 1/19/2025 12:31:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Avartar] [nvarchar](100) NULL,
	[Slug] [varchar](100) NULL,
	[ShowOnHomePage] [bit] NULL,
	[DisplayOrder] [int] NULL,
	[CreatedOnUtc] [datetime] NULL,
	[UpdatedOnUtc] [datetime] NULL,
	[Deleted] [bit] NULL,
 CONSTRAINT [PK_Brannd] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 1/19/2025 12:31:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Avartar] [nchar](100) NULL,
	[Slug] [varchar](100) NULL,
	[ShowOnHomePage] [bit] NULL,
	[DisplayOrder] [int] NULL,
	[Deleted] [bit] NULL,
	[CreatedOnUtc] [datetime] NULL,
	[UpdatedOnUtc] [datetime] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 1/19/2025 12:31:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[UserId] [int] NULL,
	[Status] [int] NULL,
	[CreatedOnUtc] [datetime] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 1/19/2025 12:31:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 1/19/2025 12:31:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Avartar] [nchar](100) NULL,
	[CategoryId] [int] NULL,
	[ShortDec] [nvarchar](100) NULL,
	[FullDecription] [nvarchar](500) NULL,
	[Price] [float] NULL,
	[PriceDiscount] [float] NULL,
	[TypeId] [int] NULL,
	[Slug] [varchar](50) NULL,
	[BrandId] [int] NULL,
	[Deleted] [bit] NULL,
	[ShowOnHomePage] [bit] NULL,
	[DisplayOrder] [int] NULL,
	[CreatedOnUtc] [datetime] NULL,
	[UpdatedOnUtc] [datetime] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 1/19/2025 12:31:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[IsAdmin] [bit] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([Id], [Name], [Avartar], [Slug], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc], [Deleted]) VALUES (14, N'Iphone', N'iplg_20250118113631.jpg', N'1', NULL, 1, CAST(N'2025-01-18T23:36:31.027' AS DateTime), NULL, NULL)
INSERT [dbo].[Brand] ([Id], [Name], [Avartar], [Slug], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc], [Deleted]) VALUES (15, N'Laptop', N'ltlg_20250118113650.png', N'5', 1, 1, CAST(N'2025-01-18T23:36:50.383' AS DateTime), NULL, NULL)
INSERT [dbo].[Brand] ([Id], [Name], [Avartar], [Slug], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc], [Deleted]) VALUES (17, N'Samsung', N'sslg_20250118114556.png', N'3', 1, 1, CAST(N'2025-01-18T23:45:56.323' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Brand] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Name], [Avartar], [Slug], [ShowOnHomePage], [DisplayOrder], [Deleted], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (1, N'Iphone', N'ip2_20250119121735.jpg                                                                              ', N'IP', 1, 1, 0, NULL, CAST(N'2025-01-19T00:17:35.657' AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [Avartar], [Slug], [ShowOnHomePage], [DisplayOrder], [Deleted], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (20, N'Samsung', N'ss2_20250119121725.jpg                                                                              ', N'1', 1, 1, NULL, CAST(N'2025-01-19T00:12:56.000' AS DateTime), CAST(N'2025-01-19T00:17:25.907' AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [Avartar], [Slug], [ShowOnHomePage], [DisplayOrder], [Deleted], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (25, N'Laptop', N'lt2_20250119122631.jpg                                                                              ', N'1', 1, 1, NULL, CAST(N'2025-01-19T00:24:22.000' AS DateTime), CAST(N'2025-01-19T00:26:31.297' AS DateTime))
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (1, N'DonHang-20250116225017', 4, 1, CAST(N'2025-01-16T22:50:17.663' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (2, N'DonHang-20250117090617', 4, 1, CAST(N'2025-01-17T09:06:17.243' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (3, N'DonHang-20250117090622', 4, 1, CAST(N'2025-01-17T09:06:22.057' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (4, N'DonHang-20250117135637', 4, 1, CAST(N'2025-01-17T13:56:37.110' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (5, N'DonHang-20250117140058', 4, 1, CAST(N'2025-01-17T14:00:58.463' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (6, N'DonHang-20250117141253', 4, 1, CAST(N'2025-01-17T14:12:53.033' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (7, N'DonHang-20250117170823', 4, 1, CAST(N'2025-01-17T17:08:23.053' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (8, N'DonHang-20250117173129', 4, 1, CAST(N'2025-01-17T17:31:29.287' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (9, N'DonHang-20250117174547', 8, 1, CAST(N'2025-01-17T17:45:47.490' AS DateTime))
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (1, 0, 23, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (2, 0, 24, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (3, 0, 23, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (4, 0, 24, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (5, 0, 23, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (6, 0, 24, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (7, 0, 23, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (8, 0, 24, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (9, 0, 24, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (10, 0, 23, 2)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (11, 0, 23, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (12, 0, 23, 1)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Name], [Avartar], [CategoryId], [ShortDec], [FullDecription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandId], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (37, N'Iphone 15', N'ip4_20250118113108.jpg                                                                              ', 1, N'IP', N'Iphone đẹp', 1, 1, 2, N'1', 14, NULL, NULL, NULL, CAST(N'2025-01-18T23:31:08.310' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avartar], [CategoryId], [ShortDec], [FullDecription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandId], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (38, N'Iphone 15', N'ip5_20250118113152.jpg                                                                              ', 1, N'IP', N'Iphone đẹp', 1, 1, 2, N'1', 14, NULL, NULL, NULL, CAST(N'2025-01-18T23:31:52.373' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avartar], [CategoryId], [ShortDec], [FullDecription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandId], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (39, N'Iphone 11', N'ip2_20250118113238.jpg                                                                              ', 1, N'IP', N'Iphone đẹp', 1, 1, 2, N'1', 14, NULL, NULL, NULL, CAST(N'2025-01-18T23:32:38.113' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avartar], [CategoryId], [ShortDec], [FullDecription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandId], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (40, N'Samsung S10', N'ss2_20250118113313.jpg                                                                              ', 2, N'SS', N'Samsung đẹp', 1, 1, 2, N'1', 2, NULL, NULL, NULL, CAST(N'2025-01-18T23:33:13.890' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avartar], [CategoryId], [ShortDec], [FullDecription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandId], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (41, N'Samsung S11', N'ss3_20250118113332.jpg                                                                              ', 2, N'SS', N'Samsung đẹp', 1, 1, 2, N'1', 2, NULL, NULL, NULL, CAST(N'2025-01-18T23:33:32.990' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Avartar], [CategoryId], [ShortDec], [FullDecription], [Price], [PriceDiscount], [TypeId], [Slug], [BrandId], [Deleted], [ShowOnHomePage], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (42, N'Samsung S12', N'ss4_20250118113405.jpg                                                                              ', 2, N'SS', N'Samsung đẹp', 1, 1, 2, N'1', 2, NULL, NULL, NULL, CAST(N'2025-01-18T23:34:05.213' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [Password], [IsAdmin]) VALUES (3, N'Admin', N'nguyen', N'admin@gmail.com', N'e00cf25ad42683b3df678c61f42c6bda', 1)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [Password], [IsAdmin]) VALUES (4, N'nguyen', N'tuan', N'tuan@gmail.com', N'e10adc3949ba59abbe56e057f20f883e', 0)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [Password], [IsAdmin]) VALUES (6, N'nguyen', N'kenzo', N'kenzo@gmail.com', N'e10adc3949ba59abbe56e057f20f883e', 0)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [Password], [IsAdmin]) VALUES (8, N'nguyetn', N'tuan', N'tuan23@gmail.com', N'e10adc3949ba59abbe56e057f20f883e', 0)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
