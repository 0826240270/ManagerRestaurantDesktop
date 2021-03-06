USE [QLNhaHang]
GO
/****** Object:  Table [dbo].[BookService-Table]    Script Date: 8/11/2020 3:34:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BookService-Table](
	[ID_Table] [char](10) NULL,
	[ID_Staff] [char](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dish]    Script Date: 8/11/2020 3:34:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dish](
	[ID_Dish] [char](10) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Number] [int] NULL,
	[Price] [int] NULL,
 CONSTRAINT [PK_Dish] PRIMARY KEY CLUSTERED 
(
	[ID_Dish] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dish-Table]    Script Date: 8/11/2020 3:34:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dish-Table](
	[ID_Table] [char](10) NULL,
	[ID_Dish] [char](10) NULL,
	[NameDish] [nvarchar](50) NULL,
	[Number] [int] NULL,
	[Price] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Exports]    Script Date: 8/11/2020 3:34:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Exports](
	[ID_Ingredients] [char](10) NULL,
	[Number] [int] NULL,
	[Timeout] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Login]    Script Date: 8/11/2020 3:34:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Login](
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NULL,
	[Position] [int] NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Room]    Script Date: 8/11/2020 3:34:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Room](
	[ID_Room] [char](10) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[ID_Room] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 8/11/2020 3:34:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Staff](
	[ID_Staff] [char](10) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Age] [nchar](10) NULL,
	[Phone Number] [nchar](10) NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[ID_Staff] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StoreHouse]    Script Date: 8/11/2020 3:34:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StoreHouse](
	[ID_Ingredients] [char](10) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Number] [int] NULL,
	[Type] [nvarchar](50) NULL,
	[Timein] [datetime] NULL,
 CONSTRAINT [PK_StoreHouse] PRIMARY KEY CLUSTERED 
(
	[ID_Ingredients] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TableRes]    Script Date: 8/11/2020 3:34:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TableRes](
	[ID_Table] [char](10) NOT NULL,
	[Number] [int] NULL,
 CONSTRAINT [PK_TableRes] PRIMARY KEY CLUSTERED 
(
	[ID_Table] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Table-Room]    Script Date: 8/11/2020 3:34:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table-Room](
	[ID_Room] [char](10) NULL,
	[ID_Table] [char](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[BookService-Table] ([ID_Table], [ID_Staff]) VALUES (N'Ban01     ', N'NV03      ')
INSERT [dbo].[BookService-Table] ([ID_Table], [ID_Staff]) VALUES (N'Ban02     ', N'NV01      ')
INSERT [dbo].[BookService-Table] ([ID_Table], [ID_Staff]) VALUES (N'Ban01     ', N'NV04      ')
INSERT [dbo].[BookService-Table] ([ID_Table], [ID_Staff]) VALUES (N'Ban04     ', N'NV06      ')
INSERT [dbo].[BookService-Table] ([ID_Table], [ID_Staff]) VALUES (N'Ban05     ', N'NV02      ')
INSERT [dbo].[Dish] ([ID_Dish], [Name], [Number], [Price]) VALUES (N'Mon01     ', N'Thịt bò bít tế', 5, 700000)
INSERT [dbo].[Dish] ([ID_Dish], [Name], [Number], [Price]) VALUES (N'Mon02     ', N'Cá hồi nướng tiêu chanh', 4, 225000)
INSERT [dbo].[Dish] ([ID_Dish], [Name], [Number], [Price]) VALUES (N'Mon03     ', N'Gà sốt vang đỏ', 5, 750000)
INSERT [dbo].[Dish] ([ID_Dish], [Name], [Number], [Price]) VALUES (N'Mon04     ', N'Cá basa kho tiêu', 3, 200000)
INSERT [dbo].[Dish] ([ID_Dish], [Name], [Number], [Price]) VALUES (N'Mon05     ', N'Cánh gà nướng sốt cay', 7, 140000)
INSERT [dbo].[Dish] ([ID_Dish], [Name], [Number], [Price]) VALUES (N'Mon06     ', N'Vú dê nướng', 6, 150000)
INSERT [dbo].[Dish] ([ID_Dish], [Name], [Number], [Price]) VALUES (N'Mon07     ', N'Vịt hầm bia', 3, 900000)
INSERT [dbo].[Dish] ([ID_Dish], [Name], [Number], [Price]) VALUES (N'Mon08     ', N'Súp bào ngư vi cá', 4, 1200000)
INSERT [dbo].[Dish] ([ID_Dish], [Name], [Number], [Price]) VALUES (N'Mon09     ', N'Tôm sú sốt trái thơm', 2, 250000)
INSERT [dbo].[Dish] ([ID_Dish], [Name], [Number], [Price]) VALUES (N'Mon10     ', N'Gỏi hải sản nấm kim châm', 4, 400000)
INSERT [dbo].[Dish] ([ID_Dish], [Name], [Number], [Price]) VALUES (N'Mon11     ', N'Bò nấu oliu - bánh mì', 3, 450000)
INSERT [dbo].[Dish] ([ID_Dish], [Name], [Number], [Price]) VALUES (N'Mon12     ', N'Chè hạt sen bạch quả táo đỏ', 4, 200000)
INSERT [dbo].[Dish] ([ID_Dish], [Name], [Number], [Price]) VALUES (N'Mon13     ', N'Cơm chiên hải sản', 2, 240000)
INSERT [dbo].[Dish] ([ID_Dish], [Name], [Number], [Price]) VALUES (N'Mon14     ', N'Tôm càng hoàng cung', 3, 2500000)
INSERT [dbo].[Dish] ([ID_Dish], [Name], [Number], [Price]) VALUES (N'Mon15     ', N'Hàu đút lò phô mai', 8, 320000)
INSERT [dbo].[Exports] ([ID_Ingredients], [Number], [Timeout]) VALUES (N'Ruou      ', 2, CAST(N'2020-08-14 21:10:00.000' AS DateTime))
INSERT [dbo].[Exports] ([ID_Ingredients], [Number], [Timeout]) VALUES (N'Thuoc     ', 3, CAST(N'2020-08-08 19:15:00.000' AS DateTime))
INSERT [dbo].[Exports] ([ID_Ingredients], [Number], [Timeout]) VALUES (N'TC        ', 4, CAST(N'2020-08-12 20:20:00.000' AS DateTime))
INSERT [dbo].[Exports] ([ID_Ingredients], [Number], [Timeout]) VALUES (N'GV        ', 3, CAST(N'2020-08-13 20:55:00.000' AS DateTime))
INSERT [dbo].[Login] ([UserName], [Password], [Position]) VALUES (N'admin', N'123', 1)
INSERT [dbo].[Login] ([UserName], [Password], [Position]) VALUES (N'staff', N'123', 0)
INSERT [dbo].[Room] ([ID_Room], [Name]) VALUES (N'01        ', N'Normal')
INSERT [dbo].[Room] ([ID_Room], [Name]) VALUES (N'02        ', N'Vip')
INSERT [dbo].[Staff] ([ID_Staff], [Name], [Age], [Phone Number]) VALUES (N'NV01      ', N'Nguyen Thi Muoi', N'22        ', N'038289272 ')
INSERT [dbo].[Staff] ([ID_Staff], [Name], [Age], [Phone Number]) VALUES (N'NV02      ', N'Tran Minh Khang', N'19        ', N'927220282 ')
INSERT [dbo].[Staff] ([ID_Staff], [Name], [Age], [Phone Number]) VALUES (N'NV03      ', N'Thoi Minh Trieu', N'24        ', N'902827292 ')
INSERT [dbo].[Staff] ([ID_Staff], [Name], [Age], [Phone Number]) VALUES (N'NV04      ', N'Le Van Cuong', N'20        ', N'029282929 ')
INSERT [dbo].[Staff] ([ID_Staff], [Name], [Age], [Phone Number]) VALUES (N'NV05      ', N'Ngo Thi Tuyet', N'23        ', N'029282822 ')
INSERT [dbo].[Staff] ([ID_Staff], [Name], [Age], [Phone Number]) VALUES (N'NV06      ', N'Nguyen Huu Tuan', N'20        ', N'902928282 ')
INSERT [dbo].[StoreHouse] ([ID_Ingredients], [Name], [Number], [Type], [Timein]) VALUES (N'DA        ', N'Dao Thái Lan', 8, N'Dụng Cụ', CAST(N'2020-08-10 19:30:00.000' AS DateTime))
INSERT [dbo].[StoreHouse] ([ID_Ingredients], [Name], [Number], [Type], [Timein]) VALUES (N'GV        ', N'Muối tiêu xanh', 6, N'Gia Vị', CAST(N'2020-08-13 20:45:00.000' AS DateTime))
INSERT [dbo].[StoreHouse] ([ID_Ingredients], [Name], [Number], [Type], [Timein]) VALUES (N'Ruou      ', N'Rượu Nho', 10, N'Rượu', CAST(N'2020-08-14 21:00:00.000' AS DateTime))
INSERT [dbo].[StoreHouse] ([ID_Ingredients], [Name], [Number], [Type], [Timein]) VALUES (N'TC        ', N'Thịt', 7, N'Thịt Cá', CAST(N'2020-08-12 20:00:00.000' AS DateTime))
INSERT [dbo].[StoreHouse] ([ID_Ingredients], [Name], [Number], [Type], [Timein]) VALUES (N'Thuoc     ', N'Thuốc Jet', 15, N'Thuốc Lá', CAST(N'2020-08-08 19:00:00.000' AS DateTime))
INSERT [dbo].[TableRes] ([ID_Table], [Number]) VALUES (N'Ban01     ', 1)
INSERT [dbo].[TableRes] ([ID_Table], [Number]) VALUES (N'Ban02     ', 1)
INSERT [dbo].[TableRes] ([ID_Table], [Number]) VALUES (N'Ban03     ', 1)
INSERT [dbo].[TableRes] ([ID_Table], [Number]) VALUES (N'Ban04     ', 1)
INSERT [dbo].[TableRes] ([ID_Table], [Number]) VALUES (N'Ban05     ', 1)
INSERT [dbo].[TableRes] ([ID_Table], [Number]) VALUES (N'Ban06     ', 1)
INSERT [dbo].[TableRes] ([ID_Table], [Number]) VALUES (N'Ban07     ', 1)
INSERT [dbo].[Table-Room] ([ID_Room], [ID_Table]) VALUES (N'01        ', N'Ban01     ')
INSERT [dbo].[Table-Room] ([ID_Room], [ID_Table]) VALUES (N'01        ', N'Ban03     ')
INSERT [dbo].[Table-Room] ([ID_Room], [ID_Table]) VALUES (N'01        ', N'Ban04     ')
INSERT [dbo].[Table-Room] ([ID_Room], [ID_Table]) VALUES (N'01        ', N'Ban02     ')
INSERT [dbo].[Table-Room] ([ID_Room], [ID_Table]) VALUES (N'01        ', N'Ban05     ')
INSERT [dbo].[Table-Room] ([ID_Room], [ID_Table]) VALUES (N'02        ', N'Ban06     ')
INSERT [dbo].[Table-Room] ([ID_Room], [ID_Table]) VALUES (N'02        ', N'Ban07     ')
ALTER TABLE [dbo].[BookService-Table]  WITH CHECK ADD  CONSTRAINT [FK_BookService-Table_Staff] FOREIGN KEY([ID_Staff])
REFERENCES [dbo].[Staff] ([ID_Staff])
GO
ALTER TABLE [dbo].[BookService-Table] CHECK CONSTRAINT [FK_BookService-Table_Staff]
GO
ALTER TABLE [dbo].[BookService-Table]  WITH CHECK ADD  CONSTRAINT [FK_BookService-Table_TableRes] FOREIGN KEY([ID_Table])
REFERENCES [dbo].[TableRes] ([ID_Table])
GO
ALTER TABLE [dbo].[BookService-Table] CHECK CONSTRAINT [FK_BookService-Table_TableRes]
GO
ALTER TABLE [dbo].[Dish-Table]  WITH CHECK ADD  CONSTRAINT [FK_Dish-Table_Dish] FOREIGN KEY([ID_Table])
REFERENCES [dbo].[Dish] ([ID_Dish])
GO
ALTER TABLE [dbo].[Dish-Table] CHECK CONSTRAINT [FK_Dish-Table_Dish]
GO
ALTER TABLE [dbo].[Dish-Table]  WITH CHECK ADD  CONSTRAINT [FK_Dish-Table_TableRes] FOREIGN KEY([ID_Table])
REFERENCES [dbo].[TableRes] ([ID_Table])
GO
ALTER TABLE [dbo].[Dish-Table] CHECK CONSTRAINT [FK_Dish-Table_TableRes]
GO
ALTER TABLE [dbo].[Exports]  WITH CHECK ADD  CONSTRAINT [FK_Exports_StoreHouse] FOREIGN KEY([ID_Ingredients])
REFERENCES [dbo].[StoreHouse] ([ID_Ingredients])
GO
ALTER TABLE [dbo].[Exports] CHECK CONSTRAINT [FK_Exports_StoreHouse]
GO
ALTER TABLE [dbo].[Table-Room]  WITH CHECK ADD  CONSTRAINT [FK_Table-Room_Room] FOREIGN KEY([ID_Room])
REFERENCES [dbo].[Room] ([ID_Room])
GO
ALTER TABLE [dbo].[Table-Room] CHECK CONSTRAINT [FK_Table-Room_Room]
GO
ALTER TABLE [dbo].[Table-Room]  WITH CHECK ADD  CONSTRAINT [FK_Table-Room_TableRes] FOREIGN KEY([ID_Table])
REFERENCES [dbo].[TableRes] ([ID_Table])
GO
ALTER TABLE [dbo].[Table-Room] CHECK CONSTRAINT [FK_Table-Room_TableRes]
GO
