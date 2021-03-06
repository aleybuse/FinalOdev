USE [AspProje]
GO
/****** Object:  Table [dbo].[PersonelKayıtTab]    Script Date: 18.01.2022 23:30:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonelKayıtTab](
	[PersonelID] [int] NOT NULL,
	[PersonelAd] [nvarchar](50) NULL,
	[PersonelSoyad] [nvarchar](50) NULL,
	[Cinsiyet] [nchar](10) NULL,
	[Sehir] [nvarchar](30) NULL,
	[Telefon] [nvarchar](50) NULL,
	[Mail] [nvarchar](50) NULL,
 CONSTRAINT [PK_PersonelKayıtTab] PRIMARY KEY CLUSTERED 
(
	[PersonelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[PersonelKayıtTab] ([PersonelID], [PersonelAd], [PersonelSoyad], [Cinsiyet], [Sehir], [Telefon], [Mail]) VALUES (1, N'Aleyna Buse', N'Bostanlıoğlu', N'Kadın     ', N'Ankara', N'0506XXXXXXX', N'aleynabusesude@gmail.com')
INSERT [dbo].[PersonelKayıtTab] ([PersonelID], [PersonelAd], [PersonelSoyad], [Cinsiyet], [Sehir], [Telefon], [Mail]) VALUES (2, N'Taha', N'Çam', N'Erkek     ', N'Sivas', N'0553XXXXXXX', N'tahacam@icloud.com')
INSERT [dbo].[PersonelKayıtTab] ([PersonelID], [PersonelAd], [PersonelSoyad], [Cinsiyet], [Sehir], [Telefon], [Mail]) VALUES (3, N'Dilara', N'Somun', N'Kadın     ', N'Eskişehir', N'0531XXXXXXX', N'dilarasomun@gmail.com')
INSERT [dbo].[PersonelKayıtTab] ([PersonelID], [PersonelAd], [PersonelSoyad], [Cinsiyet], [Sehir], [Telefon], [Mail]) VALUES (4, N'Hakan', N'Sezgin', N'Erkek     ', N'İstanbul', N'0530XXXXXXX', N'hakansezgin9@gmail.com')
INSERT [dbo].[PersonelKayıtTab] ([PersonelID], [PersonelAd], [PersonelSoyad], [Cinsiyet], [Sehir], [Telefon], [Mail]) VALUES (5, N'Sıla', N'Türk', N'Kadın     ', N'İzmir', N'0555XXXXXXX', N'silaturk56@gmail.com')
GO
