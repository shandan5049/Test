USE [SQLtraining]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[Cno] [nvarchar](10) NOT NULL,
	[Cname] [nvarchar](50) NULL,
	[Tno] [nvarchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Score]    Script Date: 25/10/2023 9:34:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Score](
	[Sno] [nvarchar](50) NOT NULL,
	[Cno] [nvarchar](50) NOT NULL,
	[Degree] [decimal](4, 1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 25/10/2023 9:34:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Sno] [nvarchar](10) NOT NULL,
	[Sname] [nvarchar](20) NULL,
	[Ssex] [nvarchar](5) NULL,
	[Sbirthday] [datetime] NULL,
	[Class] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 25/10/2023 9:34:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[Tno] [nvarchar](50) NOT NULL,
	[Tname] [nvarchar](50) NOT NULL,
	[Tsex] [nvarchar](50) NOT NULL,
	[Tbirthday] [datetime] NULL,
	[Prof] [nvarchar](10) NULL,
	[Depart] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Course] ([Cno], [Cname], [Tno]) VALUES (N'3-105', N'计算机导论', N'825')
INSERT [dbo].[Course] ([Cno], [Cname], [Tno]) VALUES (N'3-245', N'操作系统', N'804')
INSERT [dbo].[Course] ([Cno], [Cname], [Tno]) VALUES (N'6-166', N'数字电路', N'856')
INSERT [dbo].[Course] ([Cno], [Cname], [Tno]) VALUES (N'9-888', N'高等数学', N'831')
GO
INSERT [dbo].[Score] ([Sno], [Cno], [Degree]) VALUES (N'103', N'3-245', CAST(86.0 AS Decimal(4, 1)))
INSERT [dbo].[Score] ([Sno], [Cno], [Degree]) VALUES (N'105', N'3-245', CAST(75.0 AS Decimal(4, 1)))
INSERT [dbo].[Score] ([Sno], [Cno], [Degree]) VALUES (N'109', N'3-245', CAST(68.0 AS Decimal(4, 1)))
INSERT [dbo].[Score] ([Sno], [Cno], [Degree]) VALUES (N'103', N'3-105', CAST(92.0 AS Decimal(4, 1)))
INSERT [dbo].[Score] ([Sno], [Cno], [Degree]) VALUES (N'105', N'3-105', CAST(88.0 AS Decimal(4, 1)))
INSERT [dbo].[Score] ([Sno], [Cno], [Degree]) VALUES (N'109', N'3-105', CAST(76.0 AS Decimal(4, 1)))
INSERT [dbo].[Score] ([Sno], [Cno], [Degree]) VALUES (N'101', N'3-105', CAST(64.0 AS Decimal(4, 1)))
INSERT [dbo].[Score] ([Sno], [Cno], [Degree]) VALUES (N'107', N'3-105', CAST(91.0 AS Decimal(4, 1)))
INSERT [dbo].[Score] ([Sno], [Cno], [Degree]) VALUES (N'108', N'3-105', CAST(78.0 AS Decimal(4, 1)))
INSERT [dbo].[Score] ([Sno], [Cno], [Degree]) VALUES (N'101', N'6-166', CAST(85.0 AS Decimal(4, 1)))
INSERT [dbo].[Score] ([Sno], [Cno], [Degree]) VALUES (N'107', N'6-166', CAST(79.0 AS Decimal(4, 1)))
INSERT [dbo].[Score] ([Sno], [Cno], [Degree]) VALUES (N'108', N'6-166', CAST(81.0 AS Decimal(4, 1)))
GO
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sbirthday], [Class]) VALUES (N'108', N'曾华', N'男', CAST(N'1977-09-01T00:00:00.000' AS DateTime), N'95033')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sbirthday], [Class]) VALUES (N'105', N'匡明', N'男', CAST(N'1975-10-02T00:00:00.000' AS DateTime), N'95031')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sbirthday], [Class]) VALUES (N'107', N'王丽', N'女', CAST(N'1976-01-23T00:00:00.000' AS DateTime), N'95033')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sbirthday], [Class]) VALUES (N'101', N'李军', N'男', CAST(N'1976-02-20T00:00:00.000' AS DateTime), N'95033')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sbirthday], [Class]) VALUES (N'109', N'王芳', N'女', CAST(N'1975-02-10T00:00:00.000' AS DateTime), N'95031')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex], [Sbirthday], [Class]) VALUES (N'103', N'陆君', N'男', CAST(N'1974-06-03T00:00:00.000' AS DateTime), N'95031')
GO
INSERT [dbo].[Teacher] ([Tno], [Tname], [Tsex], [Tbirthday], [Prof], [Depart]) VALUES (N'804', N'李承', N'男', CAST(N'1985-12-02T00:00:00.000' AS DateTime), N'副教授', N'计算机系')
INSERT [dbo].[Teacher] ([Tno], [Tname], [Tsex], [Tbirthday], [Prof], [Depart]) VALUES (N'856', N'张旭', N'男', CAST(N'1969-03-12T00:00:00.000' AS DateTime), N'讲师', N'电子工程系')
INSERT [dbo].[Teacher] ([Tno], [Tname], [Tsex], [Tbirthday], [Prof], [Depart]) VALUES (N'825', N'王萍', N'女', CAST(N'1972-05-05T00:00:00.000' AS DateTime), N'助教', N'计算机系')
INSERT [dbo].[Teacher] ([Tno], [Tname], [Tsex], [Tbirthday], [Prof], [Depart]) VALUES (N'831', N'刘冰', N'女', CAST(N'1977-08-14T00:00:00.000' AS DateTime), N'助教', N'电子工程系')
GO




