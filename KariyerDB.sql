USE [KariyerDBTest]
GO
/****** Object:  Table [dbo].[Basvuranlar]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Basvuranlar](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IlanID] [int] NULL,
	[OzgecmisID] [int] NULL,
 CONSTRAINT [PK_Basvuranlar] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bildirim]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bildirim](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Bildirim] [nvarchar](80) NULL,
 CONSTRAINT [PK_Bildirim] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BolumAdi]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BolumAdi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BolumAdi] [nvarchar](50) NULL,
	[FakulteID] [int] NULL,
 CONSTRAINT [PK_BolumAdi] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CalismaSekli]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CalismaSekli](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CalismaSekliAdi] [nvarchar](50) NULL,
 CONSTRAINT [PK_CalismaSekli] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cinsiyet]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cinsiyet](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Cinsiyeti] [nvarchar](50) NULL,
 CONSTRAINT [PK_Cinsiyet] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deneyim]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deneyim](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DeneyimSuresi] [nvarchar](50) NULL,
 CONSTRAINT [PK_Deneyim] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Egitimler]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Egitimler](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Aciklama] [nvarchar](300) NULL,
	[BaslangicTarih] [date] NULL,
	[BitisTarih] [date] NULL,
	[OzgecmisID] [int] NULL,
	[UniversiteID] [int] NULL,
	[FakulteID] [int] NULL,
	[BolumID] [int] NULL,
 CONSTRAINT [PK_Egitimler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EkBilgiler]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EkBilgiler](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Bilgiler] [nvarchar](500) NULL,
	[OzgecmisID] [int] NULL,
 CONSTRAINT [PK_EkBilgiler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FakulteAdi]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FakulteAdi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FakulteAdi] [nvarchar](50) NULL,
	[UniversiteID] [int] NULL,
 CONSTRAINT [PK_FakulteAdi] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FavoriIlanlar]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FavoriIlanlar](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UyelikID] [int] NULL,
	[IlanID] [int] NULL,
 CONSTRAINT [PK_FavoriIlanlar] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hakkimda]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hakkimda](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Hakkimda] [nvarchar](500) NULL,
	[Meslek] [nvarchar](50) NULL,
	[CalismaSekli] [nvarchar](50) NULL,
	[Konum] [nvarchar](50) NULL,
	[DeneyimYili] [nvarchar](50) NULL,
	[MezuniyetDerece] [nvarchar](50) NULL,
	[OzgecmisID] [int] NULL,
 CONSTRAINT [PK_Hakkimda] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hareket]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hareket](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UyelikID] [int] NULL,
	[BildirimID] [int] NULL,
	[HareketTarihi] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hobiler]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hobiler](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Hobi] [nvarchar](300) NULL,
	[OzgecmisID] [int] NULL,
 CONSTRAINT [PK_Hobiler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ilan]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ilan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PozisyonAdi] [nvarchar](50) NULL,
	[IsTanimi] [nvarchar](500) NULL,
	[Yetkinlikler] [nvarchar](500) NULL,
	[Tercihen] [nvarchar](500) NULL,
	[SirketImkanlari] [nvarchar](500) NULL,
	[PostaKodu] [nvarchar](10) NULL,
	[IlanTarihi] [date] NULL,
	[SonBasvuruTarihi] [date] NULL,
 CONSTRAINT [PK_IsIlanlari] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IlanDurumu]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IlanDurumu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Durum] [nvarchar](20) NULL,
 CONSTRAINT [PK_IlanDurumu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IlanKayit]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IlanKayit](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UyelikID] [int] NULL,
	[IlanID] [int] NULL,
 CONSTRAINT [PK_IlanKayit] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IsDeneyimleri]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IsDeneyimleri](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NULL,
	[Aciklama] [nvarchar](500) NULL,
	[SirketAdi] [nvarchar](50) NULL,
	[BaslangicTarihi] [date] NULL,
	[BitisTarihi] [date] NULL,
	[OzgecmisID] [int] NULL,
 CONSTRAINT [PK_IsDeneyimleri] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IsIlaniCalismaSekli]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IsIlaniCalismaSekli](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CalismaSekliID] [int] NULL,
	[IlanID] [int] NULL,
 CONSTRAINT [PK_IsIlaniCalismaSekli] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IsIlaniCinsiyet]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IsIlaniCinsiyet](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CinsiyetID] [int] NULL,
	[IlanID] [int] NULL,
 CONSTRAINT [PK_IsIlaniCinsiyet] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IsIlaniDurum]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IsIlaniDurum](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IlanID] [int] NULL,
	[DurumID] [int] NULL,
 CONSTRAINT [PK_IsIlaniDurum] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IsIlaniMezuniyet]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IsIlaniMezuniyet](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MezuniyetID] [int] NULL,
	[IlanID] [int] NULL,
 CONSTRAINT [PK_IsIlaniMezuniyet] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IsIlaniSehirler]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IsIlaniSehirler](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SehirID] [int] NULL,
	[IlanID] [int] NULL,
 CONSTRAINT [PK_IsIlaniSehirler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IsIlaniSektor]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IsIlaniSektor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SektorID] [int] NULL,
	[IlanID] [int] NULL,
 CONSTRAINT [PK_IsIlaniSektor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IsIlaniUlke]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IsIlaniUlke](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UlkelerID] [int] NULL,
	[IlanID] [int] NULL,
 CONSTRAINT [PK_IsIlaniUlke] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IsIlaniYabanciDiller]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IsIlaniYabanciDiller](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IlanID] [int] NULL,
	[YabanciDillerID] [int] NULL,
	[Okuma] [nvarchar](20) NULL,
	[Yazma] [nvarchar](20) NULL,
	[Konuşma] [nvarchar](20) NULL,
 CONSTRAINT [PK_IsIlaniYabanciDiller] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IsIlanlariDeneyimSuresi]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IsIlanlariDeneyimSuresi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DeneyimSureID] [int] NULL,
	[IlanID] [int] NULL,
 CONSTRAINT [PK_IsIlanlariDeneyimSuresi] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mezuniyet]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mezuniyet](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MezuniyetDurum] [nvarchar](50) NULL,
 CONSTRAINT [PK_Mezuniyet] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mulakatlar]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mulakatlar](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MulakatDurumu] [nvarchar](50) NULL,
 CONSTRAINT [PK_Mulakatlar] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MulakatListesi]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MulakatListesi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OzgecmisID] [int] NULL,
	[MulakatID] [int] NULL,
	[SirketID] [int] NULL,
	[IlanID] [int] NULL,
 CONSTRAINT [PK_MulakatListesi] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ozgecmis]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ozgecmis](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UyelikID] [int] NULL,
	[TelNo] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Uyruk] [nvarchar](50) NULL,
	[Cinsiyet] [nvarchar](50) NULL,
	[Adres] [nvarchar](50) NULL,
	[Durum] [bit] NULL,
 CONSTRAINT [PK_Ozgecmis] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OzgecmisHavuzu]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OzgecmisHavuzu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OzgecmisID] [int] NULL,
	[SirketID] [int] NULL,
 CONSTRAINT [PK_OzgecmisHavuzu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OzgecmisSehirler]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OzgecmisSehirler](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SehirID] [int] NULL,
	[OzgecmisID] [int] NULL,
 CONSTRAINT [PK_OzgecmisSehirler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OzgecmisSosyalMedya]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OzgecmisSosyalMedya](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SosyalMedyaID] [int] NULL,
	[OzgecmisID] [int] NULL,
	[HesapAdi] [nvarchar](50) NULL,
 CONSTRAINT [PK_OzgecmisSosyalMedya] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OzgecmisYabanciDil]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OzgecmisYabanciDil](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OzgecmisID] [int] NULL,
	[YabanciDilID] [int] NULL,
	[Okuma] [nvarchar](20) NULL,
	[Yazma] [nvarchar](20) NULL,
	[Konuşma] [nvarchar](20) NULL,
 CONSTRAINT [PK_OzgecmisYabanciDil] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OzgecmisYazilimDilleri]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OzgecmisYazilimDilleri](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DilID] [int] NULL,
	[OzgecmisID] [int] NULL,
	[BilgiOrani] [tinyint] NULL,
 CONSTRAINT [PK_OzgecmisYazilimDilleri] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Referanslar]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Referanslar](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SirketAdi] [nvarchar](50) NULL,
	[RefAdi] [nvarchar](50) NULL,
	[TelNo] [nvarchar](15) NULL,
	[OzgecmisID] [int] NULL,
 CONSTRAINT [PK_Referanslar] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sehirler]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sehirler](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SehirAdi] [nvarchar](50) NULL,
 CONSTRAINT [PK_Sehirler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sektorler]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sektorler](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NULL,
 CONSTRAINT [PK_Sektorler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sertifikalar]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sertifikalar](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SertifikaAdi] [nvarchar](50) NULL,
	[KurumAdi] [nvarchar](50) NULL,
	[Tarih] [date] NULL,
	[OzgecmisID] [int] NULL,
	[Aciklama] [nvarchar](300) NULL,
 CONSTRAINT [PK_Sertifikalar] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sinavlar]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sinavlar](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NULL,
	[Puan] [tinyint] NULL,
	[Tarih] [date] NULL,
	[OzgecmisID] [int] NULL,
 CONSTRAINT [PK_Sinavlar] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sirket]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sirket](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SirketAdi] [nvarchar](50) NULL,
	[TelNo] [nvarchar](50) NULL,
	[Adres] [nvarchar](50) NULL,
	[Hakkimizda] [nvarchar](500) NULL,
	[TaniticiLink] [nvarchar](50) NULL,
	[UyelikID] [int] NULL,
 CONSTRAINT [PK_SirketBilgileri] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SirketIlan]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SirketIlan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SirketID] [int] NULL,
	[IlanID] [int] NULL,
 CONSTRAINT [PK_SirketIlan] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SirketSehir]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SirketSehir](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SirketID] [int] NULL,
	[SehirID] [int] NULL,
 CONSTRAINT [PK_SirketSehir] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SirketSektor]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SirketSektor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SektorID] [int] NULL,
	[SirketID] [int] NULL,
 CONSTRAINT [PK_SirketSektor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SirketSosyalMedya]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SirketSosyalMedya](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SosyalMedyaID] [int] NULL,
	[SirketID] [int] NULL,
	[HesapAdi] [nvarchar](50) NULL,
 CONSTRAINT [PK_SirketSosyalMedya] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SirketTakip]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SirketTakip](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UyelikID] [int] NULL,
	[SirketID] [int] NULL,
 CONSTRAINT [PK_SirketTakip] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SosyalMedya]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SosyalMedya](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NULL,
 CONSTRAINT [PK_SosyalMedya] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ulkeler]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ulkeler](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NULL,
 CONSTRAINT [PK_Ulkeler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Universite]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Universite](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NULL,
 CONSTRAINT [PK_Universite] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Uyelik]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Uyelik](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Isim] [nvarchar](50) NULL,
	[Soyisim] [nvarchar](50) NULL,
	[DogumTarihi] [date] NULL,
	[KullaniciAdi] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Sifre] [nvarchar](50) NULL,
	[KullaniciTipi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_KullaniciUyelik] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[YabanciDiller]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YabanciDiller](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NULL,
 CONSTRAINT [PK_YabanciDiller] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[YazilimDilleri]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YazilimDilleri](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NULL,
 CONSTRAINT [PK_YazilimDilleri] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Basvuranlar] ON 

INSERT [dbo].[Basvuranlar] ([ID], [IlanID], [OzgecmisID]) VALUES (1, 1, 1)
INSERT [dbo].[Basvuranlar] ([ID], [IlanID], [OzgecmisID]) VALUES (2, 1, 2)
INSERT [dbo].[Basvuranlar] ([ID], [IlanID], [OzgecmisID]) VALUES (3, 2, 2)
INSERT [dbo].[Basvuranlar] ([ID], [IlanID], [OzgecmisID]) VALUES (4, 3, 3)
INSERT [dbo].[Basvuranlar] ([ID], [IlanID], [OzgecmisID]) VALUES (5, 5, 4)
INSERT [dbo].[Basvuranlar] ([ID], [IlanID], [OzgecmisID]) VALUES (6, 4, 5)
INSERT [dbo].[Basvuranlar] ([ID], [IlanID], [OzgecmisID]) VALUES (7, 5, 6)
INSERT [dbo].[Basvuranlar] ([ID], [IlanID], [OzgecmisID]) VALUES (8, 8, 7)
INSERT [dbo].[Basvuranlar] ([ID], [IlanID], [OzgecmisID]) VALUES (9, 6, 8)
INSERT [dbo].[Basvuranlar] ([ID], [IlanID], [OzgecmisID]) VALUES (10, 7, 9)
INSERT [dbo].[Basvuranlar] ([ID], [IlanID], [OzgecmisID]) VALUES (11, 9, 10)
INSERT [dbo].[Basvuranlar] ([ID], [IlanID], [OzgecmisID]) VALUES (12, 9, 11)
INSERT [dbo].[Basvuranlar] ([ID], [IlanID], [OzgecmisID]) VALUES (13, 8, 12)
INSERT [dbo].[Basvuranlar] ([ID], [IlanID], [OzgecmisID]) VALUES (14, 10, 13)
INSERT [dbo].[Basvuranlar] ([ID], [IlanID], [OzgecmisID]) VALUES (15, 11, 14)
INSERT [dbo].[Basvuranlar] ([ID], [IlanID], [OzgecmisID]) VALUES (16, 12, 15)
INSERT [dbo].[Basvuranlar] ([ID], [IlanID], [OzgecmisID]) VALUES (17, 13, 16)
INSERT [dbo].[Basvuranlar] ([ID], [IlanID], [OzgecmisID]) VALUES (18, 14, 17)
INSERT [dbo].[Basvuranlar] ([ID], [IlanID], [OzgecmisID]) VALUES (19, 16, 18)
INSERT [dbo].[Basvuranlar] ([ID], [IlanID], [OzgecmisID]) VALUES (20, 16, 19)
INSERT [dbo].[Basvuranlar] ([ID], [IlanID], [OzgecmisID]) VALUES (21, 15, 20)
INSERT [dbo].[Basvuranlar] ([ID], [IlanID], [OzgecmisID]) VALUES (22, 17, 21)
INSERT [dbo].[Basvuranlar] ([ID], [IlanID], [OzgecmisID]) VALUES (23, 18, 22)
INSERT [dbo].[Basvuranlar] ([ID], [IlanID], [OzgecmisID]) VALUES (24, 19, 10)
INSERT [dbo].[Basvuranlar] ([ID], [IlanID], [OzgecmisID]) VALUES (25, 5, 15)
INSERT [dbo].[Basvuranlar] ([ID], [IlanID], [OzgecmisID]) VALUES (26, 20, 8)
INSERT [dbo].[Basvuranlar] ([ID], [IlanID], [OzgecmisID]) VALUES (27, 20, 17)
SET IDENTITY_INSERT [dbo].[Basvuranlar] OFF
GO
SET IDENTITY_INSERT [dbo].[Bildirim] ON 

INSERT [dbo].[Bildirim] ([ID], [Bildirim]) VALUES (1, N'Şifre değiştirildi.')
INSERT [dbo].[Bildirim] ([ID], [Bildirim]) VALUES (2, N'Özgeçmiş Güncellendi.')
INSERT [dbo].[Bildirim] ([ID], [Bildirim]) VALUES (3, N'Bir şirket profilinizi görüntüledi.')
INSERT [dbo].[Bildirim] ([ID], [Bildirim]) VALUES (4, N'xxx şirketine başvurunuz onaylandı.')
INSERT [dbo].[Bildirim] ([ID], [Bildirim]) VALUES (5, N'x Aday Profilinizi Görüntüledi.')
INSERT [dbo].[Bildirim] ([ID], [Bildirim]) VALUES (6, N'
x Aday İş İlanınıza Başvurdu.')
SET IDENTITY_INSERT [dbo].[Bildirim] OFF
GO
SET IDENTITY_INSERT [dbo].[BolumAdi] ON 

INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (1, N'YBS', 1)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (2, N'Grafik Tasarım', 4)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (3, N'Yazılım Mühendisliği', 2)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (4, N'Bilgisayar Mühendislği', 2)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (5, N'YBS', 5)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (6, N'Grafik Tasarım', 8)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (7, N'Yazılım Mühendisliği', 6)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (8, N'Bilgisayar Mühendislği', 6)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (9, N'YBS', 9)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (10, N'Grafik Tasarım', 12)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (11, N'Yazılım Mühendisliği', 10)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (12, N'Bilgisayar Mühendislği', 10)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (13, N'YBS', 13)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (14, N'Grafik Tasarım', 16)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (15, N'Yazılım Mühendisliği', 14)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (16, N'Bilgisayar Mühendislği', 14)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (17, N'YBS', 19)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (18, N'Grafik Tasarım', 20)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (19, N'Yazılım Mühendisliği', 18)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (20, N'Bilgisayar Mühendislği', 18)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (21, N'YBS', 23)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (23, N'Grafik Tasarım', 24)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (24, N'Yazılım Mühendisliği', 22)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (25, N'Bilgisayar Mühendislği', 22)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (26, N'YBS', 25)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (27, N'Grafik Tasarım', 28)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (28, N'Yazılım Mühendisliği', 26)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (29, N'Bilgisayar Mühendislği', 26)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (30, N'YBS', 29)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (31, N'Grafik Tasarım', 32)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (32, N'Yazılım Mühendisliği', 31)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (33, N'Bilgisayar Mühendislği', 30)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (34, N'YBS', 35)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (35, N'Grafik Tasarım', 36)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (36, N'Yazılım Mühendisliği', 34)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (37, N'Bilgisayar Mühendislği', 34)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (38, N'YBS', 37)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (39, N'YBS', 41)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (40, N'YBS', 45)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (41, N'YBS', 49)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (42, N'YBS', 53)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (43, N'Grafik Tasarım', 40)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (44, N'Grafik Tasarım', 44)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (45, N'Grafik Tasarım', 48)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (46, N'Grafik Tasarım', 52)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (47, N'Grafik Tasarım', 56)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (48, N'Yazılım Mühendisliği', 38)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (49, N'Yazılım Mühendisliği', 42)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (50, N'Yazılım Mühendisliği', 46)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (51, N'Yazılım Mühendisliği', 50)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (52, N'Yazılım Mühendisliği', 54)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (53, N'Bilgisayar Mühendislği', 38)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (54, N'Bilgisayar Mühendislği', 42)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (55, N'Bilgisayar Mühendislği', 46)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (56, N'Bilgisayar Mühendislği', 50)
INSERT [dbo].[BolumAdi] ([ID], [BolumAdi], [FakulteID]) VALUES (57, N'Bilgisayar Mühendislği', 54)
SET IDENTITY_INSERT [dbo].[BolumAdi] OFF
GO
SET IDENTITY_INSERT [dbo].[CalismaSekli] ON 

INSERT [dbo].[CalismaSekli] ([ID], [CalismaSekliAdi]) VALUES (1, N'Full Time')
INSERT [dbo].[CalismaSekli] ([ID], [CalismaSekliAdi]) VALUES (2, N'Part Time')
INSERT [dbo].[CalismaSekli] ([ID], [CalismaSekliAdi]) VALUES (3, N'Uzaktan')
INSERT [dbo].[CalismaSekli] ([ID], [CalismaSekliAdi]) VALUES (4, N'Hibrit')
INSERT [dbo].[CalismaSekli] ([ID], [CalismaSekliAdi]) VALUES (5, N'Yerinde')
SET IDENTITY_INSERT [dbo].[CalismaSekli] OFF
GO
SET IDENTITY_INSERT [dbo].[Cinsiyet] ON 

INSERT [dbo].[Cinsiyet] ([ID], [Cinsiyeti]) VALUES (1, N'Kadın')
INSERT [dbo].[Cinsiyet] ([ID], [Cinsiyeti]) VALUES (2, N'Erkek')
SET IDENTITY_INSERT [dbo].[Cinsiyet] OFF
GO
SET IDENTITY_INSERT [dbo].[Deneyim] ON 

INSERT [dbo].[Deneyim] ([ID], [DeneyimSuresi]) VALUES (1, N'Deneyimli')
INSERT [dbo].[Deneyim] ([ID], [DeneyimSuresi]) VALUES (2, N'Deneyimsiz')
INSERT [dbo].[Deneyim] ([ID], [DeneyimSuresi]) VALUES (3, N'+1 Yıl Deneyimli')
INSERT [dbo].[Deneyim] ([ID], [DeneyimSuresi]) VALUES (4, N'+2 Yıl Deneyimli')
INSERT [dbo].[Deneyim] ([ID], [DeneyimSuresi]) VALUES (5, N'+5 Yıl Deneyimli')
SET IDENTITY_INSERT [dbo].[Deneyim] OFF
GO
SET IDENTITY_INSERT [dbo].[Egitimler] ON 

INSERT [dbo].[Egitimler] ([ID], [Aciklama], [BaslangicTarih], [BitisTarih], [OzgecmisID], [UniversiteID], [FakulteID], [BolumID]) VALUES (1, N'4 yıllık Lisans eğitimim boyunca her sene bölüm birincisi derecesine sahip oldum.', CAST(N'2023-01-01' AS Date), CAST(N'2024-05-01' AS Date), 1, 1, 1, 1)
INSERT [dbo].[Egitimler] ([ID], [Aciklama], [BaslangicTarih], [BitisTarih], [OzgecmisID], [UniversiteID], [FakulteID], [BolumID]) VALUES (2, N'4 yıllık grafik tasarım bitirdim', CAST(N'2020-04-02' AS Date), CAST(N'2024-08-02' AS Date), 1, 3, 4, 2)
INSERT [dbo].[Egitimler] ([ID], [Aciklama], [BaslangicTarih], [BitisTarih], [OzgecmisID], [UniversiteID], [FakulteID], [BolumID]) VALUES (3, N'yüksek lisans yaptım 2 yıl', CAST(N'2022-04-04' AS Date), CAST(N'2024-05-05' AS Date), 1, 3, 3, 3)
INSERT [dbo].[Egitimler] ([ID], [Aciklama], [BaslangicTarih], [BitisTarih], [OzgecmisID], [UniversiteID], [FakulteID], [BolumID]) VALUES (4, N'Lisans eğitimimi tamamladım', CAST(N'2021-02-07' AS Date), CAST(N'2024-04-08' AS Date), 2, 2, 2, 3)
INSERT [dbo].[Egitimler] ([ID], [Aciklama], [BaslangicTarih], [BitisTarih], [OzgecmisID], [UniversiteID], [FakulteID], [BolumID]) VALUES (5, N'mezun oldum', CAST(N'2021-02-07' AS Date), CAST(N'2024-04-08' AS Date), 3, 9, 35, 34)
INSERT [dbo].[Egitimler] ([ID], [Aciklama], [BaslangicTarih], [BitisTarih], [OzgecmisID], [UniversiteID], [FakulteID], [BolumID]) VALUES (6, N'lisans eğitmimi tamamladım', CAST(N'2023-01-01' AS Date), CAST(N'2024-05-01' AS Date), 4, 10, 38, 48)
INSERT [dbo].[Egitimler] ([ID], [Aciklama], [BaslangicTarih], [BitisTarih], [OzgecmisID], [UniversiteID], [FakulteID], [BolumID]) VALUES (7, N'Mezun olundu', CAST(N'2020-04-02' AS Date), CAST(N'2024-08-02' AS Date), 5, 11, 41, 39)
INSERT [dbo].[Egitimler] ([ID], [Aciklama], [BaslangicTarih], [BitisTarih], [OzgecmisID], [UniversiteID], [FakulteID], [BolumID]) VALUES (8, N'mezun', CAST(N'2020-04-02' AS Date), CAST(N'2024-05-01' AS Date), 6, 9, 36, 35)
INSERT [dbo].[Egitimler] ([ID], [Aciklama], [BaslangicTarih], [BitisTarih], [OzgecmisID], [UniversiteID], [FakulteID], [BolumID]) VALUES (9, N'lisans eğitimi bitti', CAST(N'2020-04-02' AS Date), CAST(N'2024-05-01' AS Date), 7, 5, 18, 20)
INSERT [dbo].[Egitimler] ([ID], [Aciklama], [BaslangicTarih], [BitisTarih], [OzgecmisID], [UniversiteID], [FakulteID], [BolumID]) VALUES (10, N'önlisans bitti', CAST(N'2020-04-02' AS Date), CAST(N'2024-05-01' AS Date), 8, 3, 9, 9)
INSERT [dbo].[Egitimler] ([ID], [Aciklama], [BaslangicTarih], [BitisTarih], [OzgecmisID], [UniversiteID], [FakulteID], [BolumID]) VALUES (11, N'mezun oldum', CAST(N'2020-04-02' AS Date), CAST(N'2024-05-01' AS Date), 9, 12, 46, 50)
INSERT [dbo].[Egitimler] ([ID], [Aciklama], [BaslangicTarih], [BitisTarih], [OzgecmisID], [UniversiteID], [FakulteID], [BolumID]) VALUES (12, N'mezun oldum', CAST(N'2020-04-02' AS Date), CAST(N'2024-05-01' AS Date), 10, 8, 32, 31)
INSERT [dbo].[Egitimler] ([ID], [Aciklama], [BaslangicTarih], [BitisTarih], [OzgecmisID], [UniversiteID], [FakulteID], [BolumID]) VALUES (13, N'lisan eğitmim bitmiştir', CAST(N'2021-02-07' AS Date), CAST(N'2024-04-08' AS Date), 11, 13, 50, 51)
INSERT [dbo].[Egitimler] ([ID], [Aciklama], [BaslangicTarih], [BitisTarih], [OzgecmisID], [UniversiteID], [FakulteID], [BolumID]) VALUES (14, N'mezuniyet', CAST(N'2021-02-07' AS Date), CAST(N'2024-04-08' AS Date), 12, 14, 54, 52)
INSERT [dbo].[Egitimler] ([ID], [Aciklama], [BaslangicTarih], [BitisTarih], [OzgecmisID], [UniversiteID], [FakulteID], [BolumID]) VALUES (15, N'mezunn', CAST(N'2021-02-07' AS Date), CAST(N'2024-04-08' AS Date), 13, 7, 25, 26)
INSERT [dbo].[Egitimler] ([ID], [Aciklama], [BaslangicTarih], [BitisTarih], [OzgecmisID], [UniversiteID], [FakulteID], [BolumID]) VALUES (16, N'MEZUN', CAST(N'2021-02-07' AS Date), CAST(N'2024-04-08' AS Date), 14, 11, 44, 44)
INSERT [dbo].[Egitimler] ([ID], [Aciklama], [BaslangicTarih], [BitisTarih], [OzgecmisID], [UniversiteID], [FakulteID], [BolumID]) VALUES (17, N'LİSANS BİTTİ', CAST(N'2021-02-07' AS Date), CAST(N'2024-05-05' AS Date), 15, 13, 50, 51)
INSERT [dbo].[Egitimler] ([ID], [Aciklama], [BaslangicTarih], [BitisTarih], [OzgecmisID], [UniversiteID], [FakulteID], [BolumID]) VALUES (18, N'Bitti', CAST(N'2022-04-04' AS Date), CAST(N'2024-05-05' AS Date), 16, 11, 41, 39)
INSERT [dbo].[Egitimler] ([ID], [Aciklama], [BaslangicTarih], [BitisTarih], [OzgecmisID], [UniversiteID], [FakulteID], [BolumID]) VALUES (19, N'Sonlandı', CAST(N'2022-04-04' AS Date), CAST(N'2024-05-05' AS Date), 17, 4, 14, 15)
INSERT [dbo].[Egitimler] ([ID], [Aciklama], [BaslangicTarih], [BitisTarih], [OzgecmisID], [UniversiteID], [FakulteID], [BolumID]) VALUES (20, N'Bitirdim', CAST(N'2022-04-04' AS Date), CAST(N'2024-05-05' AS Date), 18, 4, 14, 15)
INSERT [dbo].[Egitimler] ([ID], [Aciklama], [BaslangicTarih], [BitisTarih], [OzgecmisID], [UniversiteID], [FakulteID], [BolumID]) VALUES (21, N'projeler yapıldı', CAST(N'2022-04-04' AS Date), CAST(N'2024-05-05' AS Date), 19, 11, 41, 39)
INSERT [dbo].[Egitimler] ([ID], [Aciklama], [BaslangicTarih], [BitisTarih], [OzgecmisID], [UniversiteID], [FakulteID], [BolumID]) VALUES (22, N'lisansım bitti', CAST(N'2022-04-04' AS Date), CAST(N'2024-05-05' AS Date), 20, 11, 41, 39)
INSERT [dbo].[Egitimler] ([ID], [Aciklama], [BaslangicTarih], [BitisTarih], [OzgecmisID], [UniversiteID], [FakulteID], [BolumID]) VALUES (23, N'eğitimim bitmiştir', CAST(N'2020-04-02' AS Date), CAST(N'2024-05-05' AS Date), 21, 6, 22, 24)
INSERT [dbo].[Egitimler] ([ID], [Aciklama], [BaslangicTarih], [BitisTarih], [OzgecmisID], [UniversiteID], [FakulteID], [BolumID]) VALUES (24, N'ön lisans bitti', CAST(N'2020-04-02' AS Date), CAST(N'2024-05-05' AS Date), 22, 6, 22, 25)
INSERT [dbo].[Egitimler] ([ID], [Aciklama], [BaslangicTarih], [BitisTarih], [OzgecmisID], [UniversiteID], [FakulteID], [BolumID]) VALUES (25, N'yüksek lisansı bitirdim', NULL, NULL, 19, 12, 46, 50)
INSERT [dbo].[Egitimler] ([ID], [Aciklama], [BaslangicTarih], [BitisTarih], [OzgecmisID], [UniversiteID], [FakulteID], [BolumID]) VALUES (26, N'yüksek lisansım bitti', NULL, NULL, 17, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Egitimler] OFF
GO
SET IDENTITY_INSERT [dbo].[EkBilgiler] ON 

INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (1, N'17 Native uygulama geliştirdim.', 1)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (2, N'+90.000 üzeri uygulama indirme sayısı.', 1)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (3, N'Çalışkan ve hızlı öğrenirim.', 2)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (4, N'uygulama indirme sayısı.', 2)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (5, N'Ekbilgi 4', 4)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (6, N'Ekbilgi 4', 4)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (7, N'Ekbilgi 4', 4)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (8, N'Ekbilgi 5', 5)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (9, N'Ekbilgi 5', 5)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (10, N'Ekbilgi 5', 5)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (11, N'Ekbilgi 6', 6)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (12, N'Ekbilgi 6', 6)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (13, N'Ekbilgi 6', 6)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (14, N'Ekbilgi 7', 7)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (15, N'Ekbilgi 7', 7)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (16, N'Ekbilgi 7', 7)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (17, N'Ekbilgi 8', 8)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (18, N'Ekbilgi 8', 8)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (19, N'Ekbilgi 8', 8)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (20, N'Ekbilgi 9', 9)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (21, N'Ekbilgi 9', 9)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (22, N'Ekbilgi 9', 9)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (23, N'Ekbilgi 10', 10)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (24, N'Ekbilgi 10', 10)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (25, N'Ekbilgi 10', 10)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (26, N'Ekbilgi 11', 11)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (27, N'Ekbilgi 11', 11)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (28, N'Ekbilgi 11', 11)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (29, N'Ekbilgi 12', 12)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (30, N'Ekbilgi 12', 12)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (31, N'Ekbilgi 12', 12)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (32, N'Ekbilgi 13', 13)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (33, N'Ekbilgi 13', 13)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (34, N'Ekbilgi 13', 13)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (35, N'Ekbilgi 14', 14)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (36, N'Ekbilgi 14', 14)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (37, N'Ekbilgi 14', 14)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (38, N'Ekbilgi 15', 15)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (39, N'Ekbilgi 15', 15)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (40, N'Ekbilgi 15', 15)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (41, N'Ekbilgi 16', 16)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (42, N'Ekbilgi 16', 16)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (43, N'Ekbilgi 16', 16)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (44, N'Ekbilgi 17', 17)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (45, N'Ekbilgi 17', 17)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (46, N'Ekbilgi 17', 17)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (47, N'Ekbilgi 18', 18)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (48, N'Ekbilgi 18', 18)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (49, N'Ekbilgi 18', 18)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (50, N'Ekbilgi 19', 19)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (51, N'Ekbilgi 19', 19)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (52, N'Ekbilgi 19', 19)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (53, N'Ekbilgi 20', 20)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (54, N'Ekbilgi 20', 20)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (55, N'Ekbilgi 20', 20)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (56, N'Ekbilgi 21', 21)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (57, N'Ekbilgi 21', 21)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (58, N'Ekbilgi 21', 21)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (59, N'Ekbilgi 22', 22)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (60, N'Ekbilgi 22', 22)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (61, N'Ekbilgi 22', 22)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (62, N'Ekbilgi3', 3)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (63, N'Ekbilgi3', 3)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (64, N'Ekbilgi 3', 3)
SET IDENTITY_INSERT [dbo].[EkBilgiler] OFF
GO
SET IDENTITY_INSERT [dbo].[FakulteAdi] ON 

INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (1, N'İİBF', 1)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (2, N'Mühendislik Fak', 1)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (3, N'Fen ve Edebiyat Fak', 1)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (4, N'Güzel Sanatlar Fak', 1)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (5, N'İİBF', 2)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (6, N'Mühendislik Fak', 2)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (7, N'Fen ve Edebiyat Fak', 2)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (8, N'Güzel Sanatlar Fak', 2)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (9, N'İİBF', 3)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (10, N'Mühendislik Fak', 3)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (11, N'Fen ve Edebiyat Fak', 3)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (12, N'Güzel Sanatlar Fak', 3)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (13, N'İİBF', 4)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (14, N'Mühendislik Fak', 4)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (15, N'Fen ve Edebiyat Fak', 4)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (16, N'Güzel Sanatlar Fak', 4)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (17, N'İİBF', 5)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (18, N'Mühendislik Fak', 5)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (19, N'Fen ve Edebiyat Fak', 5)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (20, N'Güzel Sanatlar Fak', 5)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (21, N'İİBF', 6)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (22, N'Mühendislik Fak', 6)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (23, N'Fen ve Edebiyat Fak', 6)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (24, N'Güzel Sanatlar Fak', 6)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (25, N'İİBF', 7)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (26, N'Mühendislik Fak', 7)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (27, N'Fen ve Edebiyat Fak', 7)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (28, N'Güzel Sanatlar Fak', 7)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (29, N'İİBF', 8)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (30, N'Mühendislik Fak', 8)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (31, N'Fen ve Edebiyat Fak', 8)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (32, N'Güzel Sanatlar Fak', 8)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (33, N'İİBF', 9)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (34, N'Mühendislik Fak', 9)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (35, N'Fen ve Edebiyat Fak', 9)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (36, N'Güzel Sanatlar Fak', 9)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (37, N'İİBF', 10)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (38, N'Mühendislik Fak', 10)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (39, N'Fen ve Edebiyat Fak', 10)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (40, N'Güzel Sanatlar Fak', 10)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (41, N'İİBF', 11)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (42, N'Mühendislik Fak', 11)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (43, N'Fen ve Edebiyat Fak', 11)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (44, N'Güzel Sanatlar Fak', 11)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (45, N'İİBF', 12)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (46, N'Mühendislik Fak', 12)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (47, N'Fen ve Edebiyat Fak', 12)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (48, N'Güzel Sanatlar Fak', 12)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (49, N'İİBF', 13)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (50, N'Mühendislik Fak', 13)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (51, N'Fen ve Edebiyat Fak', 13)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (52, N'Güzel Sanatlar Fak', 13)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (53, N'İİBF', 14)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (54, N'Mühendislik Fak', 14)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (55, N'Fen ve Edebiyat Fak', 14)
INSERT [dbo].[FakulteAdi] ([ID], [FakulteAdi], [UniversiteID]) VALUES (56, N'Güzel Sanatlar Fak', 14)
SET IDENTITY_INSERT [dbo].[FakulteAdi] OFF
GO
SET IDENTITY_INSERT [dbo].[FavoriIlanlar] ON 

INSERT [dbo].[FavoriIlanlar] ([ID], [UyelikID], [IlanID]) VALUES (1, 1, 1)
INSERT [dbo].[FavoriIlanlar] ([ID], [UyelikID], [IlanID]) VALUES (2, 1, 2)
INSERT [dbo].[FavoriIlanlar] ([ID], [UyelikID], [IlanID]) VALUES (3, 2, 2)
INSERT [dbo].[FavoriIlanlar] ([ID], [UyelikID], [IlanID]) VALUES (4, 2, 1)
INSERT [dbo].[FavoriIlanlar] ([ID], [UyelikID], [IlanID]) VALUES (5, 11, 3)
INSERT [dbo].[FavoriIlanlar] ([ID], [UyelikID], [IlanID]) VALUES (6, 8, 4)
INSERT [dbo].[FavoriIlanlar] ([ID], [UyelikID], [IlanID]) VALUES (7, 15, 4)
INSERT [dbo].[FavoriIlanlar] ([ID], [UyelikID], [IlanID]) VALUES (8, 16, 4)
INSERT [dbo].[FavoriIlanlar] ([ID], [UyelikID], [IlanID]) VALUES (9, 15, 5)
INSERT [dbo].[FavoriIlanlar] ([ID], [UyelikID], [IlanID]) VALUES (10, 18, 6)
INSERT [dbo].[FavoriIlanlar] ([ID], [UyelikID], [IlanID]) VALUES (11, 27, 7)
INSERT [dbo].[FavoriIlanlar] ([ID], [UyelikID], [IlanID]) VALUES (12, 22, 7)
INSERT [dbo].[FavoriIlanlar] ([ID], [UyelikID], [IlanID]) VALUES (13, 6, 8)
INSERT [dbo].[FavoriIlanlar] ([ID], [UyelikID], [IlanID]) VALUES (14, 9, 8)
INSERT [dbo].[FavoriIlanlar] ([ID], [UyelikID], [IlanID]) VALUES (15, 21, 9)
INSERT [dbo].[FavoriIlanlar] ([ID], [UyelikID], [IlanID]) VALUES (16, 21, 10)
INSERT [dbo].[FavoriIlanlar] ([ID], [UyelikID], [IlanID]) VALUES (17, 21, 11)
INSERT [dbo].[FavoriIlanlar] ([ID], [UyelikID], [IlanID]) VALUES (18, 28, 12)
INSERT [dbo].[FavoriIlanlar] ([ID], [UyelikID], [IlanID]) VALUES (19, 1, 12)
INSERT [dbo].[FavoriIlanlar] ([ID], [UyelikID], [IlanID]) VALUES (20, 24, 12)
INSERT [dbo].[FavoriIlanlar] ([ID], [UyelikID], [IlanID]) VALUES (21, 22, 13)
INSERT [dbo].[FavoriIlanlar] ([ID], [UyelikID], [IlanID]) VALUES (22, 25, 14)
INSERT [dbo].[FavoriIlanlar] ([ID], [UyelikID], [IlanID]) VALUES (23, 24, 15)
INSERT [dbo].[FavoriIlanlar] ([ID], [UyelikID], [IlanID]) VALUES (24, 24, 16)
INSERT [dbo].[FavoriIlanlar] ([ID], [UyelikID], [IlanID]) VALUES (25, 25, 16)
INSERT [dbo].[FavoriIlanlar] ([ID], [UyelikID], [IlanID]) VALUES (26, 27, 16)
INSERT [dbo].[FavoriIlanlar] ([ID], [UyelikID], [IlanID]) VALUES (27, 10, 17)
INSERT [dbo].[FavoriIlanlar] ([ID], [UyelikID], [IlanID]) VALUES (28, 6, 17)
INSERT [dbo].[FavoriIlanlar] ([ID], [UyelikID], [IlanID]) VALUES (29, 23, 18)
INSERT [dbo].[FavoriIlanlar] ([ID], [UyelikID], [IlanID]) VALUES (30, 18, 18)
INSERT [dbo].[FavoriIlanlar] ([ID], [UyelikID], [IlanID]) VALUES (31, 18, 19)
INSERT [dbo].[FavoriIlanlar] ([ID], [UyelikID], [IlanID]) VALUES (32, 17, 19)
INSERT [dbo].[FavoriIlanlar] ([ID], [UyelikID], [IlanID]) VALUES (33, 16, 20)
INSERT [dbo].[FavoriIlanlar] ([ID], [UyelikID], [IlanID]) VALUES (34, 15, 20)
INSERT [dbo].[FavoriIlanlar] ([ID], [UyelikID], [IlanID]) VALUES (35, 14, 21)
INSERT [dbo].[FavoriIlanlar] ([ID], [UyelikID], [IlanID]) VALUES (36, 13, 21)
INSERT [dbo].[FavoriIlanlar] ([ID], [UyelikID], [IlanID]) VALUES (37, 22, 21)
INSERT [dbo].[FavoriIlanlar] ([ID], [UyelikID], [IlanID]) VALUES (38, 23, 21)
INSERT [dbo].[FavoriIlanlar] ([ID], [UyelikID], [IlanID]) VALUES (39, 1, 22)
INSERT [dbo].[FavoriIlanlar] ([ID], [UyelikID], [IlanID]) VALUES (40, 2, 22)
INSERT [dbo].[FavoriIlanlar] ([ID], [UyelikID], [IlanID]) VALUES (41, 25, 22)
INSERT [dbo].[FavoriIlanlar] ([ID], [UyelikID], [IlanID]) VALUES (42, 28, 22)
INSERT [dbo].[FavoriIlanlar] ([ID], [UyelikID], [IlanID]) VALUES (43, 27, 22)
SET IDENTITY_INSERT [dbo].[FavoriIlanlar] OFF
GO
SET IDENTITY_INSERT [dbo].[Hakkimda] ON 

INSERT [dbo].[Hakkimda] ([ID], [Hakkimda], [Meslek], [CalismaSekli], [Konum], [DeneyimYili], [MezuniyetDerece], [OzgecmisID]) VALUES (1, N'Eğitim hayatım açtığınız pozisyonun gerektirdiği altyapıyı bana sağladı. Eğitim sürecim içerisinde araştırma, öz motivasyon, girişimcilik ve farklı yetenekler edinme noktasında kendimi geliştirdim. Özgeçmişimde de görebileceğiniz gibi farklı eğitimlerle ve yaptığım bireysel araştırmalarla kendimi iş hayatına hazırladım.', N'.net yazılım uzmanı', N' Tam Zamanlı', N'İstanbul', N'2 Yıl', N'Lisans', 1)
INSERT [dbo].[Hakkimda] ([ID], [Hakkimda], [Meslek], [CalismaSekli], [Konum], [DeneyimYili], [MezuniyetDerece], [OzgecmisID]) VALUES (2, N'İş yaşamında efektif ve hızlı olmak konusunda son derece özverili ve hevesli olduğumu, pozisyonun gerektirdiği sorumluluğu merak ve istekle üzerime almak istediğimi belirtmek isterim. İstekli, özenli ve dikkatli çalışmanın mutlaka başarı ile sonuçlanacağının bilincindeyim. Bu nedenle size yeteneklerim ve çalışma disiplinim ile katkı sağlayabileceğim noktasında şüphem yok.', N'mobil uygulama geliştirici', N'Tam Zamanlı', N'Ankara', N'3 Yıl', N'Yüksek Lisans', 2)
INSERT [dbo].[Hakkimda] ([ID], [Hakkimda], [Meslek], [CalismaSekli], [Konum], [DeneyimYili], [MezuniyetDerece], [OzgecmisID]) VALUES (3, N'Rastgele metin 3', N'veri analisti', N'Tam zamanlı', N'İzmir', N'2 Yıl', N'Lisans', 3)
INSERT [dbo].[Hakkimda] ([ID], [Hakkimda], [Meslek], [CalismaSekli], [Konum], [DeneyimYili], [MezuniyetDerece], [OzgecmisID]) VALUES (4, N'Rastgele metin 4', N'grafik tasarımcı', N'Stajyer', N'Ankara', N'Deneyim yok', N'Yüksek Lisans', 4)
INSERT [dbo].[Hakkimda] ([ID], [Hakkimda], [Meslek], [CalismaSekli], [Konum], [DeneyimYili], [MezuniyetDerece], [OzgecmisID]) VALUES (5, N'Rastgele metin 5', N'test uzmanı', N'Tam Zamanlı', N'İstanbul', N'5 Yıl', N'Lisans', 5)
INSERT [dbo].[Hakkimda] ([ID], [Hakkimda], [Meslek], [CalismaSekli], [Konum], [DeneyimYili], [MezuniyetDerece], [OzgecmisID]) VALUES (6, N'Rastgele metin 6', N'.net yazılım uzmanı', N'Tam zamanlı', N'Kastamonu', N'2 Yıl', N'Lisans', 6)
INSERT [dbo].[Hakkimda] ([ID], [Hakkimda], [Meslek], [CalismaSekli], [Konum], [DeneyimYili], [MezuniyetDerece], [OzgecmisID]) VALUES (7, N'Rastgele metin 7', N'test uzmanı', N'Stajyer', N'Ankara', N'Deneyim yok', N'Lisans', 7)
INSERT [dbo].[Hakkimda] ([ID], [Hakkimda], [Meslek], [CalismaSekli], [Konum], [DeneyimYili], [MezuniyetDerece], [OzgecmisID]) VALUES (8, N'Rastgele metin 8', N'iş analisti', N'Tam Zamanlı', N'İstanbul', N'5 Yıl', N'Lisans', 8)
INSERT [dbo].[Hakkimda] ([ID], [Hakkimda], [Meslek], [CalismaSekli], [Konum], [DeneyimYili], [MezuniyetDerece], [OzgecmisID]) VALUES (9, N'Rastgele metin 9', N'iş analisti', N'Tam zamanlı', N'İzmir', N'2 Yıl', N'Lisans', 9)
INSERT [dbo].[Hakkimda] ([ID], [Hakkimda], [Meslek], [CalismaSekli], [Konum], [DeneyimYili], [MezuniyetDerece], [OzgecmisID]) VALUES (10, N'Rastgele metin 10', N'grafik tasarımcı', N'Stajyer', N'Ankara', N'Deneyim yok', N'Lisans', 10)
INSERT [dbo].[Hakkimda] ([ID], [Hakkimda], [Meslek], [CalismaSekli], [Konum], [DeneyimYili], [MezuniyetDerece], [OzgecmisID]) VALUES (11, N'Rastgele metin 11', N'.net yazılım uzmanı', N'Tam Zamanlı', N'İstanbul', N'5 Yıl', N'Yüksek Lisans', 11)
INSERT [dbo].[Hakkimda] ([ID], [Hakkimda], [Meslek], [CalismaSekli], [Konum], [DeneyimYili], [MezuniyetDerece], [OzgecmisID]) VALUES (12, N'Rastgele metin 12', N'mobil uygulama geliştirici', N'Tam zamanlı', N'İzmir', N'2 Yıl', N'Lisans', 12)
INSERT [dbo].[Hakkimda] ([ID], [Hakkimda], [Meslek], [CalismaSekli], [Konum], [DeneyimYili], [MezuniyetDerece], [OzgecmisID]) VALUES (13, N'Rastgele metin 13', N'veri analisti', N'Stajyer', N'Ankara', N'Deneyim yok', N'Lisans', 13)
INSERT [dbo].[Hakkimda] ([ID], [Hakkimda], [Meslek], [CalismaSekli], [Konum], [DeneyimYili], [MezuniyetDerece], [OzgecmisID]) VALUES (14, N'Rastgele metin 14', N'.net yazılım uzmanı', N'Tam Zamanlı', N'İstanbul', N'5 Yıl', N'Lisans', 14)
INSERT [dbo].[Hakkimda] ([ID], [Hakkimda], [Meslek], [CalismaSekli], [Konum], [DeneyimYili], [MezuniyetDerece], [OzgecmisID]) VALUES (15, N'Rastgele metin 15', N'mobil uygulama geliştirici', N'Tam zamanlı', N'İzmir', N'2 Yıl', N'Lisans', 15)
INSERT [dbo].[Hakkimda] ([ID], [Hakkimda], [Meslek], [CalismaSekli], [Konum], [DeneyimYili], [MezuniyetDerece], [OzgecmisID]) VALUES (16, N'Rastgele metin 16', N'grafik tasarımcı', N'Stajyer', N'Ankara', N'Deneyim yok', N'Lisans', 16)
INSERT [dbo].[Hakkimda] ([ID], [Hakkimda], [Meslek], [CalismaSekli], [Konum], [DeneyimYili], [MezuniyetDerece], [OzgecmisID]) VALUES (17, N'Rastgele metin 17', N'iş analisti', N'Tam Zamanlı', N'İstanbul', N'5 Yıl', N'Yüksek Lisans', 17)
INSERT [dbo].[Hakkimda] ([ID], [Hakkimda], [Meslek], [CalismaSekli], [Konum], [DeneyimYili], [MezuniyetDerece], [OzgecmisID]) VALUES (18, N'Rastgele metin 18', N'.net yazılım uzmanı', N'Tam zamanlı', N'İzmir', N'2 Yıl', N'Yüksek Lisans', 18)
INSERT [dbo].[Hakkimda] ([ID], [Hakkimda], [Meslek], [CalismaSekli], [Konum], [DeneyimYili], [MezuniyetDerece], [OzgecmisID]) VALUES (19, N'Rastgele metin 19', N'veri analisti', N'Stajyer', N'Ankara', N'Deneyim yok', N'Lisans', 19)
INSERT [dbo].[Hakkimda] ([ID], [Hakkimda], [Meslek], [CalismaSekli], [Konum], [DeneyimYili], [MezuniyetDerece], [OzgecmisID]) VALUES (20, N'Rastgele metin 20', N'test uzmanı', N'Tam Zamanlı', N'İstanbul', N'5 Yıl', N'Yüksek Lisans', 20)
INSERT [dbo].[Hakkimda] ([ID], [Hakkimda], [Meslek], [CalismaSekli], [Konum], [DeneyimYili], [MezuniyetDerece], [OzgecmisID]) VALUES (21, N'Rastgele metin 21', N'mobil uygulama geliştirici', N'Tam zamanlı', N'İzmir', N'2 Yıl', N'Lisans', 21)
INSERT [dbo].[Hakkimda] ([ID], [Hakkimda], [Meslek], [CalismaSekli], [Konum], [DeneyimYili], [MezuniyetDerece], [OzgecmisID]) VALUES (22, N'Rastgele metin 22', N'veri analisti', N'Stajyer', N'Ankara', N'Deneyim yok', N'Lisans', 22)
SET IDENTITY_INSERT [dbo].[Hakkimda] OFF
GO
SET IDENTITY_INSERT [dbo].[Hareket] ON 

INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (1, 1, 1, CAST(N'2024-07-04T21:23:42.760' AS DateTime))
INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (2, 1, 2, CAST(N'2024-07-04T21:24:23.970' AS DateTime))
INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (3, 2, 1, CAST(N'2024-07-04T21:28:36.070' AS DateTime))
INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (4, 2, 2, CAST(N'2024-07-04T21:28:36.070' AS DateTime))
INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (5, 6, 3, CAST(N'2024-07-04T21:28:36.070' AS DateTime))
INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (6, 6, 4, CAST(N'2024-07-04T21:28:36.070' AS DateTime))
INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (7, 7, 1, CAST(N'2024-07-04T21:28:36.070' AS DateTime))
INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (8, 7, 3, CAST(N'2024-07-04T21:28:36.070' AS DateTime))
INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (9, 8, 1, CAST(N'2024-07-04T21:28:36.070' AS DateTime))
INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (10, 8, 4, CAST(N'2024-07-04T21:28:36.070' AS DateTime))
INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (11, 9, 1, CAST(N'2024-07-04T21:28:36.070' AS DateTime))
INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (12, 9, 2, CAST(N'2024-07-04T21:28:36.070' AS DateTime))
INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (13, 11, 2, CAST(N'2024-07-04T21:28:36.070' AS DateTime))
INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (14, 10, 1, CAST(N'2024-07-04T21:28:36.070' AS DateTime))
INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (15, 12, 1, CAST(N'2024-07-04T21:28:36.070' AS DateTime))
INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (16, 11, 2, CAST(N'2024-07-04T21:28:36.070' AS DateTime))
INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (17, 13, 3, CAST(N'2024-07-04T21:28:36.070' AS DateTime))
INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (18, 13, 4, CAST(N'2024-07-04T21:28:36.070' AS DateTime))
INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (19, 14, 1, CAST(N'2024-07-04T21:28:36.070' AS DateTime))
INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (20, 14, 2, CAST(N'2024-07-04T21:28:36.070' AS DateTime))
INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (21, 15, 1, CAST(N'2024-07-04T21:28:36.070' AS DateTime))
INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (22, 15, 3, CAST(N'2024-07-04T21:28:36.070' AS DateTime))
INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (23, 16, 3, CAST(N'2024-07-04T21:28:36.070' AS DateTime))
INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (24, 16, 2, CAST(N'2024-07-04T21:28:36.070' AS DateTime))
INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (25, 17, 3, CAST(N'2024-07-04T21:28:36.070' AS DateTime))
INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (26, 17, 2, CAST(N'2024-07-04T21:28:36.070' AS DateTime))
INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (27, 18, 4, CAST(N'2024-07-04T21:28:36.070' AS DateTime))
INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (28, 18, 2, CAST(N'2024-07-04T21:28:36.070' AS DateTime))
INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (29, 21, 1, CAST(N'2024-07-04T21:28:36.070' AS DateTime))
INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (30, 21, 2, CAST(N'2024-07-04T21:28:36.070' AS DateTime))
INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (31, 22, 1, CAST(N'2024-07-04T21:28:36.070' AS DateTime))
INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (32, 22, 2, CAST(N'2024-07-04T21:28:36.070' AS DateTime))
INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (33, 23, 1, CAST(N'2024-07-04T21:28:36.070' AS DateTime))
INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (34, 23, 3, CAST(N'2024-07-04T21:28:36.070' AS DateTime))
INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (35, 24, 1, CAST(N'2024-07-04T21:28:36.070' AS DateTime))
INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (36, 24, 1, CAST(N'2024-07-04T21:28:36.070' AS DateTime))
INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (37, 25, 2, CAST(N'2024-07-04T21:28:36.070' AS DateTime))
INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (38, 25, 2, CAST(N'2024-07-04T21:28:36.070' AS DateTime))
INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (39, 27, 3, CAST(N'2024-07-04T21:28:36.070' AS DateTime))
INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (40, 27, 3, CAST(N'2024-07-04T21:28:36.070' AS DateTime))
INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (41, 28, 1, CAST(N'2024-07-04T21:28:36.070' AS DateTime))
INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (42, 28, 5, CAST(N'2024-07-04T21:28:36.070' AS DateTime))
INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (43, 4, 6, CAST(N'2024-07-04T21:38:01.520' AS DateTime))
INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (44, 4, 1, CAST(N'2024-07-04T21:38:01.520' AS DateTime))
INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (45, 5, 1, CAST(N'2024-07-04T21:38:01.520' AS DateTime))
INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (46, 5, 4, CAST(N'2024-07-04T21:38:01.520' AS DateTime))
INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (47, 5, 5, CAST(N'2024-07-04T21:38:01.520' AS DateTime))
INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (48, 19, 6, CAST(N'2024-07-04T21:38:01.520' AS DateTime))
INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (49, 19, 1, CAST(N'2024-07-04T21:38:01.520' AS DateTime))
INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (50, 20, 4, CAST(N'2024-07-04T21:38:01.520' AS DateTime))
INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (51, 20, 5, CAST(N'2024-07-04T21:38:01.520' AS DateTime))
INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (52, 26, 5, CAST(N'2024-07-04T21:38:01.520' AS DateTime))
INSERT [dbo].[Hareket] ([ID], [UyelikID], [BildirimID], [HareketTarihi]) VALUES (53, 26, 5, CAST(N'2024-07-04T21:38:01.520' AS DateTime))
SET IDENTITY_INSERT [dbo].[Hareket] OFF
GO
SET IDENTITY_INSERT [dbo].[Hobiler] ON 

INSERT [dbo].[Hobiler] ([ID], [Hobi], [OzgecmisID]) VALUES (1, N'Bilgisayar', 1)
INSERT [dbo].[Hobiler] ([ID], [Hobi], [OzgecmisID]) VALUES (2, N'3D Yazıcılar', 1)
INSERT [dbo].[Hobiler] ([ID], [Hobi], [OzgecmisID]) VALUES (3, N'Otomobiller', 1)
INSERT [dbo].[Hobiler] ([ID], [Hobi], [OzgecmisID]) VALUES (4, N'Müzik', 2)
INSERT [dbo].[Hobiler] ([ID], [Hobi], [OzgecmisID]) VALUES (5, N'Resim', 2)
INSERT [dbo].[Hobiler] ([ID], [Hobi], [OzgecmisID]) VALUES (6, N'Tarih', 2)
INSERT [dbo].[Hobiler] ([ID], [Hobi], [OzgecmisID]) VALUES (7, N'Yüzme', 3)
INSERT [dbo].[Hobiler] ([ID], [Hobi], [OzgecmisID]) VALUES (8, N'Kitap okuma', 4)
INSERT [dbo].[Hobiler] ([ID], [Hobi], [OzgecmisID]) VALUES (9, N'Müzik dinleme', 5)
INSERT [dbo].[Hobiler] ([ID], [Hobi], [OzgecmisID]) VALUES (10, N'Yemek yapma', 5)
INSERT [dbo].[Hobiler] ([ID], [Hobi], [OzgecmisID]) VALUES (11, N'Bisiklet sürme', 6)
INSERT [dbo].[Hobiler] ([ID], [Hobi], [OzgecmisID]) VALUES (12, N'Fotoğraf çekme', 6)
INSERT [dbo].[Hobiler] ([ID], [Hobi], [OzgecmisID]) VALUES (13, N'Dans etme', 7)
INSERT [dbo].[Hobiler] ([ID], [Hobi], [OzgecmisID]) VALUES (14, N'Bahçe işleri', 8)
INSERT [dbo].[Hobiler] ([ID], [Hobi], [OzgecmisID]) VALUES (15, N'Satranç oynama', 9)
INSERT [dbo].[Hobiler] ([ID], [Hobi], [OzgecmisID]) VALUES (16, N'Yoga yapma', 10)
INSERT [dbo].[Hobiler] ([ID], [Hobi], [OzgecmisID]) VALUES (17, N'Film izleme', 11)
INSERT [dbo].[Hobiler] ([ID], [Hobi], [OzgecmisID]) VALUES (18, N'Gezi yapma', 12)
INSERT [dbo].[Hobiler] ([ID], [Hobi], [OzgecmisID]) VALUES (19, N'Resim yapma', 13)
INSERT [dbo].[Hobiler] ([ID], [Hobi], [OzgecmisID]) VALUES (20, N'Gitar çalma', 13)
INSERT [dbo].[Hobiler] ([ID], [Hobi], [OzgecmisID]) VALUES (21, N'Araba tamiri', 14)
INSERT [dbo].[Hobiler] ([ID], [Hobi], [OzgecmisID]) VALUES (22, N'Tiyatro izleme', 15)
INSERT [dbo].[Hobiler] ([ID], [Hobi], [OzgecmisID]) VALUES (23, N'Dil öğrenme', 16)
INSERT [dbo].[Hobiler] ([ID], [Hobi], [OzgecmisID]) VALUES (24, N'Bisiklet tamiri', 17)
INSERT [dbo].[Hobiler] ([ID], [Hobi], [OzgecmisID]) VALUES (25, N'Kamp yapma', 17)
INSERT [dbo].[Hobiler] ([ID], [Hobi], [OzgecmisID]) VALUES (26, N'Balık tutma', 17)
INSERT [dbo].[Hobiler] ([ID], [Hobi], [OzgecmisID]) VALUES (27, N'Bahçe işleri', 18)
INSERT [dbo].[Hobiler] ([ID], [Hobi], [OzgecmisID]) VALUES (28, N'Satranç oynama', 19)
INSERT [dbo].[Hobiler] ([ID], [Hobi], [OzgecmisID]) VALUES (29, N'Yoga yapma', 19)
INSERT [dbo].[Hobiler] ([ID], [Hobi], [OzgecmisID]) VALUES (30, N'Film izleme', 19)
INSERT [dbo].[Hobiler] ([ID], [Hobi], [OzgecmisID]) VALUES (31, N'Gezi yapma', 20)
INSERT [dbo].[Hobiler] ([ID], [Hobi], [OzgecmisID]) VALUES (32, N'Resim yapma', 20)
INSERT [dbo].[Hobiler] ([ID], [Hobi], [OzgecmisID]) VALUES (33, N'Gitar çalma', 20)
INSERT [dbo].[Hobiler] ([ID], [Hobi], [OzgecmisID]) VALUES (34, N'Araba tamiri', 21)
INSERT [dbo].[Hobiler] ([ID], [Hobi], [OzgecmisID]) VALUES (35, N'Tiyatro izleme', 21)
INSERT [dbo].[Hobiler] ([ID], [Hobi], [OzgecmisID]) VALUES (36, N'Dil öğrenme', 22)
INSERT [dbo].[Hobiler] ([ID], [Hobi], [OzgecmisID]) VALUES (37, N'Bisiklet tamiri', 22)
INSERT [dbo].[Hobiler] ([ID], [Hobi], [OzgecmisID]) VALUES (38, N'Kamp yapma', 22)
INSERT [dbo].[Hobiler] ([ID], [Hobi], [OzgecmisID]) VALUES (39, N'Balık tutma', 22)
SET IDENTITY_INSERT [dbo].[Hobiler] OFF
GO
SET IDENTITY_INSERT [dbo].[Ilan] ON 

INSERT [dbo].[Ilan] ([ID], [PozisyonAdi], [IsTanimi], [Yetkinlikler], [Tercihen], [SirketImkanlari], [PostaKodu], [IlanTarihi], [SonBasvuruTarihi]) VALUES (1, N'.NET Yazılım Uzmanı ', N'Merkezi İstanbul''da olan şirketimiz, müşterilerimize yazılım alanında hizmet vermekte. Ağırlıklı olarak .NET geliştirme yapan şirketimiz Türkiye pazarında yer almak ve daha fazla katma değer sağlamak adına İstanbul''daki ofisimizde her geçen gün kaliteli ve yüksek teknolojiye sahip projeler üretmek için durmaksızın çalışıyoruz. ', N'React Native ile uygulama geliştirmiş ve ekosistemine oldukça iyi hakim
Web servisleri/REST API''ler hakkında bilgi sahibi', N'JavaScript Framework da genel olarak ilgi duyan
NodeJS tecrübesi olması', N'Sağlık Hizmeti Ay Sonu Tatili Yıl Sonu Çifte Maaş Öğle Yemeği', NULL, CAST(N'2024-02-21' AS Date), CAST(N'2024-03-05' AS Date))
INSERT [dbo].[Ilan] ([ID], [PozisyonAdi], [IsTanimi], [Yetkinlikler], [Tercihen], [SirketImkanlari], [PostaKodu], [IlanTarihi], [SonBasvuruTarihi]) VALUES (2, N'Front-end Geliştiricisi ', N'Merkezi İstanbul''da olan şirketimiz, müşterilerimize yazılım alanında hizmet vermekte. Ağırlıklı olarak .NET geliştirme yapan şirketimiz Türkiye pazarında yer almak ve daha fazla katma değer sağlamak adına İstanbul''daki ofisimizde her geçen gün kaliteli ve yüksek teknolojiye sahip projeler üretmek için durmaksızın çalışıyoruz', N'Teknik dokümantasyonu takip edebilecek seviyede İngilizce bilen
Redux veya context yapısını hakkında bilgi sahibi', N'HTML ve CSS önderleyicileri konusunda yetkin
Ekstra olarak Java, Javascript, C#, Swift', N'rket Artıları

    Sağlık Hizmeti
    Ay Sonu Tatili
    Yıl Sonu Çifte Maaş
    Öğle Yemeği
', NULL, CAST(N'2023-01-01' AS Date), CAST(N'2023-01-25' AS Date))
INSERT [dbo].[Ilan] ([ID], [PozisyonAdi], [IsTanimi], [Yetkinlikler], [Tercihen], [SirketImkanlari], [PostaKodu], [IlanTarihi], [SonBasvuruTarihi]) VALUES (3, N'Yazılım Geliştirici', N'Yazılım geliştirme projelerinde görev alacak.', N'C#, .NET, SQL', N'İngilizce bilgisi tercih edilir.', N'Yemek kartı, özel sağlık sigortası', N'34000', CAST(N'2024-08-01' AS Date), CAST(N'2024-07-31' AS Date))
INSERT [dbo].[Ilan] ([ID], [PozisyonAdi], [IsTanimi], [Yetkinlikler], [Tercihen], [SirketImkanlari], [PostaKodu], [IlanTarihi], [SonBasvuruTarihi]) VALUES (4, N'Satış Temsilcisi', N'Müşteri portföyü yönetimi ve yeni müşteriler kazandırma.', N'İletişim, İkna kabiliyeti', N'Sektörde deneyim tercih edilir.', N'Prim sistemi, servis imkanı', N'34100', CAST(N'2024-02-01' AS Date), CAST(N'2024-08-15' AS Date))
INSERT [dbo].[Ilan] ([ID], [PozisyonAdi], [IsTanimi], [Yetkinlikler], [Tercihen], [SirketImkanlari], [PostaKodu], [IlanTarihi], [SonBasvuruTarihi]) VALUES (5, N'Muhasebe Uzmanı', N'Şirketin muhasebe işlemlerini yürütecek.', N'MS Office, LOGO', N'Finans alanında sertifika tercih edilir.', N'Yol yardımı, yemek kartı', N'34300', CAST(N'2024-07-01' AS Date), CAST(N'2024-07-25' AS Date))
INSERT [dbo].[Ilan] ([ID], [PozisyonAdi], [IsTanimi], [Yetkinlikler], [Tercihen], [SirketImkanlari], [PostaKodu], [IlanTarihi], [SonBasvuruTarihi]) VALUES (6, N'İnsan Kaynakları Uzmanı', N'İşe alım süreçlerini yönetecek.', N'İK süreçleri, iletişim', N'Psikoloji eğitimi tercih edilir.', N'Özel sağlık sigortası, esnek çalışma saatleri', N'34400', CAST(N'2024-05-01' AS Date), CAST(N'2024-07-20' AS Date))
INSERT [dbo].[Ilan] ([ID], [PozisyonAdi], [IsTanimi], [Yetkinlikler], [Tercihen], [SirketImkanlari], [PostaKodu], [IlanTarihi], [SonBasvuruTarihi]) VALUES (7, N'Proje Yöneticisi', N'Proje planlama ve yönetim süreçlerini üstlenecek.', N'Proje yönetimi, iletişim', N'PMP sertifikası tercih edilir.', N'Araç tahsisi, özel sağlık sigortası', N'34500', CAST(N'2024-06-01' AS Date), CAST(N'2024-07-30' AS Date))
INSERT [dbo].[Ilan] ([ID], [PozisyonAdi], [IsTanimi], [Yetkinlikler], [Tercihen], [SirketImkanlari], [PostaKodu], [IlanTarihi], [SonBasvuruTarihi]) VALUES (8, N'Mühendis', N'Mühendislik projelerinde görev alacak.', N'AutoCAD, SolidWorks', N'Yüksek lisans tercih edilir.', N'Yemek kartı, yol yardımı', N'34600', CAST(N'2024-07-15' AS Date), CAST(N'2024-08-01' AS Date))
INSERT [dbo].[Ilan] ([ID], [PozisyonAdi], [IsTanimi], [Yetkinlikler], [Tercihen], [SirketImkanlari], [PostaKodu], [IlanTarihi], [SonBasvuruTarihi]) VALUES (9, N'Pazarlama Uzmanı', N'Pazarlama stratejileri geliştirecek ve uygulayacak.', N'SEO, SEM', N'Dijital pazarlama deneyimi tercih edilir.', N'Prim sistemi, esnek çalışma saatleri', N'34700', CAST(N'2024-07-14' AS Date), CAST(N'2024-08-10' AS Date))
INSERT [dbo].[Ilan] ([ID], [PozisyonAdi], [IsTanimi], [Yetkinlikler], [Tercihen], [SirketImkanlari], [PostaKodu], [IlanTarihi], [SonBasvuruTarihi]) VALUES (10, N'Teknik Destek Uzmanı', N'Müşterilere teknik destek sağlayacak.', N'IT, müşteri hizmetleri', N'Bilgisayar mühendisliği mezunu tercih edilir.', N'Servis imkanı, yemek kartı', N'34800', CAST(N'2023-07-13' AS Date), CAST(N'2024-07-25' AS Date))
INSERT [dbo].[Ilan] ([ID], [PozisyonAdi], [IsTanimi], [Yetkinlikler], [Tercihen], [SirketImkanlari], [PostaKodu], [IlanTarihi], [SonBasvuruTarihi]) VALUES (11, N'Grafik Tasarımcı', N'Şirketin grafik tasarım işlerini yürütecek.', N'Photoshop, Illustrator', N'Sanat eğitimi tercih edilir.', N'Yemek kartı, esnek çalışma saatleri', N'34900', CAST(N'2024-07-01' AS Date), CAST(N'2024-08-05' AS Date))
INSERT [dbo].[Ilan] ([ID], [PozisyonAdi], [IsTanimi], [Yetkinlikler], [Tercihen], [SirketImkanlari], [PostaKodu], [IlanTarihi], [SonBasvuruTarihi]) VALUES (12, N'Veri Analisti', N'Veri analizi ve raporlama yapacak.', N'SQL, Excel', N'İstatistik bilgisi tercih edilir.', N'Yemek kartı, özel sağlık sigortası', N'35000', CAST(N'2024-01-12' AS Date), CAST(N'2024-02-28' AS Date))
INSERT [dbo].[Ilan] ([ID], [PozisyonAdi], [IsTanimi], [Yetkinlikler], [Tercihen], [SirketImkanlari], [PostaKodu], [IlanTarihi], [SonBasvuruTarihi]) VALUES (13, N'Müşteri Hizmetleri Temsilcisi', N'Müşteri taleplerini karşılayacak ve destek sağlayacak.', N'İletişim, problem çözme', N'Çağrı merkezi deneyimi tercih edilir.', N'Prim sistemi, servis imkanı', N'35100', CAST(N'2022-06-01' AS Date), CAST(N'2024-07-28' AS Date))
INSERT [dbo].[Ilan] ([ID], [PozisyonAdi], [IsTanimi], [Yetkinlikler], [Tercihen], [SirketImkanlari], [PostaKodu], [IlanTarihi], [SonBasvuruTarihi]) VALUES (14, N'Finans Uzmanı', N'Şirketin finansal işlemlerini yürütecek.', N'MS Office, finansal analiz', N'SMMM sertifikası tercih edilir.', N'Yemek kartı, özel sağlık sigortası', N'35200', CAST(N'2024-07-01' AS Date), CAST(N'2024-08-12' AS Date))
INSERT [dbo].[Ilan] ([ID], [PozisyonAdi], [IsTanimi], [Yetkinlikler], [Tercihen], [SirketImkanlari], [PostaKodu], [IlanTarihi], [SonBasvuruTarihi]) VALUES (15, N'İçerik Editörü', N'Şirketin web sitesi ve blogu için içerik üretecek.', N'SEO, içerik yönetimi', N'Yazarlık deneyimi tercih edilir.', N'Yemek kartı, esnek çalışma saatleri', N'35300', CAST(N'2024-07-30' AS Date), CAST(N'2024-08-07' AS Date))
INSERT [dbo].[Ilan] ([ID], [PozisyonAdi], [IsTanimi], [Yetkinlikler], [Tercihen], [SirketImkanlari], [PostaKodu], [IlanTarihi], [SonBasvuruTarihi]) VALUES (16, N'Lojistik Uzmanı', N'Lojistik ve tedarik zinciri süreçlerini yönetecek.', N'Lojistik yönetimi, SAP', N'Lojistik sektörü deneyimi tercih edilir.', N'Yemek kartı, özel sağlık sigortası', N'35400', CAST(N'2024-04-01' AS Date), CAST(N'2024-08-20' AS Date))
INSERT [dbo].[Ilan] ([ID], [PozisyonAdi], [IsTanimi], [Yetkinlikler], [Tercihen], [SirketImkanlari], [PostaKodu], [IlanTarihi], [SonBasvuruTarihi]) VALUES (17, N'Kalite Kontrol Uzmanı', N'Üretim süreçlerinde kalite kontrol yapacak.', N'Kalite yönetimi, ISO', N'ISO sertifikası tercih edilir.', N'Yemek kartı, yol yardımı', N'35500', CAST(N'2021-05-01' AS Date), CAST(N'2024-08-15' AS Date))
INSERT [dbo].[Ilan] ([ID], [PozisyonAdi], [IsTanimi], [Yetkinlikler], [Tercihen], [SirketImkanlari], [PostaKodu], [IlanTarihi], [SonBasvuruTarihi]) VALUES (18, N'Eğitim Uzmanı', N'Şirket içi eğitim programları hazırlayacak ve uygulayacak.', N'Eğitim planlama, sunum', N'Eğitim bilimleri mezunu tercih edilir.', N'Yemek kartı, özel sağlık sigortası', N'35600', CAST(N'2024-10-18' AS Date), CAST(N'2024-11-01' AS Date))
INSERT [dbo].[Ilan] ([ID], [PozisyonAdi], [IsTanimi], [Yetkinlikler], [Tercihen], [SirketImkanlari], [PostaKodu], [IlanTarihi], [SonBasvuruTarihi]) VALUES (19, N'Halkla İlişkiler Uzmanı', N'Şirketin halkla ilişkiler faaliyetlerini yürütecek.', N'İletişim, kriz yönetimi', N'PR deneyimi tercih edilir.', N'Yemek kartı, özel sağlık sigortası', N'35700', CAST(N'2024-07-07' AS Date), CAST(N'2024-08-10' AS Date))
INSERT [dbo].[Ilan] ([ID], [PozisyonAdi], [IsTanimi], [Yetkinlikler], [Tercihen], [SirketImkanlari], [PostaKodu], [IlanTarihi], [SonBasvuruTarihi]) VALUES (20, N'Yazılım Test Uzmanı', N'Yazılım test süreçlerini yürütecek.', N'Test otomasyonu, manuel test', N'ISTQB sertifikası tercih edilir.', N'Yemek kartı, özel sağlık sigortası', N'35800', CAST(N'2024-07-01' AS Date), CAST(N'2024-07-31' AS Date))
INSERT [dbo].[Ilan] ([ID], [PozisyonAdi], [IsTanimi], [Yetkinlikler], [Tercihen], [SirketImkanlari], [PostaKodu], [IlanTarihi], [SonBasvuruTarihi]) VALUES (21, N'Dijital Pazarlama Uzmanı', N'Dijital pazarlama kampanyaları yönetecek.', N'SEO, sosyal medya', N'Google Ads sertifikası tercih edilir.', N'Prim sistemi, esnek çalışma saatleri', N'35900', CAST(N'2024-04-12' AS Date), CAST(N'2024-08-25' AS Date))
INSERT [dbo].[Ilan] ([ID], [PozisyonAdi], [IsTanimi], [Yetkinlikler], [Tercihen], [SirketImkanlari], [PostaKodu], [IlanTarihi], [SonBasvuruTarihi]) VALUES (22, N'Ar-Ge Mühendisi', N'Araştırma ve geliştirme projelerinde görev alacak.', N'Ar-Ge, inovasyon', N'Yüksek lisans tercih edilir.', N'Yemek kartı, özel sağlık sigortası', N'36000', CAST(N'2024-08-15' AS Date), CAST(N'2024-08-30' AS Date))
SET IDENTITY_INSERT [dbo].[Ilan] OFF
GO
SET IDENTITY_INSERT [dbo].[IlanDurumu] ON 

INSERT [dbo].[IlanDurumu] ([ID], [Durum]) VALUES (1, N'Uygun')
INSERT [dbo].[IlanDurumu] ([ID], [Durum]) VALUES (2, N'Askıda')
INSERT [dbo].[IlanDurumu] ([ID], [Durum]) VALUES (3, N'Bitti')
SET IDENTITY_INSERT [dbo].[IlanDurumu] OFF
GO
SET IDENTITY_INSERT [dbo].[IlanKayit] ON 

INSERT [dbo].[IlanKayit] ([ID], [UyelikID], [IlanID]) VALUES (1, 1, 1)
INSERT [dbo].[IlanKayit] ([ID], [UyelikID], [IlanID]) VALUES (2, 1, 2)
INSERT [dbo].[IlanKayit] ([ID], [UyelikID], [IlanID]) VALUES (3, 2, 3)
INSERT [dbo].[IlanKayit] ([ID], [UyelikID], [IlanID]) VALUES (4, 6, 4)
INSERT [dbo].[IlanKayit] ([ID], [UyelikID], [IlanID]) VALUES (5, 6, 5)
INSERT [dbo].[IlanKayit] ([ID], [UyelikID], [IlanID]) VALUES (6, 1, 6)
INSERT [dbo].[IlanKayit] ([ID], [UyelikID], [IlanID]) VALUES (7, 7, 7)
INSERT [dbo].[IlanKayit] ([ID], [UyelikID], [IlanID]) VALUES (8, 8, 8)
INSERT [dbo].[IlanKayit] ([ID], [UyelikID], [IlanID]) VALUES (9, 9, 9)
INSERT [dbo].[IlanKayit] ([ID], [UyelikID], [IlanID]) VALUES (10, 10, 10)
INSERT [dbo].[IlanKayit] ([ID], [UyelikID], [IlanID]) VALUES (11, 10, 11)
INSERT [dbo].[IlanKayit] ([ID], [UyelikID], [IlanID]) VALUES (12, 11, 11)
INSERT [dbo].[IlanKayit] ([ID], [UyelikID], [IlanID]) VALUES (13, 11, 12)
INSERT [dbo].[IlanKayit] ([ID], [UyelikID], [IlanID]) VALUES (14, 12, 12)
INSERT [dbo].[IlanKayit] ([ID], [UyelikID], [IlanID]) VALUES (15, 13, 12)
INSERT [dbo].[IlanKayit] ([ID], [UyelikID], [IlanID]) VALUES (16, 14, 13)
INSERT [dbo].[IlanKayit] ([ID], [UyelikID], [IlanID]) VALUES (17, 15, 14)
INSERT [dbo].[IlanKayit] ([ID], [UyelikID], [IlanID]) VALUES (18, 16, 15)
INSERT [dbo].[IlanKayit] ([ID], [UyelikID], [IlanID]) VALUES (19, 17, 16)
INSERT [dbo].[IlanKayit] ([ID], [UyelikID], [IlanID]) VALUES (20, 18, 17)
INSERT [dbo].[IlanKayit] ([ID], [UyelikID], [IlanID]) VALUES (21, 24, 18)
INSERT [dbo].[IlanKayit] ([ID], [UyelikID], [IlanID]) VALUES (22, 24, 20)
INSERT [dbo].[IlanKayit] ([ID], [UyelikID], [IlanID]) VALUES (23, 24, 4)
INSERT [dbo].[IlanKayit] ([ID], [UyelikID], [IlanID]) VALUES (24, 21, 3)
INSERT [dbo].[IlanKayit] ([ID], [UyelikID], [IlanID]) VALUES (25, 22, 4)
INSERT [dbo].[IlanKayit] ([ID], [UyelikID], [IlanID]) VALUES (26, 23, 8)
INSERT [dbo].[IlanKayit] ([ID], [UyelikID], [IlanID]) VALUES (27, 23, 7)
SET IDENTITY_INSERT [dbo].[IlanKayit] OFF
GO
SET IDENTITY_INSERT [dbo].[IsDeneyimleri] ON 

INSERT [dbo].[IsDeneyimleri] ([ID], [Adi], [Aciklama], [SirketAdi], [BaslangicTarihi], [BitisTarihi], [OzgecmisID]) VALUES (1, N'.NET Uzmanı', N'Bu süreç boyunca, Gazetelerin Seri İlan Departmanlarının İlan alımından baskıya kadar ki, Tüm operasyonel süreçleri için geliştirilmiş yazılım çözümüdü olan Sis2010 Projesinde destek sağladım.', N'OHO TECHNOLOGY', CAST(N'2023-08-05' AS Date), CAST(N'2023-12-18' AS Date), 1)
INSERT [dbo].[IsDeneyimleri] ([ID], [Adi], [Aciklama], [SirketAdi], [BaslangicTarihi], [BitisTarihi], [OzgecmisID]) VALUES (2, N'Junior .NET Geliştiricisi', N'Kendimi geliştirme fırsatını bulduğum Selvi Boylum Al Yazılım şirketinde; ilk senemde yazılım destek uzmanı olarak görev yaptım. İkinci senemde ise Uygulama İçi Kart Entegrasyonu Projesinde Ana Geliştiricisi olarak görev yaptım.', N'Selvi Boylum Al Yazılım', CAST(N'2022-12-12' AS Date), CAST(N'2023-02-02' AS Date), 1)
INSERT [dbo].[IsDeneyimleri] ([ID], [Adi], [Aciklama], [SirketAdi], [BaslangicTarihi], [BitisTarihi], [OzgecmisID]) VALUES (3, N'Junior Front end Geliştiricisi', N'İkinci senemde ise Uygulama İçi Kart Entegrasyonu Projesinde Ana Geliştiricisi olarak görev yaptım', N'deneyim teknoloji', CAST(N'2021-04-05' AS Date), CAST(N'2021-12-09' AS Date), 2)
INSERT [dbo].[IsDeneyimleri] ([ID], [Adi], [Aciklama], [SirketAdi], [BaslangicTarihi], [BitisTarihi], [OzgecmisID]) VALUES (4, N'İş Deneyimi 4', N'Açıklama 1', N'Şirket 1', CAST(N'2022-01-01' AS Date), CAST(N'2022-12-31' AS Date), 4)
INSERT [dbo].[IsDeneyimleri] ([ID], [Adi], [Aciklama], [SirketAdi], [BaslangicTarihi], [BitisTarihi], [OzgecmisID]) VALUES (5, N'İş Deneyimi 5', N'Açıklama 2', N'Şirket 2', CAST(N'2023-03-15' AS Date), CAST(N'2023-09-30' AS Date), 5)
INSERT [dbo].[IsDeneyimleri] ([ID], [Adi], [Aciklama], [SirketAdi], [BaslangicTarihi], [BitisTarihi], [OzgecmisID]) VALUES (6, N'İş Deneyimi 5', N'Açıklama 5', N'Şirket 20', CAST(N'2024-05-10' AS Date), CAST(N'2024-11-30' AS Date), 5)
INSERT [dbo].[IsDeneyimleri] ([ID], [Adi], [Aciklama], [SirketAdi], [BaslangicTarihi], [BitisTarihi], [OzgecmisID]) VALUES (7, N'İş Deneyimi 6', N'Açıklama 1', N'Şirket 1', CAST(N'2022-01-01' AS Date), CAST(N'2022-12-31' AS Date), 6)
INSERT [dbo].[IsDeneyimleri] ([ID], [Adi], [Aciklama], [SirketAdi], [BaslangicTarihi], [BitisTarihi], [OzgecmisID]) VALUES (8, N'İş Deneyimi 7', N'Açıklama 2', N'Şirket 2', CAST(N'2023-03-15' AS Date), CAST(N'2023-09-30' AS Date), 7)
INSERT [dbo].[IsDeneyimleri] ([ID], [Adi], [Aciklama], [SirketAdi], [BaslangicTarihi], [BitisTarihi], [OzgecmisID]) VALUES (9, N'İş Deneyimi 8', N'Açıklama 20', N'Şirket 20', CAST(N'2024-05-10' AS Date), CAST(N'2024-11-30' AS Date), 8)
INSERT [dbo].[IsDeneyimleri] ([ID], [Adi], [Aciklama], [SirketAdi], [BaslangicTarihi], [BitisTarihi], [OzgecmisID]) VALUES (10, N'İş Deneyimi 9', N'Açıklama 1', N'Şirket 1', CAST(N'2022-01-01' AS Date), CAST(N'2022-12-31' AS Date), 9)
INSERT [dbo].[IsDeneyimleri] ([ID], [Adi], [Aciklama], [SirketAdi], [BaslangicTarihi], [BitisTarihi], [OzgecmisID]) VALUES (11, N'İş Deneyimi 10', N'Açıklama 2', N'Şirket 2', CAST(N'2023-03-15' AS Date), CAST(N'2023-09-30' AS Date), 10)
INSERT [dbo].[IsDeneyimleri] ([ID], [Adi], [Aciklama], [SirketAdi], [BaslangicTarihi], [BitisTarihi], [OzgecmisID]) VALUES (12, N'İş Deneyimi 10', N'Açıklama 20', N'Şirket 20', CAST(N'2024-05-10' AS Date), CAST(N'2024-11-30' AS Date), 10)
INSERT [dbo].[IsDeneyimleri] ([ID], [Adi], [Aciklama], [SirketAdi], [BaslangicTarihi], [BitisTarihi], [OzgecmisID]) VALUES (13, N'İş Deneyimi 11', N'Açıklama 11', N'Şirket 1', CAST(N'2022-01-01' AS Date), CAST(N'2022-12-31' AS Date), 11)
INSERT [dbo].[IsDeneyimleri] ([ID], [Adi], [Aciklama], [SirketAdi], [BaslangicTarihi], [BitisTarihi], [OzgecmisID]) VALUES (14, N'İş Deneyimi 12', N'Açıklama 2', N'Şirket 2', CAST(N'2023-03-15' AS Date), CAST(N'2023-09-30' AS Date), 12)
INSERT [dbo].[IsDeneyimleri] ([ID], [Adi], [Aciklama], [SirketAdi], [BaslangicTarihi], [BitisTarihi], [OzgecmisID]) VALUES (15, N'İş Deneyimi 13', N'Açıklama 20', N'Şirket 20', CAST(N'2024-05-10' AS Date), CAST(N'2024-11-30' AS Date), 13)
INSERT [dbo].[IsDeneyimleri] ([ID], [Adi], [Aciklama], [SirketAdi], [BaslangicTarihi], [BitisTarihi], [OzgecmisID]) VALUES (16, N'İş Deneyimi 13', N'Açıklama 1', N'Şirket 1', CAST(N'2022-01-01' AS Date), CAST(N'2022-12-31' AS Date), 13)
INSERT [dbo].[IsDeneyimleri] ([ID], [Adi], [Aciklama], [SirketAdi], [BaslangicTarihi], [BitisTarihi], [OzgecmisID]) VALUES (17, N'İş Deneyimi 14', N'Açıklama 2', N'Şirket 2', CAST(N'2023-03-15' AS Date), CAST(N'2023-09-30' AS Date), 14)
INSERT [dbo].[IsDeneyimleri] ([ID], [Adi], [Aciklama], [SirketAdi], [BaslangicTarihi], [BitisTarihi], [OzgecmisID]) VALUES (18, N'İş Deneyimi 15', N'Açıklama 20', N'Şirket 20', CAST(N'2024-05-10' AS Date), CAST(N'2024-11-30' AS Date), 15)
INSERT [dbo].[IsDeneyimleri] ([ID], [Adi], [Aciklama], [SirketAdi], [BaslangicTarihi], [BitisTarihi], [OzgecmisID]) VALUES (19, N'İş Deneyimi 16', N'Açıklama 16', N'Şirket 1', CAST(N'2022-01-01' AS Date), CAST(N'2022-12-31' AS Date), 16)
INSERT [dbo].[IsDeneyimleri] ([ID], [Adi], [Aciklama], [SirketAdi], [BaslangicTarihi], [BitisTarihi], [OzgecmisID]) VALUES (20, N'İş Deneyimi 17', N'Açıklama 2', N'Şirket 2', CAST(N'2023-03-15' AS Date), CAST(N'2023-09-30' AS Date), 17)
INSERT [dbo].[IsDeneyimleri] ([ID], [Adi], [Aciklama], [SirketAdi], [BaslangicTarihi], [BitisTarihi], [OzgecmisID]) VALUES (21, N'İş Deneyimi 18', N'Açıklama 20', N'Şirket 20', CAST(N'2024-05-10' AS Date), CAST(N'2024-11-30' AS Date), 18)
INSERT [dbo].[IsDeneyimleri] ([ID], [Adi], [Aciklama], [SirketAdi], [BaslangicTarihi], [BitisTarihi], [OzgecmisID]) VALUES (22, N'İş Deneyimi 19', N'Açıklama 19', N'Şirket 1', CAST(N'2022-01-01' AS Date), CAST(N'2022-12-31' AS Date), 19)
INSERT [dbo].[IsDeneyimleri] ([ID], [Adi], [Aciklama], [SirketAdi], [BaslangicTarihi], [BitisTarihi], [OzgecmisID]) VALUES (23, N'İş Deneyimi 19', N'Açıklama 2', N'Şirket 2', CAST(N'2023-03-15' AS Date), CAST(N'2023-09-30' AS Date), 19)
INSERT [dbo].[IsDeneyimleri] ([ID], [Adi], [Aciklama], [SirketAdi], [BaslangicTarihi], [BitisTarihi], [OzgecmisID]) VALUES (24, N'İş Deneyimi 19', N'Açıklama 20', N'Şirket 20', CAST(N'2024-05-10' AS Date), CAST(N'2024-11-30' AS Date), 19)
INSERT [dbo].[IsDeneyimleri] ([ID], [Adi], [Aciklama], [SirketAdi], [BaslangicTarihi], [BitisTarihi], [OzgecmisID]) VALUES (25, N'İş Deneyimi 20', N'Açıklama 1', N'Şirket 1', CAST(N'2022-01-01' AS Date), CAST(N'2022-12-31' AS Date), 20)
INSERT [dbo].[IsDeneyimleri] ([ID], [Adi], [Aciklama], [SirketAdi], [BaslangicTarihi], [BitisTarihi], [OzgecmisID]) VALUES (26, N'İş Deneyimi 20', N'Açıklama 2', N'Şirket 2', CAST(N'2023-03-15' AS Date), CAST(N'2023-09-30' AS Date), 20)
INSERT [dbo].[IsDeneyimleri] ([ID], [Adi], [Aciklama], [SirketAdi], [BaslangicTarihi], [BitisTarihi], [OzgecmisID]) VALUES (27, N'İş Deneyimi 22', N'Açıklama 20', N'Şirket 20', CAST(N'2024-05-10' AS Date), CAST(N'2024-11-30' AS Date), 21)
INSERT [dbo].[IsDeneyimleri] ([ID], [Adi], [Aciklama], [SirketAdi], [BaslangicTarihi], [BitisTarihi], [OzgecmisID]) VALUES (28, N'İş Deneyimi 21', N'Açıklama 21', N'Şirket 1', CAST(N'2022-01-01' AS Date), CAST(N'2022-12-31' AS Date), 21)
INSERT [dbo].[IsDeneyimleri] ([ID], [Adi], [Aciklama], [SirketAdi], [BaslangicTarihi], [BitisTarihi], [OzgecmisID]) VALUES (29, N'İş Deneyimi 22', N'Açıklama 2', N'Şirket 2', CAST(N'2023-03-15' AS Date), CAST(N'2023-09-30' AS Date), 22)
INSERT [dbo].[IsDeneyimleri] ([ID], [Adi], [Aciklama], [SirketAdi], [BaslangicTarihi], [BitisTarihi], [OzgecmisID]) VALUES (30, N'İş Deneyimi 22', N'Açıklama 20', N'Şirket 20', CAST(N'2024-05-10' AS Date), CAST(N'2024-11-30' AS Date), 22)
INSERT [dbo].[IsDeneyimleri] ([ID], [Adi], [Aciklama], [SirketAdi], [BaslangicTarihi], [BitisTarihi], [OzgecmisID]) VALUES (31, N'Senior .net', N'açıklamalar', N'falanca sirket', CAST(N'2024-05-10' AS Date), CAST(N'2024-11-30' AS Date), 3)
SET IDENTITY_INSERT [dbo].[IsDeneyimleri] OFF
GO
SET IDENTITY_INSERT [dbo].[IsIlaniCalismaSekli] ON 

INSERT [dbo].[IsIlaniCalismaSekli] ([ID], [CalismaSekliID], [IlanID]) VALUES (1, 1, 1)
INSERT [dbo].[IsIlaniCalismaSekli] ([ID], [CalismaSekliID], [IlanID]) VALUES (2, 4, 1)
INSERT [dbo].[IsIlaniCalismaSekli] ([ID], [CalismaSekliID], [IlanID]) VALUES (4, 5, 2)
INSERT [dbo].[IsIlaniCalismaSekli] ([ID], [CalismaSekliID], [IlanID]) VALUES (5, 1, 3)
INSERT [dbo].[IsIlaniCalismaSekli] ([ID], [CalismaSekliID], [IlanID]) VALUES (6, 1, 4)
INSERT [dbo].[IsIlaniCalismaSekli] ([ID], [CalismaSekliID], [IlanID]) VALUES (7, 4, 4)
INSERT [dbo].[IsIlaniCalismaSekli] ([ID], [CalismaSekliID], [IlanID]) VALUES (8, 4, 5)
INSERT [dbo].[IsIlaniCalismaSekli] ([ID], [CalismaSekliID], [IlanID]) VALUES (9, 2, 6)
INSERT [dbo].[IsIlaniCalismaSekli] ([ID], [CalismaSekliID], [IlanID]) VALUES (10, 3, 7)
INSERT [dbo].[IsIlaniCalismaSekli] ([ID], [CalismaSekliID], [IlanID]) VALUES (11, 3, 8)
INSERT [dbo].[IsIlaniCalismaSekli] ([ID], [CalismaSekliID], [IlanID]) VALUES (12, 1, 9)
INSERT [dbo].[IsIlaniCalismaSekli] ([ID], [CalismaSekliID], [IlanID]) VALUES (13, 2, 9)
INSERT [dbo].[IsIlaniCalismaSekli] ([ID], [CalismaSekliID], [IlanID]) VALUES (14, 5, 10)
INSERT [dbo].[IsIlaniCalismaSekli] ([ID], [CalismaSekliID], [IlanID]) VALUES (15, 2, 11)
INSERT [dbo].[IsIlaniCalismaSekli] ([ID], [CalismaSekliID], [IlanID]) VALUES (16, 1, 12)
INSERT [dbo].[IsIlaniCalismaSekli] ([ID], [CalismaSekliID], [IlanID]) VALUES (17, 2, 12)
INSERT [dbo].[IsIlaniCalismaSekli] ([ID], [CalismaSekliID], [IlanID]) VALUES (18, 5, 13)
INSERT [dbo].[IsIlaniCalismaSekli] ([ID], [CalismaSekliID], [IlanID]) VALUES (19, 5, 14)
INSERT [dbo].[IsIlaniCalismaSekli] ([ID], [CalismaSekliID], [IlanID]) VALUES (20, 5, 15)
INSERT [dbo].[IsIlaniCalismaSekli] ([ID], [CalismaSekliID], [IlanID]) VALUES (21, 5, 16)
INSERT [dbo].[IsIlaniCalismaSekli] ([ID], [CalismaSekliID], [IlanID]) VALUES (22, 2, 16)
INSERT [dbo].[IsIlaniCalismaSekli] ([ID], [CalismaSekliID], [IlanID]) VALUES (23, 1, 17)
INSERT [dbo].[IsIlaniCalismaSekli] ([ID], [CalismaSekliID], [IlanID]) VALUES (24, 4, 17)
INSERT [dbo].[IsIlaniCalismaSekli] ([ID], [CalismaSekliID], [IlanID]) VALUES (25, 2, 18)
INSERT [dbo].[IsIlaniCalismaSekli] ([ID], [CalismaSekliID], [IlanID]) VALUES (26, 2, 19)
INSERT [dbo].[IsIlaniCalismaSekli] ([ID], [CalismaSekliID], [IlanID]) VALUES (27, 2, 20)
INSERT [dbo].[IsIlaniCalismaSekli] ([ID], [CalismaSekliID], [IlanID]) VALUES (28, 1, 21)
INSERT [dbo].[IsIlaniCalismaSekli] ([ID], [CalismaSekliID], [IlanID]) VALUES (29, 5, 22)
SET IDENTITY_INSERT [dbo].[IsIlaniCalismaSekli] OFF
GO
SET IDENTITY_INSERT [dbo].[IsIlaniCinsiyet] ON 

INSERT [dbo].[IsIlaniCinsiyet] ([ID], [CinsiyetID], [IlanID]) VALUES (1, 1, 1)
INSERT [dbo].[IsIlaniCinsiyet] ([ID], [CinsiyetID], [IlanID]) VALUES (2, 2, 1)
INSERT [dbo].[IsIlaniCinsiyet] ([ID], [CinsiyetID], [IlanID]) VALUES (3, 1, 2)
INSERT [dbo].[IsIlaniCinsiyet] ([ID], [CinsiyetID], [IlanID]) VALUES (4, 2, 2)
INSERT [dbo].[IsIlaniCinsiyet] ([ID], [CinsiyetID], [IlanID]) VALUES (5, 1, 3)
INSERT [dbo].[IsIlaniCinsiyet] ([ID], [CinsiyetID], [IlanID]) VALUES (6, 1, 4)
INSERT [dbo].[IsIlaniCinsiyet] ([ID], [CinsiyetID], [IlanID]) VALUES (7, 1, 5)
INSERT [dbo].[IsIlaniCinsiyet] ([ID], [CinsiyetID], [IlanID]) VALUES (8, 1, 6)
INSERT [dbo].[IsIlaniCinsiyet] ([ID], [CinsiyetID], [IlanID]) VALUES (9, 1, 7)
INSERT [dbo].[IsIlaniCinsiyet] ([ID], [CinsiyetID], [IlanID]) VALUES (10, 1, 8)
INSERT [dbo].[IsIlaniCinsiyet] ([ID], [CinsiyetID], [IlanID]) VALUES (11, 1, 9)
INSERT [dbo].[IsIlaniCinsiyet] ([ID], [CinsiyetID], [IlanID]) VALUES (12, 1, 10)
INSERT [dbo].[IsIlaniCinsiyet] ([ID], [CinsiyetID], [IlanID]) VALUES (13, 1, 11)
INSERT [dbo].[IsIlaniCinsiyet] ([ID], [CinsiyetID], [IlanID]) VALUES (14, 1, 12)
INSERT [dbo].[IsIlaniCinsiyet] ([ID], [CinsiyetID], [IlanID]) VALUES (15, 1, 13)
INSERT [dbo].[IsIlaniCinsiyet] ([ID], [CinsiyetID], [IlanID]) VALUES (16, 1, 14)
INSERT [dbo].[IsIlaniCinsiyet] ([ID], [CinsiyetID], [IlanID]) VALUES (17, 1, 15)
INSERT [dbo].[IsIlaniCinsiyet] ([ID], [CinsiyetID], [IlanID]) VALUES (18, 1, 16)
INSERT [dbo].[IsIlaniCinsiyet] ([ID], [CinsiyetID], [IlanID]) VALUES (19, 1, 17)
INSERT [dbo].[IsIlaniCinsiyet] ([ID], [CinsiyetID], [IlanID]) VALUES (20, 1, 18)
INSERT [dbo].[IsIlaniCinsiyet] ([ID], [CinsiyetID], [IlanID]) VALUES (21, 1, 19)
INSERT [dbo].[IsIlaniCinsiyet] ([ID], [CinsiyetID], [IlanID]) VALUES (22, 1, 20)
INSERT [dbo].[IsIlaniCinsiyet] ([ID], [CinsiyetID], [IlanID]) VALUES (23, 1, 21)
INSERT [dbo].[IsIlaniCinsiyet] ([ID], [CinsiyetID], [IlanID]) VALUES (24, 1, 22)
INSERT [dbo].[IsIlaniCinsiyet] ([ID], [CinsiyetID], [IlanID]) VALUES (25, 2, 3)
INSERT [dbo].[IsIlaniCinsiyet] ([ID], [CinsiyetID], [IlanID]) VALUES (26, 2, 4)
INSERT [dbo].[IsIlaniCinsiyet] ([ID], [CinsiyetID], [IlanID]) VALUES (27, 2, 6)
INSERT [dbo].[IsIlaniCinsiyet] ([ID], [CinsiyetID], [IlanID]) VALUES (28, 2, 5)
INSERT [dbo].[IsIlaniCinsiyet] ([ID], [CinsiyetID], [IlanID]) VALUES (29, 2, 7)
INSERT [dbo].[IsIlaniCinsiyet] ([ID], [CinsiyetID], [IlanID]) VALUES (30, 2, 8)
INSERT [dbo].[IsIlaniCinsiyet] ([ID], [CinsiyetID], [IlanID]) VALUES (31, 2, 9)
INSERT [dbo].[IsIlaniCinsiyet] ([ID], [CinsiyetID], [IlanID]) VALUES (32, 2, 10)
INSERT [dbo].[IsIlaniCinsiyet] ([ID], [CinsiyetID], [IlanID]) VALUES (33, 2, 11)
INSERT [dbo].[IsIlaniCinsiyet] ([ID], [CinsiyetID], [IlanID]) VALUES (34, 2, 12)
INSERT [dbo].[IsIlaniCinsiyet] ([ID], [CinsiyetID], [IlanID]) VALUES (35, 2, 13)
INSERT [dbo].[IsIlaniCinsiyet] ([ID], [CinsiyetID], [IlanID]) VALUES (36, 2, 14)
INSERT [dbo].[IsIlaniCinsiyet] ([ID], [CinsiyetID], [IlanID]) VALUES (37, 2, 15)
INSERT [dbo].[IsIlaniCinsiyet] ([ID], [CinsiyetID], [IlanID]) VALUES (38, 2, 16)
INSERT [dbo].[IsIlaniCinsiyet] ([ID], [CinsiyetID], [IlanID]) VALUES (39, 2, 17)
INSERT [dbo].[IsIlaniCinsiyet] ([ID], [CinsiyetID], [IlanID]) VALUES (40, 2, 18)
INSERT [dbo].[IsIlaniCinsiyet] ([ID], [CinsiyetID], [IlanID]) VALUES (41, 2, 19)
INSERT [dbo].[IsIlaniCinsiyet] ([ID], [CinsiyetID], [IlanID]) VALUES (42, 2, 20)
INSERT [dbo].[IsIlaniCinsiyet] ([ID], [CinsiyetID], [IlanID]) VALUES (43, 2, 21)
INSERT [dbo].[IsIlaniCinsiyet] ([ID], [CinsiyetID], [IlanID]) VALUES (44, 2, 22)
SET IDENTITY_INSERT [dbo].[IsIlaniCinsiyet] OFF
GO
SET IDENTITY_INSERT [dbo].[IsIlaniDurum] ON 

INSERT [dbo].[IsIlaniDurum] ([ID], [IlanID], [DurumID]) VALUES (1, 1, 1)
INSERT [dbo].[IsIlaniDurum] ([ID], [IlanID], [DurumID]) VALUES (2, 2, 2)
INSERT [dbo].[IsIlaniDurum] ([ID], [IlanID], [DurumID]) VALUES (3, 3, 1)
INSERT [dbo].[IsIlaniDurum] ([ID], [IlanID], [DurumID]) VALUES (4, 4, 1)
INSERT [dbo].[IsIlaniDurum] ([ID], [IlanID], [DurumID]) VALUES (5, 5, 1)
INSERT [dbo].[IsIlaniDurum] ([ID], [IlanID], [DurumID]) VALUES (6, 6, 1)
INSERT [dbo].[IsIlaniDurum] ([ID], [IlanID], [DurumID]) VALUES (7, 7, 1)
INSERT [dbo].[IsIlaniDurum] ([ID], [IlanID], [DurumID]) VALUES (8, 8, 1)
INSERT [dbo].[IsIlaniDurum] ([ID], [IlanID], [DurumID]) VALUES (9, 9, 1)
INSERT [dbo].[IsIlaniDurum] ([ID], [IlanID], [DurumID]) VALUES (10, 10, 1)
INSERT [dbo].[IsIlaniDurum] ([ID], [IlanID], [DurumID]) VALUES (11, 11, 2)
INSERT [dbo].[IsIlaniDurum] ([ID], [IlanID], [DurumID]) VALUES (12, 12, 2)
INSERT [dbo].[IsIlaniDurum] ([ID], [IlanID], [DurumID]) VALUES (13, 13, 1)
INSERT [dbo].[IsIlaniDurum] ([ID], [IlanID], [DurumID]) VALUES (14, 14, 2)
INSERT [dbo].[IsIlaniDurum] ([ID], [IlanID], [DurumID]) VALUES (15, 15, 3)
INSERT [dbo].[IsIlaniDurum] ([ID], [IlanID], [DurumID]) VALUES (16, 16, 2)
INSERT [dbo].[IsIlaniDurum] ([ID], [IlanID], [DurumID]) VALUES (17, 17, 2)
INSERT [dbo].[IsIlaniDurum] ([ID], [IlanID], [DurumID]) VALUES (18, 18, 2)
INSERT [dbo].[IsIlaniDurum] ([ID], [IlanID], [DurumID]) VALUES (19, 19, 2)
INSERT [dbo].[IsIlaniDurum] ([ID], [IlanID], [DurumID]) VALUES (20, 20, 2)
INSERT [dbo].[IsIlaniDurum] ([ID], [IlanID], [DurumID]) VALUES (21, 21, 1)
INSERT [dbo].[IsIlaniDurum] ([ID], [IlanID], [DurumID]) VALUES (22, 22, 1)
SET IDENTITY_INSERT [dbo].[IsIlaniDurum] OFF
GO
SET IDENTITY_INSERT [dbo].[IsIlaniMezuniyet] ON 

INSERT [dbo].[IsIlaniMezuniyet] ([ID], [MezuniyetID], [IlanID]) VALUES (1, 2, 1)
INSERT [dbo].[IsIlaniMezuniyet] ([ID], [MezuniyetID], [IlanID]) VALUES (2, 3, 1)
INSERT [dbo].[IsIlaniMezuniyet] ([ID], [MezuniyetID], [IlanID]) VALUES (3, 4, 1)
INSERT [dbo].[IsIlaniMezuniyet] ([ID], [MezuniyetID], [IlanID]) VALUES (4, 1, 2)
INSERT [dbo].[IsIlaniMezuniyet] ([ID], [MezuniyetID], [IlanID]) VALUES (5, 2, 2)
INSERT [dbo].[IsIlaniMezuniyet] ([ID], [MezuniyetID], [IlanID]) VALUES (6, 3, 2)
INSERT [dbo].[IsIlaniMezuniyet] ([ID], [MezuniyetID], [IlanID]) VALUES (7, 4, 2)
INSERT [dbo].[IsIlaniMezuniyet] ([ID], [MezuniyetID], [IlanID]) VALUES (8, 2, 3)
INSERT [dbo].[IsIlaniMezuniyet] ([ID], [MezuniyetID], [IlanID]) VALUES (9, 3, 3)
INSERT [dbo].[IsIlaniMezuniyet] ([ID], [MezuniyetID], [IlanID]) VALUES (10, 4, 3)
INSERT [dbo].[IsIlaniMezuniyet] ([ID], [MezuniyetID], [IlanID]) VALUES (11, 3, 4)
INSERT [dbo].[IsIlaniMezuniyet] ([ID], [MezuniyetID], [IlanID]) VALUES (12, 4, 4)
INSERT [dbo].[IsIlaniMezuniyet] ([ID], [MezuniyetID], [IlanID]) VALUES (13, 3, 5)
INSERT [dbo].[IsIlaniMezuniyet] ([ID], [MezuniyetID], [IlanID]) VALUES (14, 4, 5)
INSERT [dbo].[IsIlaniMezuniyet] ([ID], [MezuniyetID], [IlanID]) VALUES (15, 4, 6)
INSERT [dbo].[IsIlaniMezuniyet] ([ID], [MezuniyetID], [IlanID]) VALUES (16, 3, 7)
INSERT [dbo].[IsIlaniMezuniyet] ([ID], [MezuniyetID], [IlanID]) VALUES (17, 3, 8)
INSERT [dbo].[IsIlaniMezuniyet] ([ID], [MezuniyetID], [IlanID]) VALUES (18, 3, 9)
INSERT [dbo].[IsIlaniMezuniyet] ([ID], [MezuniyetID], [IlanID]) VALUES (19, 3, 10)
INSERT [dbo].[IsIlaniMezuniyet] ([ID], [MezuniyetID], [IlanID]) VALUES (20, 4, 10)
INSERT [dbo].[IsIlaniMezuniyet] ([ID], [MezuniyetID], [IlanID]) VALUES (21, 4, 11)
INSERT [dbo].[IsIlaniMezuniyet] ([ID], [MezuniyetID], [IlanID]) VALUES (22, 3, 12)
INSERT [dbo].[IsIlaniMezuniyet] ([ID], [MezuniyetID], [IlanID]) VALUES (23, 3, 13)
INSERT [dbo].[IsIlaniMezuniyet] ([ID], [MezuniyetID], [IlanID]) VALUES (24, 3, 14)
INSERT [dbo].[IsIlaniMezuniyet] ([ID], [MezuniyetID], [IlanID]) VALUES (25, 4, 14)
INSERT [dbo].[IsIlaniMezuniyet] ([ID], [MezuniyetID], [IlanID]) VALUES (26, 3, 15)
INSERT [dbo].[IsIlaniMezuniyet] ([ID], [MezuniyetID], [IlanID]) VALUES (27, 3, 16)
INSERT [dbo].[IsIlaniMezuniyet] ([ID], [MezuniyetID], [IlanID]) VALUES (28, 3, 17)
INSERT [dbo].[IsIlaniMezuniyet] ([ID], [MezuniyetID], [IlanID]) VALUES (29, 3, 18)
INSERT [dbo].[IsIlaniMezuniyet] ([ID], [MezuniyetID], [IlanID]) VALUES (30, 4, 19)
INSERT [dbo].[IsIlaniMezuniyet] ([ID], [MezuniyetID], [IlanID]) VALUES (31, 3, 20)
INSERT [dbo].[IsIlaniMezuniyet] ([ID], [MezuniyetID], [IlanID]) VALUES (32, 4, 20)
INSERT [dbo].[IsIlaniMezuniyet] ([ID], [MezuniyetID], [IlanID]) VALUES (33, 3, 21)
INSERT [dbo].[IsIlaniMezuniyet] ([ID], [MezuniyetID], [IlanID]) VALUES (34, 3, 22)
INSERT [dbo].[IsIlaniMezuniyet] ([ID], [MezuniyetID], [IlanID]) VALUES (35, 4, 22)
SET IDENTITY_INSERT [dbo].[IsIlaniMezuniyet] OFF
GO
SET IDENTITY_INSERT [dbo].[IsIlaniSehirler] ON 

INSERT [dbo].[IsIlaniSehirler] ([ID], [SehirID], [IlanID]) VALUES (4, 34, 1)
INSERT [dbo].[IsIlaniSehirler] ([ID], [SehirID], [IlanID]) VALUES (6, 35, 1)
INSERT [dbo].[IsIlaniSehirler] ([ID], [SehirID], [IlanID]) VALUES (7, 37, 2)
INSERT [dbo].[IsIlaniSehirler] ([ID], [SehirID], [IlanID]) VALUES (8, 34, 2)
INSERT [dbo].[IsIlaniSehirler] ([ID], [SehirID], [IlanID]) VALUES (9, 34, 3)
INSERT [dbo].[IsIlaniSehirler] ([ID], [SehirID], [IlanID]) VALUES (10, 34, 4)
INSERT [dbo].[IsIlaniSehirler] ([ID], [SehirID], [IlanID]) VALUES (11, 35, 5)
INSERT [dbo].[IsIlaniSehirler] ([ID], [SehirID], [IlanID]) VALUES (12, 37, 6)
INSERT [dbo].[IsIlaniSehirler] ([ID], [SehirID], [IlanID]) VALUES (13, 6, 7)
INSERT [dbo].[IsIlaniSehirler] ([ID], [SehirID], [IlanID]) VALUES (14, 34, 8)
INSERT [dbo].[IsIlaniSehirler] ([ID], [SehirID], [IlanID]) VALUES (15, 34, 9)
INSERT [dbo].[IsIlaniSehirler] ([ID], [SehirID], [IlanID]) VALUES (16, 6, 10)
INSERT [dbo].[IsIlaniSehirler] ([ID], [SehirID], [IlanID]) VALUES (17, 6, 11)
INSERT [dbo].[IsIlaniSehirler] ([ID], [SehirID], [IlanID]) VALUES (18, 6, 12)
INSERT [dbo].[IsIlaniSehirler] ([ID], [SehirID], [IlanID]) VALUES (19, 41, 13)
INSERT [dbo].[IsIlaniSehirler] ([ID], [SehirID], [IlanID]) VALUES (20, 41, 14)
INSERT [dbo].[IsIlaniSehirler] ([ID], [SehirID], [IlanID]) VALUES (21, 34, 15)
INSERT [dbo].[IsIlaniSehirler] ([ID], [SehirID], [IlanID]) VALUES (22, 41, 16)
INSERT [dbo].[IsIlaniSehirler] ([ID], [SehirID], [IlanID]) VALUES (23, 35, 17)
INSERT [dbo].[IsIlaniSehirler] ([ID], [SehirID], [IlanID]) VALUES (24, 35, 18)
INSERT [dbo].[IsIlaniSehirler] ([ID], [SehirID], [IlanID]) VALUES (25, 41, 19)
INSERT [dbo].[IsIlaniSehirler] ([ID], [SehirID], [IlanID]) VALUES (26, 37, 20)
INSERT [dbo].[IsIlaniSehirler] ([ID], [SehirID], [IlanID]) VALUES (27, 37, 21)
INSERT [dbo].[IsIlaniSehirler] ([ID], [SehirID], [IlanID]) VALUES (28, 41, 22)
INSERT [dbo].[IsIlaniSehirler] ([ID], [SehirID], [IlanID]) VALUES (29, 35, 12)
INSERT [dbo].[IsIlaniSehirler] ([ID], [SehirID], [IlanID]) VALUES (30, 34, 13)
INSERT [dbo].[IsIlaniSehirler] ([ID], [SehirID], [IlanID]) VALUES (31, 34, 16)
INSERT [dbo].[IsIlaniSehirler] ([ID], [SehirID], [IlanID]) VALUES (32, 34, 18)
INSERT [dbo].[IsIlaniSehirler] ([ID], [SehirID], [IlanID]) VALUES (33, 34, 19)
INSERT [dbo].[IsIlaniSehirler] ([ID], [SehirID], [IlanID]) VALUES (34, 34, 17)
INSERT [dbo].[IsIlaniSehirler] ([ID], [SehirID], [IlanID]) VALUES (35, 37, 11)
INSERT [dbo].[IsIlaniSehirler] ([ID], [SehirID], [IlanID]) VALUES (36, 35, 8)
SET IDENTITY_INSERT [dbo].[IsIlaniSehirler] OFF
GO
SET IDENTITY_INSERT [dbo].[IsIlaniSektor] ON 

INSERT [dbo].[IsIlaniSektor] ([ID], [SektorID], [IlanID]) VALUES (1, 1, 1)
INSERT [dbo].[IsIlaniSektor] ([ID], [SektorID], [IlanID]) VALUES (2, 1, 2)
INSERT [dbo].[IsIlaniSektor] ([ID], [SektorID], [IlanID]) VALUES (3, 3, 2)
INSERT [dbo].[IsIlaniSektor] ([ID], [SektorID], [IlanID]) VALUES (4, 1, 3)
INSERT [dbo].[IsIlaniSektor] ([ID], [SektorID], [IlanID]) VALUES (5, 3, 4)
INSERT [dbo].[IsIlaniSektor] ([ID], [SektorID], [IlanID]) VALUES (6, 4, 5)
INSERT [dbo].[IsIlaniSektor] ([ID], [SektorID], [IlanID]) VALUES (7, 1, 6)
INSERT [dbo].[IsIlaniSektor] ([ID], [SektorID], [IlanID]) VALUES (8, 1, 7)
INSERT [dbo].[IsIlaniSektor] ([ID], [SektorID], [IlanID]) VALUES (9, 1, 8)
INSERT [dbo].[IsIlaniSektor] ([ID], [SektorID], [IlanID]) VALUES (10, 5, 9)
INSERT [dbo].[IsIlaniSektor] ([ID], [SektorID], [IlanID]) VALUES (11, 1, 10)
INSERT [dbo].[IsIlaniSektor] ([ID], [SektorID], [IlanID]) VALUES (12, 1, 11)
INSERT [dbo].[IsIlaniSektor] ([ID], [SektorID], [IlanID]) VALUES (13, 1, 12)
INSERT [dbo].[IsIlaniSektor] ([ID], [SektorID], [IlanID]) VALUES (14, 6, 13)
INSERT [dbo].[IsIlaniSektor] ([ID], [SektorID], [IlanID]) VALUES (15, 4, 14)
INSERT [dbo].[IsIlaniSektor] ([ID], [SektorID], [IlanID]) VALUES (16, 1, 15)
INSERT [dbo].[IsIlaniSektor] ([ID], [SektorID], [IlanID]) VALUES (17, 2, 16)
INSERT [dbo].[IsIlaniSektor] ([ID], [SektorID], [IlanID]) VALUES (18, 2, 17)
INSERT [dbo].[IsIlaniSektor] ([ID], [SektorID], [IlanID]) VALUES (19, 1, 18)
INSERT [dbo].[IsIlaniSektor] ([ID], [SektorID], [IlanID]) VALUES (20, 4, 19)
INSERT [dbo].[IsIlaniSektor] ([ID], [SektorID], [IlanID]) VALUES (21, 1, 20)
INSERT [dbo].[IsIlaniSektor] ([ID], [SektorID], [IlanID]) VALUES (22, 1, 21)
INSERT [dbo].[IsIlaniSektor] ([ID], [SektorID], [IlanID]) VALUES (23, 1, 22)
INSERT [dbo].[IsIlaniSektor] ([ID], [SektorID], [IlanID]) VALUES (24, 3, 8)
INSERT [dbo].[IsIlaniSektor] ([ID], [SektorID], [IlanID]) VALUES (25, 6, 9)
INSERT [dbo].[IsIlaniSektor] ([ID], [SektorID], [IlanID]) VALUES (26, 4, 10)
INSERT [dbo].[IsIlaniSektor] ([ID], [SektorID], [IlanID]) VALUES (27, 5, 11)
INSERT [dbo].[IsIlaniSektor] ([ID], [SektorID], [IlanID]) VALUES (28, 4, 12)
INSERT [dbo].[IsIlaniSektor] ([ID], [SektorID], [IlanID]) VALUES (29, 1, 13)
INSERT [dbo].[IsIlaniSektor] ([ID], [SektorID], [IlanID]) VALUES (30, 3, 15)
INSERT [dbo].[IsIlaniSektor] ([ID], [SektorID], [IlanID]) VALUES (31, 4, 18)
SET IDENTITY_INSERT [dbo].[IsIlaniSektor] OFF
GO
SET IDENTITY_INSERT [dbo].[IsIlaniUlke] ON 

INSERT [dbo].[IsIlaniUlke] ([ID], [UlkelerID], [IlanID]) VALUES (1, 1, 1)
INSERT [dbo].[IsIlaniUlke] ([ID], [UlkelerID], [IlanID]) VALUES (2, 2, 1)
INSERT [dbo].[IsIlaniUlke] ([ID], [UlkelerID], [IlanID]) VALUES (3, 1, 2)
INSERT [dbo].[IsIlaniUlke] ([ID], [UlkelerID], [IlanID]) VALUES (4, 3, 2)
INSERT [dbo].[IsIlaniUlke] ([ID], [UlkelerID], [IlanID]) VALUES (5, 1, 3)
INSERT [dbo].[IsIlaniUlke] ([ID], [UlkelerID], [IlanID]) VALUES (6, 1, 4)
INSERT [dbo].[IsIlaniUlke] ([ID], [UlkelerID], [IlanID]) VALUES (7, 1, 5)
INSERT [dbo].[IsIlaniUlke] ([ID], [UlkelerID], [IlanID]) VALUES (8, 1, 6)
INSERT [dbo].[IsIlaniUlke] ([ID], [UlkelerID], [IlanID]) VALUES (9, 1, 7)
INSERT [dbo].[IsIlaniUlke] ([ID], [UlkelerID], [IlanID]) VALUES (10, 1, 8)
INSERT [dbo].[IsIlaniUlke] ([ID], [UlkelerID], [IlanID]) VALUES (11, 1, 9)
INSERT [dbo].[IsIlaniUlke] ([ID], [UlkelerID], [IlanID]) VALUES (12, 1, 10)
INSERT [dbo].[IsIlaniUlke] ([ID], [UlkelerID], [IlanID]) VALUES (13, 1, 11)
INSERT [dbo].[IsIlaniUlke] ([ID], [UlkelerID], [IlanID]) VALUES (14, 1, 12)
INSERT [dbo].[IsIlaniUlke] ([ID], [UlkelerID], [IlanID]) VALUES (15, 1, 13)
INSERT [dbo].[IsIlaniUlke] ([ID], [UlkelerID], [IlanID]) VALUES (16, 1, 14)
INSERT [dbo].[IsIlaniUlke] ([ID], [UlkelerID], [IlanID]) VALUES (17, 1, 15)
INSERT [dbo].[IsIlaniUlke] ([ID], [UlkelerID], [IlanID]) VALUES (18, 1, 16)
INSERT [dbo].[IsIlaniUlke] ([ID], [UlkelerID], [IlanID]) VALUES (19, 1, 17)
INSERT [dbo].[IsIlaniUlke] ([ID], [UlkelerID], [IlanID]) VALUES (20, 1, 18)
INSERT [dbo].[IsIlaniUlke] ([ID], [UlkelerID], [IlanID]) VALUES (21, 2, 18)
INSERT [dbo].[IsIlaniUlke] ([ID], [UlkelerID], [IlanID]) VALUES (22, 3, 19)
INSERT [dbo].[IsIlaniUlke] ([ID], [UlkelerID], [IlanID]) VALUES (23, 4, 20)
INSERT [dbo].[IsIlaniUlke] ([ID], [UlkelerID], [IlanID]) VALUES (24, 5, 20)
INSERT [dbo].[IsIlaniUlke] ([ID], [UlkelerID], [IlanID]) VALUES (25, 1, 21)
INSERT [dbo].[IsIlaniUlke] ([ID], [UlkelerID], [IlanID]) VALUES (26, 2, 22)
SET IDENTITY_INSERT [dbo].[IsIlaniUlke] OFF
GO
SET IDENTITY_INSERT [dbo].[IsIlaniYabanciDiller] ON 

INSERT [dbo].[IsIlaniYabanciDiller] ([ID], [IlanID], [YabanciDillerID], [Okuma], [Yazma], [Konuşma]) VALUES (1, 1, 1, N'Orta', N'Orta', N'Orta')
INSERT [dbo].[IsIlaniYabanciDiller] ([ID], [IlanID], [YabanciDillerID], [Okuma], [Yazma], [Konuşma]) VALUES (2, 1, 3, N'Başlangıç', N'Başlangıç', N'Başlangıç')
INSERT [dbo].[IsIlaniYabanciDiller] ([ID], [IlanID], [YabanciDillerID], [Okuma], [Yazma], [Konuşma]) VALUES (3, 2, 2, N'Orta', N'Orta', N'Orta')
INSERT [dbo].[IsIlaniYabanciDiller] ([ID], [IlanID], [YabanciDillerID], [Okuma], [Yazma], [Konuşma]) VALUES (4, 3, 1, N'Orta', N'Orta', N'Orta')
INSERT [dbo].[IsIlaniYabanciDiller] ([ID], [IlanID], [YabanciDillerID], [Okuma], [Yazma], [Konuşma]) VALUES (5, 4, 1, N'Orta', N'Orta', N'Orta')
INSERT [dbo].[IsIlaniYabanciDiller] ([ID], [IlanID], [YabanciDillerID], [Okuma], [Yazma], [Konuşma]) VALUES (6, 5, 1, N'Orta', N'Orta', N'Orta')
INSERT [dbo].[IsIlaniYabanciDiller] ([ID], [IlanID], [YabanciDillerID], [Okuma], [Yazma], [Konuşma]) VALUES (7, 6, 1, N'Başlangıç', N'Başlangıç', N'Başlangıç')
INSERT [dbo].[IsIlaniYabanciDiller] ([ID], [IlanID], [YabanciDillerID], [Okuma], [Yazma], [Konuşma]) VALUES (8, 7, 1, N'Orta', N'Orta', N'Orta')
INSERT [dbo].[IsIlaniYabanciDiller] ([ID], [IlanID], [YabanciDillerID], [Okuma], [Yazma], [Konuşma]) VALUES (9, 7, 2, N'Başlangıç', N'Başlangıç', N'Başlangıç')
INSERT [dbo].[IsIlaniYabanciDiller] ([ID], [IlanID], [YabanciDillerID], [Okuma], [Yazma], [Konuşma]) VALUES (10, 8, 4, N'Başlangıç', N'Başlangıç', N'Başlangıç')
INSERT [dbo].[IsIlaniYabanciDiller] ([ID], [IlanID], [YabanciDillerID], [Okuma], [Yazma], [Konuşma]) VALUES (11, 9, 4, N'Başlangıç', N'Başlangıç', N'Başlangıç')
INSERT [dbo].[IsIlaniYabanciDiller] ([ID], [IlanID], [YabanciDillerID], [Okuma], [Yazma], [Konuşma]) VALUES (12, 10, 1, N'Orta', N'Orta', N'Orta')
INSERT [dbo].[IsIlaniYabanciDiller] ([ID], [IlanID], [YabanciDillerID], [Okuma], [Yazma], [Konuşma]) VALUES (13, 11, 1, N'Orta', N'Orta', N'Orta')
INSERT [dbo].[IsIlaniYabanciDiller] ([ID], [IlanID], [YabanciDillerID], [Okuma], [Yazma], [Konuşma]) VALUES (14, 12, 3, N'Orta', N'Orta', N'Orta')
INSERT [dbo].[IsIlaniYabanciDiller] ([ID], [IlanID], [YabanciDillerID], [Okuma], [Yazma], [Konuşma]) VALUES (15, 12, 1, N'İleri', N'İleri', N'İleri')
INSERT [dbo].[IsIlaniYabanciDiller] ([ID], [IlanID], [YabanciDillerID], [Okuma], [Yazma], [Konuşma]) VALUES (16, 13, 5, N'İleri', N'İleri', N'İleri')
INSERT [dbo].[IsIlaniYabanciDiller] ([ID], [IlanID], [YabanciDillerID], [Okuma], [Yazma], [Konuşma]) VALUES (17, 14, 1, N'Orta', N'Orta', N'Orta')
INSERT [dbo].[IsIlaniYabanciDiller] ([ID], [IlanID], [YabanciDillerID], [Okuma], [Yazma], [Konuşma]) VALUES (18, 15, 1, N'Orta', N'Orta', N'Orta')
INSERT [dbo].[IsIlaniYabanciDiller] ([ID], [IlanID], [YabanciDillerID], [Okuma], [Yazma], [Konuşma]) VALUES (19, 16, 1, N'Başlangıç', N'Başlangıç', N'Başlangıç')
INSERT [dbo].[IsIlaniYabanciDiller] ([ID], [IlanID], [YabanciDillerID], [Okuma], [Yazma], [Konuşma]) VALUES (20, 17, 1, N'Başlangıç', N'Başlangıç', N'Başlangıç')
INSERT [dbo].[IsIlaniYabanciDiller] ([ID], [IlanID], [YabanciDillerID], [Okuma], [Yazma], [Konuşma]) VALUES (21, 18, 1, N'Başlangıç', N'Başlangıç', N'Başlangıç')
INSERT [dbo].[IsIlaniYabanciDiller] ([ID], [IlanID], [YabanciDillerID], [Okuma], [Yazma], [Konuşma]) VALUES (22, 19, 1, N'Başlangıç', N'Başlangıç', N'Başlangıç')
INSERT [dbo].[IsIlaniYabanciDiller] ([ID], [IlanID], [YabanciDillerID], [Okuma], [Yazma], [Konuşma]) VALUES (23, 20, 1, N'Başlangıç', N'Başlangıç', N'Başlangıç')
INSERT [dbo].[IsIlaniYabanciDiller] ([ID], [IlanID], [YabanciDillerID], [Okuma], [Yazma], [Konuşma]) VALUES (24, 20, 2, N'Başlangıç', N'Başlangıç', N'Başlangıç')
INSERT [dbo].[IsIlaniYabanciDiller] ([ID], [IlanID], [YabanciDillerID], [Okuma], [Yazma], [Konuşma]) VALUES (25, 21, 2, N'Orta', N'Orta', N'Orta')
INSERT [dbo].[IsIlaniYabanciDiller] ([ID], [IlanID], [YabanciDillerID], [Okuma], [Yazma], [Konuşma]) VALUES (26, 22, 4, N'Orta', N'Orta', N'Orta')
SET IDENTITY_INSERT [dbo].[IsIlaniYabanciDiller] OFF
GO
SET IDENTITY_INSERT [dbo].[IsIlanlariDeneyimSuresi] ON 

INSERT [dbo].[IsIlanlariDeneyimSuresi] ([ID], [DeneyimSureID], [IlanID]) VALUES (1, 1, 1)
INSERT [dbo].[IsIlanlariDeneyimSuresi] ([ID], [DeneyimSureID], [IlanID]) VALUES (2, 2, 1)
INSERT [dbo].[IsIlanlariDeneyimSuresi] ([ID], [DeneyimSureID], [IlanID]) VALUES (3, 3, 1)
INSERT [dbo].[IsIlanlariDeneyimSuresi] ([ID], [DeneyimSureID], [IlanID]) VALUES (4, 1, 2)
INSERT [dbo].[IsIlanlariDeneyimSuresi] ([ID], [DeneyimSureID], [IlanID]) VALUES (5, 4, 2)
INSERT [dbo].[IsIlanlariDeneyimSuresi] ([ID], [DeneyimSureID], [IlanID]) VALUES (6, 3, 3)
INSERT [dbo].[IsIlanlariDeneyimSuresi] ([ID], [DeneyimSureID], [IlanID]) VALUES (7, 4, 4)
INSERT [dbo].[IsIlanlariDeneyimSuresi] ([ID], [DeneyimSureID], [IlanID]) VALUES (8, 1, 5)
INSERT [dbo].[IsIlanlariDeneyimSuresi] ([ID], [DeneyimSureID], [IlanID]) VALUES (9, 2, 5)
INSERT [dbo].[IsIlanlariDeneyimSuresi] ([ID], [DeneyimSureID], [IlanID]) VALUES (10, 3, 6)
INSERT [dbo].[IsIlanlariDeneyimSuresi] ([ID], [DeneyimSureID], [IlanID]) VALUES (11, 4, 7)
INSERT [dbo].[IsIlanlariDeneyimSuresi] ([ID], [DeneyimSureID], [IlanID]) VALUES (12, 5, 8)
INSERT [dbo].[IsIlanlariDeneyimSuresi] ([ID], [DeneyimSureID], [IlanID]) VALUES (13, 4, 9)
INSERT [dbo].[IsIlanlariDeneyimSuresi] ([ID], [DeneyimSureID], [IlanID]) VALUES (14, 4, 10)
INSERT [dbo].[IsIlanlariDeneyimSuresi] ([ID], [DeneyimSureID], [IlanID]) VALUES (15, 1, 11)
INSERT [dbo].[IsIlanlariDeneyimSuresi] ([ID], [DeneyimSureID], [IlanID]) VALUES (16, 2, 11)
INSERT [dbo].[IsIlanlariDeneyimSuresi] ([ID], [DeneyimSureID], [IlanID]) VALUES (17, 2, 12)
INSERT [dbo].[IsIlanlariDeneyimSuresi] ([ID], [DeneyimSureID], [IlanID]) VALUES (18, 2, 13)
INSERT [dbo].[IsIlanlariDeneyimSuresi] ([ID], [DeneyimSureID], [IlanID]) VALUES (19, 1, 13)
INSERT [dbo].[IsIlanlariDeneyimSuresi] ([ID], [DeneyimSureID], [IlanID]) VALUES (20, 2, 14)
INSERT [dbo].[IsIlanlariDeneyimSuresi] ([ID], [DeneyimSureID], [IlanID]) VALUES (21, 2, 15)
INSERT [dbo].[IsIlanlariDeneyimSuresi] ([ID], [DeneyimSureID], [IlanID]) VALUES (22, 3, 16)
INSERT [dbo].[IsIlanlariDeneyimSuresi] ([ID], [DeneyimSureID], [IlanID]) VALUES (23, 4, 17)
INSERT [dbo].[IsIlanlariDeneyimSuresi] ([ID], [DeneyimSureID], [IlanID]) VALUES (24, 4, 18)
INSERT [dbo].[IsIlanlariDeneyimSuresi] ([ID], [DeneyimSureID], [IlanID]) VALUES (25, 4, 19)
INSERT [dbo].[IsIlanlariDeneyimSuresi] ([ID], [DeneyimSureID], [IlanID]) VALUES (26, 5, 19)
INSERT [dbo].[IsIlanlariDeneyimSuresi] ([ID], [DeneyimSureID], [IlanID]) VALUES (27, 2, 20)
INSERT [dbo].[IsIlanlariDeneyimSuresi] ([ID], [DeneyimSureID], [IlanID]) VALUES (28, 3, 21)
INSERT [dbo].[IsIlanlariDeneyimSuresi] ([ID], [DeneyimSureID], [IlanID]) VALUES (29, 4, 22)
INSERT [dbo].[IsIlanlariDeneyimSuresi] ([ID], [DeneyimSureID], [IlanID]) VALUES (30, 3, 22)
SET IDENTITY_INSERT [dbo].[IsIlanlariDeneyimSuresi] OFF
GO
SET IDENTITY_INSERT [dbo].[Mezuniyet] ON 

INSERT [dbo].[Mezuniyet] ([ID], [MezuniyetDurum]) VALUES (1, N'Lise')
INSERT [dbo].[Mezuniyet] ([ID], [MezuniyetDurum]) VALUES (2, N'Ön Lisans')
INSERT [dbo].[Mezuniyet] ([ID], [MezuniyetDurum]) VALUES (3, N'Lisan')
INSERT [dbo].[Mezuniyet] ([ID], [MezuniyetDurum]) VALUES (4, N'Yüksek Lisans')
SET IDENTITY_INSERT [dbo].[Mezuniyet] OFF
GO
SET IDENTITY_INSERT [dbo].[Mulakatlar] ON 

INSERT [dbo].[Mulakatlar] ([ID], [MulakatDurumu]) VALUES (1, N'Mulakat Listesinde')
INSERT [dbo].[Mulakatlar] ([ID], [MulakatDurumu]) VALUES (2, N'Teklif Sürecinde')
INSERT [dbo].[Mulakatlar] ([ID], [MulakatDurumu]) VALUES (3, N'Mülakat Olumsuz')
SET IDENTITY_INSERT [dbo].[Mulakatlar] OFF
GO
SET IDENTITY_INSERT [dbo].[MulakatListesi] ON 

INSERT [dbo].[MulakatListesi] ([ID], [OzgecmisID], [MulakatID], [SirketID], [IlanID]) VALUES (1, 1, 1, 1, 1)
INSERT [dbo].[MulakatListesi] ([ID], [OzgecmisID], [MulakatID], [SirketID], [IlanID]) VALUES (2, 2, 2, 1, 2)
INSERT [dbo].[MulakatListesi] ([ID], [OzgecmisID], [MulakatID], [SirketID], [IlanID]) VALUES (3, 2, 3, 2, 1)
INSERT [dbo].[MulakatListesi] ([ID], [OzgecmisID], [MulakatID], [SirketID], [IlanID]) VALUES (4, 1, 2, 2, 2)
INSERT [dbo].[MulakatListesi] ([ID], [OzgecmisID], [MulakatID], [SirketID], [IlanID]) VALUES (5, 3, 2, 3, 3)
INSERT [dbo].[MulakatListesi] ([ID], [OzgecmisID], [MulakatID], [SirketID], [IlanID]) VALUES (6, 4, 1, 3, 6)
INSERT [dbo].[MulakatListesi] ([ID], [OzgecmisID], [MulakatID], [SirketID], [IlanID]) VALUES (7, 10, 3, 6, 14)
INSERT [dbo].[MulakatListesi] ([ID], [OzgecmisID], [MulakatID], [SirketID], [IlanID]) VALUES (8, 20, 2, 5, 16)
INSERT [dbo].[MulakatListesi] ([ID], [OzgecmisID], [MulakatID], [SirketID], [IlanID]) VALUES (9, 14, 1, 1, 1)
INSERT [dbo].[MulakatListesi] ([ID], [OzgecmisID], [MulakatID], [SirketID], [IlanID]) VALUES (10, 16, 1, 4, 4)
INSERT [dbo].[MulakatListesi] ([ID], [OzgecmisID], [MulakatID], [SirketID], [IlanID]) VALUES (11, 7, 2, 2, 4)
INSERT [dbo].[MulakatListesi] ([ID], [OzgecmisID], [MulakatID], [SirketID], [IlanID]) VALUES (12, 22, 1, 5, 12)
SET IDENTITY_INSERT [dbo].[MulakatListesi] OFF
GO
SET IDENTITY_INSERT [dbo].[Ozgecmis] ON 

INSERT [dbo].[Ozgecmis] ([ID], [UyelikID], [TelNo], [Email], [Uyruk], [Cinsiyet], [Adres], [Durum]) VALUES (1, 1, N'05413322437', N'leayneih@gmail.com', N'Türk', N'Erkek', N'hocaimat mahallesi', 1)
INSERT [dbo].[Ozgecmis] ([ID], [UyelikID], [TelNo], [Email], [Uyruk], [Cinsiyet], [Adres], [Durum]) VALUES (2, 2, N'05344578594', N'emrenm@gmail.com', N'Türk', N'Erkek', N'zeytinlik sokak', 1)
INSERT [dbo].[Ozgecmis] ([ID], [UyelikID], [TelNo], [Email], [Uyruk], [Cinsiyet], [Adres], [Durum]) VALUES (3, 6, N'5551234567', N'example1@example.com', N'Türk', N'Erkek', N'falanca caddesi', 1)
INSERT [dbo].[Ozgecmis] ([ID], [UyelikID], [TelNo], [Email], [Uyruk], [Cinsiyet], [Adres], [Durum]) VALUES (4, 10, N'5552345678', N'example2@example.com', N'Türk', N'Kadın', N'yenişehir mahallesi', 1)
INSERT [dbo].[Ozgecmis] ([ID], [UyelikID], [TelNo], [Email], [Uyruk], [Cinsiyet], [Adres], [Durum]) VALUES (5, 7, N'5553456789', N'example3@example.com', N'Türk', N'Erkek', N'modern çarşı caddesi', 1)
INSERT [dbo].[Ozgecmis] ([ID], [UyelikID], [TelNo], [Email], [Uyruk], [Cinsiyet], [Adres], [Durum]) VALUES (6, 12, N'5554567890', N'example4@example.com', N'Türk', N'Kadın', N'zeytinlik mahallesi', 1)
INSERT [dbo].[Ozgecmis] ([ID], [UyelikID], [TelNo], [Email], [Uyruk], [Cinsiyet], [Adres], [Durum]) VALUES (7, 8, N'5555678901', N'example5@example.com', N'Türk', N'Erkek', N'aktepe caddesi', 0)
INSERT [dbo].[Ozgecmis] ([ID], [UyelikID], [TelNo], [Email], [Uyruk], [Cinsiyet], [Adres], [Durum]) VALUES (8, 13, N'5556789012', N'example6@example.com', N'Türk', N'Kadın', N'nazım hikmet sokak', 1)
INSERT [dbo].[Ozgecmis] ([ID], [UyelikID], [TelNo], [Email], [Uyruk], [Cinsiyet], [Adres], [Durum]) VALUES (9, 9, N'5557890123', N'example7@example.com', N'Türk', N'Erkek', N'sinan sokak', 0)
INSERT [dbo].[Ozgecmis] ([ID], [UyelikID], [TelNo], [Email], [Uyruk], [Cinsiyet], [Adres], [Durum]) VALUES (10, 15, N'5558901234', N'example8@example.com', N'Türk', N'Kadın', N'kanarya mahallesi', 0)
INSERT [dbo].[Ozgecmis] ([ID], [UyelikID], [TelNo], [Email], [Uyruk], [Cinsiyet], [Adres], [Durum]) VALUES (11, 11, N'5559012345', N'example9@example.com', N'Türk', N'Erkek', N'bahçelievler mahallesi', 0)
INSERT [dbo].[Ozgecmis] ([ID], [UyelikID], [TelNo], [Email], [Uyruk], [Cinsiyet], [Adres], [Durum]) VALUES (12, 17, N'5550123456', N'example10@example.com', N'Türk', N'Kadın', N'dilküşah mahallesi', 1)
INSERT [dbo].[Ozgecmis] ([ID], [UyelikID], [TelNo], [Email], [Uyruk], [Cinsiyet], [Adres], [Durum]) VALUES (13, 14, N'5551234567', N'example1@example.com', N'Türk', N'Erkek', N'cumhuriyet mahallesi', 1)
INSERT [dbo].[Ozgecmis] ([ID], [UyelikID], [TelNo], [Email], [Uyruk], [Cinsiyet], [Adres], [Durum]) VALUES (14, 22, N'5552345678', N'example2@example.com', N'Türk', N'Kadın', N'karşıyaka mahallesi', 1)
INSERT [dbo].[Ozgecmis] ([ID], [UyelikID], [TelNo], [Email], [Uyruk], [Cinsiyet], [Adres], [Durum]) VALUES (15, 16, N'5553456789', N'example3@example.com', N'Türk', N'Erkek', N'dereboyu caddesi', 1)
INSERT [dbo].[Ozgecmis] ([ID], [UyelikID], [TelNo], [Email], [Uyruk], [Cinsiyet], [Adres], [Durum]) VALUES (16, 24, N'5554567890', N'example4@example.com', N'Türk', N'Kadın', N'hakim sokak', 1)
INSERT [dbo].[Ozgecmis] ([ID], [UyelikID], [TelNo], [Email], [Uyruk], [Cinsiyet], [Adres], [Durum]) VALUES (17, 18, N'5555678901', N'example5@example.com', N'Türk', N'Erkek', N'fevzipaşa mahallesi', 0)
INSERT [dbo].[Ozgecmis] ([ID], [UyelikID], [TelNo], [Email], [Uyruk], [Cinsiyet], [Adres], [Durum]) VALUES (18, 28, N'5556789012', N'example6@example.com', N'Türk', N'Kadın', N'hacıdede mahallesi', 1)
INSERT [dbo].[Ozgecmis] ([ID], [UyelikID], [TelNo], [Email], [Uyruk], [Cinsiyet], [Adres], [Durum]) VALUES (19, 21, N'5557890123', N'example7@example.com', N'Türk', N'Erkek', N'yemeniciler çarşısı', 0)
INSERT [dbo].[Ozgecmis] ([ID], [UyelikID], [TelNo], [Email], [Uyruk], [Cinsiyet], [Adres], [Durum]) VALUES (20, 25, N'5558901234', N'example8@example.com', N'Türk', N'Erkek', N'şeyh mahallesi', 0)
INSERT [dbo].[Ozgecmis] ([ID], [UyelikID], [TelNo], [Email], [Uyruk], [Cinsiyet], [Adres], [Durum]) VALUES (21, 23, N'5559012345', N'example9@example.com', N'Türk', N'Erkek', N'kuyumcu mahallesi', 0)
INSERT [dbo].[Ozgecmis] ([ID], [UyelikID], [TelNo], [Email], [Uyruk], [Cinsiyet], [Adres], [Durum]) VALUES (22, 27, N'5550123456', N'example10@example.com', N'Türk', N'Erkek', N'selanik caddesi', 1)
SET IDENTITY_INSERT [dbo].[Ozgecmis] OFF
GO
SET IDENTITY_INSERT [dbo].[OzgecmisHavuzu] ON 

INSERT [dbo].[OzgecmisHavuzu] ([ID], [OzgecmisID], [SirketID]) VALUES (1, 1, 1)
INSERT [dbo].[OzgecmisHavuzu] ([ID], [OzgecmisID], [SirketID]) VALUES (2, 1, 2)
INSERT [dbo].[OzgecmisHavuzu] ([ID], [OzgecmisID], [SirketID]) VALUES (3, 2, 2)
INSERT [dbo].[OzgecmisHavuzu] ([ID], [OzgecmisID], [SirketID]) VALUES (4, 14, 3)
INSERT [dbo].[OzgecmisHavuzu] ([ID], [OzgecmisID], [SirketID]) VALUES (5, 4, 3)
INSERT [dbo].[OzgecmisHavuzu] ([ID], [OzgecmisID], [SirketID]) VALUES (6, 5, 4)
INSERT [dbo].[OzgecmisHavuzu] ([ID], [OzgecmisID], [SirketID]) VALUES (7, 15, 5)
INSERT [dbo].[OzgecmisHavuzu] ([ID], [OzgecmisID], [SirketID]) VALUES (8, 12, 6)
INSERT [dbo].[OzgecmisHavuzu] ([ID], [OzgecmisID], [SirketID]) VALUES (9, 5, 5)
INSERT [dbo].[OzgecmisHavuzu] ([ID], [OzgecmisID], [SirketID]) VALUES (10, 3, 5)
INSERT [dbo].[OzgecmisHavuzu] ([ID], [OzgecmisID], [SirketID]) VALUES (11, 8, 4)
INSERT [dbo].[OzgecmisHavuzu] ([ID], [OzgecmisID], [SirketID]) VALUES (12, 12, 5)
INSERT [dbo].[OzgecmisHavuzu] ([ID], [OzgecmisID], [SirketID]) VALUES (13, 5, 3)
INSERT [dbo].[OzgecmisHavuzu] ([ID], [OzgecmisID], [SirketID]) VALUES (14, 18, 6)
INSERT [dbo].[OzgecmisHavuzu] ([ID], [OzgecmisID], [SirketID]) VALUES (15, 16, 6)
INSERT [dbo].[OzgecmisHavuzu] ([ID], [OzgecmisID], [SirketID]) VALUES (16, 14, 5)
INSERT [dbo].[OzgecmisHavuzu] ([ID], [OzgecmisID], [SirketID]) VALUES (17, 17, 4)
INSERT [dbo].[OzgecmisHavuzu] ([ID], [OzgecmisID], [SirketID]) VALUES (18, 4, 1)
INSERT [dbo].[OzgecmisHavuzu] ([ID], [OzgecmisID], [SirketID]) VALUES (19, 6, 2)
INSERT [dbo].[OzgecmisHavuzu] ([ID], [OzgecmisID], [SirketID]) VALUES (20, 3, 5)
INSERT [dbo].[OzgecmisHavuzu] ([ID], [OzgecmisID], [SirketID]) VALUES (21, 22, 5)
INSERT [dbo].[OzgecmisHavuzu] ([ID], [OzgecmisID], [SirketID]) VALUES (22, 21, 4)
INSERT [dbo].[OzgecmisHavuzu] ([ID], [OzgecmisID], [SirketID]) VALUES (23, 19, 5)
INSERT [dbo].[OzgecmisHavuzu] ([ID], [OzgecmisID], [SirketID]) VALUES (24, 7, 4)
INSERT [dbo].[OzgecmisHavuzu] ([ID], [OzgecmisID], [SirketID]) VALUES (25, 6, 3)
INSERT [dbo].[OzgecmisHavuzu] ([ID], [OzgecmisID], [SirketID]) VALUES (26, 4, 2)
INSERT [dbo].[OzgecmisHavuzu] ([ID], [OzgecmisID], [SirketID]) VALUES (27, 8, 1)
SET IDENTITY_INSERT [dbo].[OzgecmisHavuzu] OFF
GO
SET IDENTITY_INSERT [dbo].[OzgecmisSehirler] ON 

INSERT [dbo].[OzgecmisSehirler] ([ID], [SehirID], [OzgecmisID]) VALUES (1, 37, 1)
INSERT [dbo].[OzgecmisSehirler] ([ID], [SehirID], [OzgecmisID]) VALUES (2, 34, 2)
INSERT [dbo].[OzgecmisSehirler] ([ID], [SehirID], [OzgecmisID]) VALUES (3, 34, 3)
INSERT [dbo].[OzgecmisSehirler] ([ID], [SehirID], [OzgecmisID]) VALUES (4, 35, 4)
INSERT [dbo].[OzgecmisSehirler] ([ID], [SehirID], [OzgecmisID]) VALUES (5, 6, 5)
INSERT [dbo].[OzgecmisSehirler] ([ID], [SehirID], [OzgecmisID]) VALUES (6, 34, 6)
INSERT [dbo].[OzgecmisSehirler] ([ID], [SehirID], [OzgecmisID]) VALUES (7, 34, 7)
INSERT [dbo].[OzgecmisSehirler] ([ID], [SehirID], [OzgecmisID]) VALUES (8, 35, 8)
INSERT [dbo].[OzgecmisSehirler] ([ID], [SehirID], [OzgecmisID]) VALUES (9, 61, 9)
INSERT [dbo].[OzgecmisSehirler] ([ID], [SehirID], [OzgecmisID]) VALUES (10, 60, 10)
INSERT [dbo].[OzgecmisSehirler] ([ID], [SehirID], [OzgecmisID]) VALUES (11, 45, 11)
INSERT [dbo].[OzgecmisSehirler] ([ID], [SehirID], [OzgecmisID]) VALUES (12, 33, 12)
INSERT [dbo].[OzgecmisSehirler] ([ID], [SehirID], [OzgecmisID]) VALUES (13, 33, 13)
INSERT [dbo].[OzgecmisSehirler] ([ID], [SehirID], [OzgecmisID]) VALUES (14, 45, 14)
INSERT [dbo].[OzgecmisSehirler] ([ID], [SehirID], [OzgecmisID]) VALUES (15, 43, 15)
INSERT [dbo].[OzgecmisSehirler] ([ID], [SehirID], [OzgecmisID]) VALUES (16, 68, 16)
INSERT [dbo].[OzgecmisSehirler] ([ID], [SehirID], [OzgecmisID]) VALUES (17, 67, 17)
INSERT [dbo].[OzgecmisSehirler] ([ID], [SehirID], [OzgecmisID]) VALUES (18, 81, 18)
INSERT [dbo].[OzgecmisSehirler] ([ID], [SehirID], [OzgecmisID]) VALUES (19, 41, 19)
INSERT [dbo].[OzgecmisSehirler] ([ID], [SehirID], [OzgecmisID]) VALUES (20, 41, 20)
INSERT [dbo].[OzgecmisSehirler] ([ID], [SehirID], [OzgecmisID]) VALUES (21, 34, 21)
INSERT [dbo].[OzgecmisSehirler] ([ID], [SehirID], [OzgecmisID]) VALUES (22, 34, 22)
SET IDENTITY_INSERT [dbo].[OzgecmisSehirler] OFF
GO
SET IDENTITY_INSERT [dbo].[OzgecmisSosyalMedya] ON 

INSERT [dbo].[OzgecmisSosyalMedya] ([ID], [SosyalMedyaID], [OzgecmisID], [HesapAdi]) VALUES (1, 6, 1, N'levent')
INSERT [dbo].[OzgecmisSosyalMedya] ([ID], [SosyalMedyaID], [OzgecmisID], [HesapAdi]) VALUES (2, 6, 2, N'emren')
INSERT [dbo].[OzgecmisSosyalMedya] ([ID], [SosyalMedyaID], [OzgecmisID], [HesapAdi]) VALUES (3, 6, 3, N'explamle')
INSERT [dbo].[OzgecmisSosyalMedya] ([ID], [SosyalMedyaID], [OzgecmisID], [HesapAdi]) VALUES (4, 6, 4, N'example3')
INSERT [dbo].[OzgecmisSosyalMedya] ([ID], [SosyalMedyaID], [OzgecmisID], [HesapAdi]) VALUES (5, 6, 5, N'example4')
INSERT [dbo].[OzgecmisSosyalMedya] ([ID], [SosyalMedyaID], [OzgecmisID], [HesapAdi]) VALUES (7, 6, 6, N'example5')
INSERT [dbo].[OzgecmisSosyalMedya] ([ID], [SosyalMedyaID], [OzgecmisID], [HesapAdi]) VALUES (8, 6, 7, N'example6')
INSERT [dbo].[OzgecmisSosyalMedya] ([ID], [SosyalMedyaID], [OzgecmisID], [HesapAdi]) VALUES (9, 6, 8, N'example7')
INSERT [dbo].[OzgecmisSosyalMedya] ([ID], [SosyalMedyaID], [OzgecmisID], [HesapAdi]) VALUES (10, 6, 9, N'example8')
INSERT [dbo].[OzgecmisSosyalMedya] ([ID], [SosyalMedyaID], [OzgecmisID], [HesapAdi]) VALUES (11, 6, 10, N'example9')
INSERT [dbo].[OzgecmisSosyalMedya] ([ID], [SosyalMedyaID], [OzgecmisID], [HesapAdi]) VALUES (12, 6, 11, N'example10')
INSERT [dbo].[OzgecmisSosyalMedya] ([ID], [SosyalMedyaID], [OzgecmisID], [HesapAdi]) VALUES (13, 6, 12, N'example11')
INSERT [dbo].[OzgecmisSosyalMedya] ([ID], [SosyalMedyaID], [OzgecmisID], [HesapAdi]) VALUES (14, 6, 13, N'example12')
INSERT [dbo].[OzgecmisSosyalMedya] ([ID], [SosyalMedyaID], [OzgecmisID], [HesapAdi]) VALUES (15, 6, 14, N'example13')
INSERT [dbo].[OzgecmisSosyalMedya] ([ID], [SosyalMedyaID], [OzgecmisID], [HesapAdi]) VALUES (16, 6, 15, N'example14')
INSERT [dbo].[OzgecmisSosyalMedya] ([ID], [SosyalMedyaID], [OzgecmisID], [HesapAdi]) VALUES (17, 6, 16, N'example15')
INSERT [dbo].[OzgecmisSosyalMedya] ([ID], [SosyalMedyaID], [OzgecmisID], [HesapAdi]) VALUES (18, 6, 17, N'example16')
INSERT [dbo].[OzgecmisSosyalMedya] ([ID], [SosyalMedyaID], [OzgecmisID], [HesapAdi]) VALUES (19, 6, 18, N'example17')
INSERT [dbo].[OzgecmisSosyalMedya] ([ID], [SosyalMedyaID], [OzgecmisID], [HesapAdi]) VALUES (20, 6, 19, N'example18')
INSERT [dbo].[OzgecmisSosyalMedya] ([ID], [SosyalMedyaID], [OzgecmisID], [HesapAdi]) VALUES (21, 6, 20, N'example19')
INSERT [dbo].[OzgecmisSosyalMedya] ([ID], [SosyalMedyaID], [OzgecmisID], [HesapAdi]) VALUES (22, 6, 21, N'example20')
INSERT [dbo].[OzgecmisSosyalMedya] ([ID], [SosyalMedyaID], [OzgecmisID], [HesapAdi]) VALUES (23, 6, 22, N'example21')
INSERT [dbo].[OzgecmisSosyalMedya] ([ID], [SosyalMedyaID], [OzgecmisID], [HesapAdi]) VALUES (24, 3, 1, N'explamlex')
INSERT [dbo].[OzgecmisSosyalMedya] ([ID], [SosyalMedyaID], [OzgecmisID], [HesapAdi]) VALUES (25, 4, 2, N'explamleface')
INSERT [dbo].[OzgecmisSosyalMedya] ([ID], [SosyalMedyaID], [OzgecmisID], [HesapAdi]) VALUES (26, 5, 3, N'explamleıns')
INSERT [dbo].[OzgecmisSosyalMedya] ([ID], [SosyalMedyaID], [OzgecmisID], [HesapAdi]) VALUES (27, 3, 4, N'explamlex')
INSERT [dbo].[OzgecmisSosyalMedya] ([ID], [SosyalMedyaID], [OzgecmisID], [HesapAdi]) VALUES (28, 5, 5, N'explamlelns')
INSERT [dbo].[OzgecmisSosyalMedya] ([ID], [SosyalMedyaID], [OzgecmisID], [HesapAdi]) VALUES (29, 7, 6, N'explamlegıt')
INSERT [dbo].[OzgecmisSosyalMedya] ([ID], [SosyalMedyaID], [OzgecmisID], [HesapAdi]) VALUES (30, 7, 7, N'explamlegıt')
INSERT [dbo].[OzgecmisSosyalMedya] ([ID], [SosyalMedyaID], [OzgecmisID], [HesapAdi]) VALUES (31, 4, 8, N'explamleface')
INSERT [dbo].[OzgecmisSosyalMedya] ([ID], [SosyalMedyaID], [OzgecmisID], [HesapAdi]) VALUES (32, 5, 9, N'explamleins')
INSERT [dbo].[OzgecmisSosyalMedya] ([ID], [SosyalMedyaID], [OzgecmisID], [HesapAdi]) VALUES (33, 4, 10, N'explamleface')
INSERT [dbo].[OzgecmisSosyalMedya] ([ID], [SosyalMedyaID], [OzgecmisID], [HesapAdi]) VALUES (34, 3, 11, N'explamlex')
INSERT [dbo].[OzgecmisSosyalMedya] ([ID], [SosyalMedyaID], [OzgecmisID], [HesapAdi]) VALUES (35, 7, 12, N'explamlegit')
INSERT [dbo].[OzgecmisSosyalMedya] ([ID], [SosyalMedyaID], [OzgecmisID], [HesapAdi]) VALUES (36, 8, 13, N'explamlered')
INSERT [dbo].[OzgecmisSosyalMedya] ([ID], [SosyalMedyaID], [OzgecmisID], [HesapAdi]) VALUES (37, 7, 14, N'explamlegit')
INSERT [dbo].[OzgecmisSosyalMedya] ([ID], [SosyalMedyaID], [OzgecmisID], [HesapAdi]) VALUES (38, 7, 15, N'explamlegit')
INSERT [dbo].[OzgecmisSosyalMedya] ([ID], [SosyalMedyaID], [OzgecmisID], [HesapAdi]) VALUES (39, 7, 16, N'explamlegit')
INSERT [dbo].[OzgecmisSosyalMedya] ([ID], [SosyalMedyaID], [OzgecmisID], [HesapAdi]) VALUES (40, 5, 17, N'explamleins')
INSERT [dbo].[OzgecmisSosyalMedya] ([ID], [SosyalMedyaID], [OzgecmisID], [HesapAdi]) VALUES (41, 3, 18, N'explamlex')
INSERT [dbo].[OzgecmisSosyalMedya] ([ID], [SosyalMedyaID], [OzgecmisID], [HesapAdi]) VALUES (42, 5, 19, N'explamleins')
INSERT [dbo].[OzgecmisSosyalMedya] ([ID], [SosyalMedyaID], [OzgecmisID], [HesapAdi]) VALUES (43, 7, 20, N'explamlegit')
INSERT [dbo].[OzgecmisSosyalMedya] ([ID], [SosyalMedyaID], [OzgecmisID], [HesapAdi]) VALUES (44, 7, 21, N'explamlegit')
INSERT [dbo].[OzgecmisSosyalMedya] ([ID], [SosyalMedyaID], [OzgecmisID], [HesapAdi]) VALUES (45, 7, 22, N'explamlegit')
SET IDENTITY_INSERT [dbo].[OzgecmisSosyalMedya] OFF
GO
SET IDENTITY_INSERT [dbo].[OzgecmisYabanciDil] ON 

INSERT [dbo].[OzgecmisYabanciDil] ([ID], [OzgecmisID], [YabanciDilID], [Okuma], [Yazma], [Konuşma]) VALUES (1, 1, 1, N'Orta', N'Orta', N'Orta')
INSERT [dbo].[OzgecmisYabanciDil] ([ID], [OzgecmisID], [YabanciDilID], [Okuma], [Yazma], [Konuşma]) VALUES (2, 1, 2, N'Başlangıç', N'Başlangıç', N'Başlangıç')
INSERT [dbo].[OzgecmisYabanciDil] ([ID], [OzgecmisID], [YabanciDilID], [Okuma], [Yazma], [Konuşma]) VALUES (3, 2, 4, N'Başlangıç', N'Başlangıç', N'Başlangıç')
INSERT [dbo].[OzgecmisYabanciDil] ([ID], [OzgecmisID], [YabanciDilID], [Okuma], [Yazma], [Konuşma]) VALUES (4, 2, 3, N'Orta', N'Orta', N'Orta')
INSERT [dbo].[OzgecmisYabanciDil] ([ID], [OzgecmisID], [YabanciDilID], [Okuma], [Yazma], [Konuşma]) VALUES (5, 3, 3, NULL, NULL, NULL)
INSERT [dbo].[OzgecmisYabanciDil] ([ID], [OzgecmisID], [YabanciDilID], [Okuma], [Yazma], [Konuşma]) VALUES (6, 4, 2, NULL, NULL, NULL)
INSERT [dbo].[OzgecmisYabanciDil] ([ID], [OzgecmisID], [YabanciDilID], [Okuma], [Yazma], [Konuşma]) VALUES (7, 5, 4, NULL, NULL, NULL)
INSERT [dbo].[OzgecmisYabanciDil] ([ID], [OzgecmisID], [YabanciDilID], [Okuma], [Yazma], [Konuşma]) VALUES (8, 6, 1, NULL, NULL, NULL)
INSERT [dbo].[OzgecmisYabanciDil] ([ID], [OzgecmisID], [YabanciDilID], [Okuma], [Yazma], [Konuşma]) VALUES (9, 7, 5, NULL, NULL, NULL)
INSERT [dbo].[OzgecmisYabanciDil] ([ID], [OzgecmisID], [YabanciDilID], [Okuma], [Yazma], [Konuşma]) VALUES (10, 8, 3, NULL, NULL, NULL)
INSERT [dbo].[OzgecmisYabanciDil] ([ID], [OzgecmisID], [YabanciDilID], [Okuma], [Yazma], [Konuşma]) VALUES (11, 9, 2, NULL, NULL, NULL)
INSERT [dbo].[OzgecmisYabanciDil] ([ID], [OzgecmisID], [YabanciDilID], [Okuma], [Yazma], [Konuşma]) VALUES (12, 10, 4, NULL, NULL, NULL)
INSERT [dbo].[OzgecmisYabanciDil] ([ID], [OzgecmisID], [YabanciDilID], [Okuma], [Yazma], [Konuşma]) VALUES (13, 11, 5, NULL, NULL, NULL)
INSERT [dbo].[OzgecmisYabanciDil] ([ID], [OzgecmisID], [YabanciDilID], [Okuma], [Yazma], [Konuşma]) VALUES (14, 12, 2, NULL, NULL, NULL)
INSERT [dbo].[OzgecmisYabanciDil] ([ID], [OzgecmisID], [YabanciDilID], [Okuma], [Yazma], [Konuşma]) VALUES (15, 13, 1, NULL, NULL, NULL)
INSERT [dbo].[OzgecmisYabanciDil] ([ID], [OzgecmisID], [YabanciDilID], [Okuma], [Yazma], [Konuşma]) VALUES (16, 14, 4, NULL, NULL, NULL)
INSERT [dbo].[OzgecmisYabanciDil] ([ID], [OzgecmisID], [YabanciDilID], [Okuma], [Yazma], [Konuşma]) VALUES (17, 15, 1, NULL, NULL, NULL)
INSERT [dbo].[OzgecmisYabanciDil] ([ID], [OzgecmisID], [YabanciDilID], [Okuma], [Yazma], [Konuşma]) VALUES (18, 16, 1, NULL, NULL, NULL)
INSERT [dbo].[OzgecmisYabanciDil] ([ID], [OzgecmisID], [YabanciDilID], [Okuma], [Yazma], [Konuşma]) VALUES (19, 17, 1, NULL, NULL, NULL)
INSERT [dbo].[OzgecmisYabanciDil] ([ID], [OzgecmisID], [YabanciDilID], [Okuma], [Yazma], [Konuşma]) VALUES (20, 18, 1, NULL, NULL, NULL)
INSERT [dbo].[OzgecmisYabanciDil] ([ID], [OzgecmisID], [YabanciDilID], [Okuma], [Yazma], [Konuşma]) VALUES (21, 19, 5, NULL, NULL, NULL)
INSERT [dbo].[OzgecmisYabanciDil] ([ID], [OzgecmisID], [YabanciDilID], [Okuma], [Yazma], [Konuşma]) VALUES (22, 20, 5, NULL, NULL, NULL)
INSERT [dbo].[OzgecmisYabanciDil] ([ID], [OzgecmisID], [YabanciDilID], [Okuma], [Yazma], [Konuşma]) VALUES (23, 21, 4, NULL, NULL, NULL)
INSERT [dbo].[OzgecmisYabanciDil] ([ID], [OzgecmisID], [YabanciDilID], [Okuma], [Yazma], [Konuşma]) VALUES (24, 22, 2, NULL, NULL, NULL)
INSERT [dbo].[OzgecmisYabanciDil] ([ID], [OzgecmisID], [YabanciDilID], [Okuma], [Yazma], [Konuşma]) VALUES (25, 13, 2, NULL, NULL, NULL)
INSERT [dbo].[OzgecmisYabanciDil] ([ID], [OzgecmisID], [YabanciDilID], [Okuma], [Yazma], [Konuşma]) VALUES (26, 21, 2, NULL, NULL, NULL)
INSERT [dbo].[OzgecmisYabanciDil] ([ID], [OzgecmisID], [YabanciDilID], [Okuma], [Yazma], [Konuşma]) VALUES (27, 14, 1, NULL, NULL, NULL)
INSERT [dbo].[OzgecmisYabanciDil] ([ID], [OzgecmisID], [YabanciDilID], [Okuma], [Yazma], [Konuşma]) VALUES (28, 15, 2, NULL, NULL, NULL)
INSERT [dbo].[OzgecmisYabanciDil] ([ID], [OzgecmisID], [YabanciDilID], [Okuma], [Yazma], [Konuşma]) VALUES (29, 8, 5, NULL, NULL, NULL)
INSERT [dbo].[OzgecmisYabanciDil] ([ID], [OzgecmisID], [YabanciDilID], [Okuma], [Yazma], [Konuşma]) VALUES (30, 20, 3, NULL, NULL, NULL)
INSERT [dbo].[OzgecmisYabanciDil] ([ID], [OzgecmisID], [YabanciDilID], [Okuma], [Yazma], [Konuşma]) VALUES (31, 17, 4, NULL, NULL, NULL)
INSERT [dbo].[OzgecmisYabanciDil] ([ID], [OzgecmisID], [YabanciDilID], [Okuma], [Yazma], [Konuşma]) VALUES (32, 9, 3, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[OzgecmisYabanciDil] OFF
GO
SET IDENTITY_INSERT [dbo].[OzgecmisYazilimDilleri] ON 

INSERT [dbo].[OzgecmisYazilimDilleri] ([ID], [DilID], [OzgecmisID], [BilgiOrani]) VALUES (1, 1, 1, 80)
INSERT [dbo].[OzgecmisYazilimDilleri] ([ID], [DilID], [OzgecmisID], [BilgiOrani]) VALUES (2, 3, 1, 50)
INSERT [dbo].[OzgecmisYazilimDilleri] ([ID], [DilID], [OzgecmisID], [BilgiOrani]) VALUES (3, 4, 1, 70)
INSERT [dbo].[OzgecmisYazilimDilleri] ([ID], [DilID], [OzgecmisID], [BilgiOrani]) VALUES (4, 1, 2, 40)
INSERT [dbo].[OzgecmisYazilimDilleri] ([ID], [DilID], [OzgecmisID], [BilgiOrani]) VALUES (5, 5, 2, 60)
INSERT [dbo].[OzgecmisYazilimDilleri] ([ID], [DilID], [OzgecmisID], [BilgiOrani]) VALUES (6, 6, 2, 80)
INSERT [dbo].[OzgecmisYazilimDilleri] ([ID], [DilID], [OzgecmisID], [BilgiOrani]) VALUES (7, 2, 3, 60)
INSERT [dbo].[OzgecmisYazilimDilleri] ([ID], [DilID], [OzgecmisID], [BilgiOrani]) VALUES (8, 4, 4, 60)
INSERT [dbo].[OzgecmisYazilimDilleri] ([ID], [DilID], [OzgecmisID], [BilgiOrani]) VALUES (9, 3, 5, 60)
INSERT [dbo].[OzgecmisYazilimDilleri] ([ID], [DilID], [OzgecmisID], [BilgiOrani]) VALUES (10, 4, 6, 80)
INSERT [dbo].[OzgecmisYazilimDilleri] ([ID], [DilID], [OzgecmisID], [BilgiOrani]) VALUES (11, 5, 7, 80)
INSERT [dbo].[OzgecmisYazilimDilleri] ([ID], [DilID], [OzgecmisID], [BilgiOrani]) VALUES (12, 6, 8, 90)
INSERT [dbo].[OzgecmisYazilimDilleri] ([ID], [DilID], [OzgecmisID], [BilgiOrani]) VALUES (13, 1, 9, 50)
INSERT [dbo].[OzgecmisYazilimDilleri] ([ID], [DilID], [OzgecmisID], [BilgiOrani]) VALUES (14, 1, 10, 60)
INSERT [dbo].[OzgecmisYazilimDilleri] ([ID], [DilID], [OzgecmisID], [BilgiOrani]) VALUES (15, 5, 11, 60)
INSERT [dbo].[OzgecmisYazilimDilleri] ([ID], [DilID], [OzgecmisID], [BilgiOrani]) VALUES (16, 3, 12, 70)
INSERT [dbo].[OzgecmisYazilimDilleri] ([ID], [DilID], [OzgecmisID], [BilgiOrani]) VALUES (17, 4, 13, 80)
INSERT [dbo].[OzgecmisYazilimDilleri] ([ID], [DilID], [OzgecmisID], [BilgiOrani]) VALUES (18, 3, 14, 70)
INSERT [dbo].[OzgecmisYazilimDilleri] ([ID], [DilID], [OzgecmisID], [BilgiOrani]) VALUES (19, 5, 15, 70)
INSERT [dbo].[OzgecmisYazilimDilleri] ([ID], [DilID], [OzgecmisID], [BilgiOrani]) VALUES (20, 5, 16, 60)
INSERT [dbo].[OzgecmisYazilimDilleri] ([ID], [DilID], [OzgecmisID], [BilgiOrani]) VALUES (21, 6, 17, 70)
INSERT [dbo].[OzgecmisYazilimDilleri] ([ID], [DilID], [OzgecmisID], [BilgiOrani]) VALUES (22, 6, 18, 50)
INSERT [dbo].[OzgecmisYazilimDilleri] ([ID], [DilID], [OzgecmisID], [BilgiOrani]) VALUES (23, 2, 19, 40)
INSERT [dbo].[OzgecmisYazilimDilleri] ([ID], [DilID], [OzgecmisID], [BilgiOrani]) VALUES (24, 3, 20, 80)
INSERT [dbo].[OzgecmisYazilimDilleri] ([ID], [DilID], [OzgecmisID], [BilgiOrani]) VALUES (25, 1, 21, 90)
INSERT [dbo].[OzgecmisYazilimDilleri] ([ID], [DilID], [OzgecmisID], [BilgiOrani]) VALUES (26, 4, 22, 70)
INSERT [dbo].[OzgecmisYazilimDilleri] ([ID], [DilID], [OzgecmisID], [BilgiOrani]) VALUES (27, 6, 22, 50)
INSERT [dbo].[OzgecmisYazilimDilleri] ([ID], [DilID], [OzgecmisID], [BilgiOrani]) VALUES (28, 2, 21, 60)
INSERT [dbo].[OzgecmisYazilimDilleri] ([ID], [DilID], [OzgecmisID], [BilgiOrani]) VALUES (29, 2, 20, 70)
INSERT [dbo].[OzgecmisYazilimDilleri] ([ID], [DilID], [OzgecmisID], [BilgiOrani]) VALUES (30, 4, 19, 70)
INSERT [dbo].[OzgecmisYazilimDilleri] ([ID], [DilID], [OzgecmisID], [BilgiOrani]) VALUES (31, 5, 18, 70)
INSERT [dbo].[OzgecmisYazilimDilleri] ([ID], [DilID], [OzgecmisID], [BilgiOrani]) VALUES (32, 2, 17, 60)
INSERT [dbo].[OzgecmisYazilimDilleri] ([ID], [DilID], [OzgecmisID], [BilgiOrani]) VALUES (33, 3, 16, 60)
INSERT [dbo].[OzgecmisYazilimDilleri] ([ID], [DilID], [OzgecmisID], [BilgiOrani]) VALUES (34, 3, 15, 50)
INSERT [dbo].[OzgecmisYazilimDilleri] ([ID], [DilID], [OzgecmisID], [BilgiOrani]) VALUES (35, 1, 14, 40)
INSERT [dbo].[OzgecmisYazilimDilleri] ([ID], [DilID], [OzgecmisID], [BilgiOrani]) VALUES (36, 1, 13, 90)
INSERT [dbo].[OzgecmisYazilimDilleri] ([ID], [DilID], [OzgecmisID], [BilgiOrani]) VALUES (37, 1, 12, 90)
INSERT [dbo].[OzgecmisYazilimDilleri] ([ID], [DilID], [OzgecmisID], [BilgiOrani]) VALUES (38, 2, 11, 90)
INSERT [dbo].[OzgecmisYazilimDilleri] ([ID], [DilID], [OzgecmisID], [BilgiOrani]) VALUES (39, 5, 10, 60)
INSERT [dbo].[OzgecmisYazilimDilleri] ([ID], [DilID], [OzgecmisID], [BilgiOrani]) VALUES (40, 4, 9, 60)
INSERT [dbo].[OzgecmisYazilimDilleri] ([ID], [DilID], [OzgecmisID], [BilgiOrani]) VALUES (41, 4, 8, 50)
INSERT [dbo].[OzgecmisYazilimDilleri] ([ID], [DilID], [OzgecmisID], [BilgiOrani]) VALUES (42, 3, 7, 40)
INSERT [dbo].[OzgecmisYazilimDilleri] ([ID], [DilID], [OzgecmisID], [BilgiOrani]) VALUES (43, 1, 6, 50)
INSERT [dbo].[OzgecmisYazilimDilleri] ([ID], [DilID], [OzgecmisID], [BilgiOrani]) VALUES (44, 2, 5, 60)
INSERT [dbo].[OzgecmisYazilimDilleri] ([ID], [DilID], [OzgecmisID], [BilgiOrani]) VALUES (45, 6, 4, 70)
INSERT [dbo].[OzgecmisYazilimDilleri] ([ID], [DilID], [OzgecmisID], [BilgiOrani]) VALUES (46, 6, 3, 70)
SET IDENTITY_INSERT [dbo].[OzgecmisYazilimDilleri] OFF
GO
SET IDENTITY_INSERT [dbo].[Referanslar] ON 

INSERT [dbo].[Referanslar] ([ID], [SirketAdi], [RefAdi], [TelNo], [OzgecmisID]) VALUES (1, N'falanca şirket', N'ismail mert', N'015346', 1)
INSERT [dbo].[Referanslar] ([ID], [SirketAdi], [RefAdi], [TelNo], [OzgecmisID]) VALUES (2, N'falanca şirket 2', N'emre akbaş', N'456546542', 1)
INSERT [dbo].[Referanslar] ([ID], [SirketAdi], [RefAdi], [TelNo], [OzgecmisID]) VALUES (3, N'...... şirket 1 ', N'mehmet çınar', N'21321412', 2)
INSERT [dbo].[Referanslar] ([ID], [SirketAdi], [RefAdi], [TelNo], [OzgecmisID]) VALUES (4, N'...... şirket 2', N'timur yıldız', N'8745123', 2)
INSERT [dbo].[Referanslar] ([ID], [SirketAdi], [RefAdi], [TelNo], [OzgecmisID]) VALUES (5, N'ABC Şirketi', N'Ahmet Yılmaz', N'555-123-4567', 3)
INSERT [dbo].[Referanslar] ([ID], [SirketAdi], [RefAdi], [TelNo], [OzgecmisID]) VALUES (6, N'XYZ AŞ', N'Ayşe Demir', N'555-987-6543', 4)
INSERT [dbo].[Referanslar] ([ID], [SirketAdi], [RefAdi], [TelNo], [OzgecmisID]) VALUES (7, N'KLM Ltd. Şti.', N'Mehmet Kaya', N'555-555-5555', 5)
INSERT [dbo].[Referanslar] ([ID], [SirketAdi], [RefAdi], [TelNo], [OzgecmisID]) VALUES (8, N'DEF Holding', N'Fatma Öztürk', N'555-111-2222', 6)
INSERT [dbo].[Referanslar] ([ID], [SirketAdi], [RefAdi], [TelNo], [OzgecmisID]) VALUES (9, N'GHI Grubu', N'Ali Can', N'555-444-3333', 7)
INSERT [dbo].[Referanslar] ([ID], [SirketAdi], [RefAdi], [TelNo], [OzgecmisID]) VALUES (10, N'JKL Danışmanlık', N'Zeynep Aksoy', N'555-666-7777', 8)
INSERT [dbo].[Referanslar] ([ID], [SirketAdi], [RefAdi], [TelNo], [OzgecmisID]) VALUES (11, N'MNO Teknoloji', N'Deniz Yıldırım', N'555-888-9999', 9)
INSERT [dbo].[Referanslar] ([ID], [SirketAdi], [RefAdi], [TelNo], [OzgecmisID]) VALUES (12, N'PRS Mimarlık', N'Elif Şahin', N'555-222-3333', 10)
INSERT [dbo].[Referanslar] ([ID], [SirketAdi], [RefAdi], [TelNo], [OzgecmisID]) VALUES (13, N'TUV İnşaat', N'Hasan Aydın', N'555-777-8888', 11)
INSERT [dbo].[Referanslar] ([ID], [SirketAdi], [RefAdi], [TelNo], [OzgecmisID]) VALUES (14, N'VWX Holding', N'Selin Arslan', N'555-333-4444', 12)
INSERT [dbo].[Referanslar] ([ID], [SirketAdi], [RefAdi], [TelNo], [OzgecmisID]) VALUES (15, N'XYZ Holding', N'Ebru Yılmaz', N'555-123-4567', 13)
INSERT [dbo].[Referanslar] ([ID], [SirketAdi], [RefAdi], [TelNo], [OzgecmisID]) VALUES (16, N'ABC Danışmanlık', N'Murat Demir', N'555-987-6543', 14)
INSERT [dbo].[Referanslar] ([ID], [SirketAdi], [RefAdi], [TelNo], [OzgecmisID]) VALUES (17, N'LMN Teknoloji', N'Gizem Kaya', N'555-555-5555', 15)
INSERT [dbo].[Referanslar] ([ID], [SirketAdi], [RefAdi], [TelNo], [OzgecmisID]) VALUES (18, N'PQR İnşaat', N'Ahmet Öztürk', N'555-111-2222', 16)
INSERT [dbo].[Referanslar] ([ID], [SirketAdi], [RefAdi], [TelNo], [OzgecmisID]) VALUES (19, N'STU Grubu', N'Ayşe Can', N'555-444-3333', 17)
INSERT [dbo].[Referanslar] ([ID], [SirketAdi], [RefAdi], [TelNo], [OzgecmisID]) VALUES (20, N'VWX Mimarlık', N'Zeki Aksoy', N'555-666-7777', 18)
INSERT [dbo].[Referanslar] ([ID], [SirketAdi], [RefAdi], [TelNo], [OzgecmisID]) VALUES (21, N'DEF Holding', N'Deniz Yıldırım', N'555-888-9999', 19)
INSERT [dbo].[Referanslar] ([ID], [SirketAdi], [RefAdi], [TelNo], [OzgecmisID]) VALUES (22, N'GHI Danışmanlık', N'Elif Şahin', N'555-222-3333', 20)
INSERT [dbo].[Referanslar] ([ID], [SirketAdi], [RefAdi], [TelNo], [OzgecmisID]) VALUES (23, N'JKL Teknoloji', N'Hasan Aydın', N'555-777-8888', 21)
INSERT [dbo].[Referanslar] ([ID], [SirketAdi], [RefAdi], [TelNo], [OzgecmisID]) VALUES (24, N'MNO İnşaat', N'Selin Arslan', N'555-333-4444', 22)
INSERT [dbo].[Referanslar] ([ID], [SirketAdi], [RefAdi], [TelNo], [OzgecmisID]) VALUES (25, N'ABC Danışmanlık', N'Murat Demir', N'555-987-6543', 8)
INSERT [dbo].[Referanslar] ([ID], [SirketAdi], [RefAdi], [TelNo], [OzgecmisID]) VALUES (26, N'LMN Teknoloji', N'Gizem Kaya', N'555-555-5555', 7)
INSERT [dbo].[Referanslar] ([ID], [SirketAdi], [RefAdi], [TelNo], [OzgecmisID]) VALUES (27, N'PQR İnşaat', N'Ahmet Öztürk', N'555-111-2222', 11)
INSERT [dbo].[Referanslar] ([ID], [SirketAdi], [RefAdi], [TelNo], [OzgecmisID]) VALUES (28, N'STU Grubu', N'Ayşe Can', N'555-444-3333', 21)
INSERT [dbo].[Referanslar] ([ID], [SirketAdi], [RefAdi], [TelNo], [OzgecmisID]) VALUES (29, N'VWX Mimarlık', N'Zeki Aksoy', N'555-666-7777', 14)
INSERT [dbo].[Referanslar] ([ID], [SirketAdi], [RefAdi], [TelNo], [OzgecmisID]) VALUES (30, N'DEF Holding', N'Deniz Yıldırım', N'555-888-9999', 3)
INSERT [dbo].[Referanslar] ([ID], [SirketAdi], [RefAdi], [TelNo], [OzgecmisID]) VALUES (31, N'GHI Danışmanlık', N'Elif Şahin', N'555-222-3333', 10)
INSERT [dbo].[Referanslar] ([ID], [SirketAdi], [RefAdi], [TelNo], [OzgecmisID]) VALUES (32, N'JKL Teknoloji', N'Hasan Aydın', N'555-777-8888', 6)
SET IDENTITY_INSERT [dbo].[Referanslar] OFF
GO
SET IDENTITY_INSERT [dbo].[Sehirler] ON 

INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (1, N'Adana')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (2, N'Adıyaman')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (3, N'Afyonkarahisar')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (4, N'Ağrı')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (5, N'Amasya')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (6, N'Ankara')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (7, N'Antalya')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (8, N'Artvin')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (9, N'Aydın')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (10, N'Balıkesir')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (11, N'Bilecik')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (12, N'Bingöl')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (13, N'Bitlis')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (14, N'Bolu')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (15, N'Burdur')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (16, N'Bursa')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (17, N'Çanakkale')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (18, N'Çankırı')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (19, N'Çorum')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (20, N'Denizli')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (21, N'Diyarbakır')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (22, N'Edirne')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (23, N'Elazığ')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (24, N'Erzincan')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (25, N'Erzurum')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (26, N'Eskişehir')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (27, N'Gaziantep')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (28, N'Giresun')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (29, N'Gümüşhane')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (30, N'Hakkari')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (31, N'Hatay')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (32, N'Isparta')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (33, N'Mersin')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (34, N'İstanbul')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (35, N'İzmir')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (36, N'Kars')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (37, N'Kastamonu')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (38, N'Kayseri')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (39, N'Kırklareli')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (40, N'Kırşehir')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (41, N'Kocaeli')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (42, N'Konya')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (43, N'Kütahya')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (44, N'Malatya')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (45, N'Manisa')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (46, N'Kahramanmaraş')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (47, N'Mardin')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (48, N'Muğla')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (49, N'Muş')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (50, N'Nevşehir')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (51, N'Niğde')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (52, N'Ordu')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (53, N'Rize')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (54, N'Sakarya')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (55, N'Samsun')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (56, N'Siirt')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (57, N'Sinop')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (58, N'Sivas')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (59, N'Tekirdağ')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (60, N'Tokat')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (61, N'Trabzon')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (62, N'Tunceli')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (63, N'Şanlıurfa')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (64, N'Uşak')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (65, N'Van')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (66, N'Yozgat')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (67, N'Zonguldak')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (68, N'Aksaray')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (69, N'Bayburt')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (70, N'Karaman')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (71, N'Kırıkkale')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (72, N'Batman')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (73, N'Şırnak')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (74, N'Bartın')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (75, N'Ardahan')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (76, N'Iğdır')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (77, N'Yalova')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (78, N'Karabük')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (79, N'Kilis')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (80, N'Osmaniye')
INSERT [dbo].[Sehirler] ([ID], [SehirAdi]) VALUES (81, N'Düzce')
SET IDENTITY_INSERT [dbo].[Sehirler] OFF
GO
SET IDENTITY_INSERT [dbo].[Sektorler] ON 

INSERT [dbo].[Sektorler] ([ID], [Adi]) VALUES (1, N'Yazılım')
INSERT [dbo].[Sektorler] ([ID], [Adi]) VALUES (2, N'Tekstil')
INSERT [dbo].[Sektorler] ([ID], [Adi]) VALUES (3, N'Otomotiv')
INSERT [dbo].[Sektorler] ([ID], [Adi]) VALUES (4, N'Bankacılık')
INSERT [dbo].[Sektorler] ([ID], [Adi]) VALUES (5, N'Tarım')
INSERT [dbo].[Sektorler] ([ID], [Adi]) VALUES (6, N'Hizmet')
SET IDENTITY_INSERT [dbo].[Sektorler] OFF
GO
SET IDENTITY_INSERT [dbo].[Sertifikalar] ON 

INSERT [dbo].[Sertifikalar] ([ID], [SertifikaAdi], [KurumAdi], [Tarih], [OzgecmisID], [Aciklama]) VALUES (1, N'sertifika 1', N'kurumadi 1', CAST(N'2021-01-01' AS Date), 1, N'aciklama 1')
INSERT [dbo].[Sertifikalar] ([ID], [SertifikaAdi], [KurumAdi], [Tarih], [OzgecmisID], [Aciklama]) VALUES (2, N'sertifika2', N'kurumadi 2', CAST(N'2023-04-04' AS Date), 1, N'aciklama 2')
INSERT [dbo].[Sertifikalar] ([ID], [SertifikaAdi], [KurumAdi], [Tarih], [OzgecmisID], [Aciklama]) VALUES (3, N'sertifika 3', N'kurumadi 3', CAST(N'2024-08-05' AS Date), 2, N'aciklama 3')
INSERT [dbo].[Sertifikalar] ([ID], [SertifikaAdi], [KurumAdi], [Tarih], [OzgecmisID], [Aciklama]) VALUES (4, N'sertifika 4', N'kurumadi 4', CAST(N'2020-09-21' AS Date), 2, N'aciklama 4')
INSERT [dbo].[Sertifikalar] ([ID], [SertifikaAdi], [KurumAdi], [Tarih], [OzgecmisID], [Aciklama]) VALUES (31, N'Microsoft Sertifikalı: Azure Temelleri', N'Microsoft', CAST(N'2023-06-15' AS Date), 3, N'aciklama 5')
INSERT [dbo].[Sertifikalar] ([ID], [SertifikaAdi], [KurumAdi], [Tarih], [OzgecmisID], [Aciklama]) VALUES (32, N'Cisco Sertifikalı Ağ Uzmanı (CCNA)', N'Cisco', CAST(N'2023-05-10' AS Date), 4, N'aciklama 6')
INSERT [dbo].[Sertifikalar] ([ID], [SertifikaAdi], [KurumAdi], [Tarih], [OzgecmisID], [Aciklama]) VALUES (33, N'Google Bulut Profesyonel Veri Mühendisi', N'Google', CAST(N'2023-04-20' AS Date), 5, N'aciklama 7')
INSERT [dbo].[Sertifikalar] ([ID], [SertifikaAdi], [KurumAdi], [Tarih], [OzgecmisID], [Aciklama]) VALUES (34, N'AWS Sertifikalı Çözümler Mimarı', N'Amazon Web Services', CAST(N'2023-03-25' AS Date), 6, N'aciklama 8')
INSERT [dbo].[Sertifikalar] ([ID], [SertifikaAdi], [KurumAdi], [Tarih], [OzgecmisID], [Aciklama]) VALUES (35, N'CompTIA Güvenlik+', N'CompTIA', CAST(N'2023-02-15' AS Date), 7, N'aciklama 9')
INSERT [dbo].[Sertifikalar] ([ID], [SertifikaAdi], [KurumAdi], [Tarih], [OzgecmisID], [Aciklama]) VALUES (36, N'Sertifikalı Etik Hacker (CEH)', N'EC-Council', CAST(N'2023-01-10' AS Date), 8, N'aciklama 10')
INSERT [dbo].[Sertifikalar] ([ID], [SertifikaAdi], [KurumAdi], [Tarih], [OzgecmisID], [Aciklama]) VALUES (37, N'Oracle Sertifikalı Java Programcısı', N'Oracle', CAST(N'2023-06-05' AS Date), 9, N'aciklama 11')
INSERT [dbo].[Sertifikalar] ([ID], [SertifikaAdi], [KurumAdi], [Tarih], [OzgecmisID], [Aciklama]) VALUES (38, N'Red Hat Sertifikalı Sistem Yöneticisi (RHCSA)', N'Red Hat', CAST(N'2023-07-01' AS Date), 10, N'aciklama 12')
INSERT [dbo].[Sertifikalar] ([ID], [SertifikaAdi], [KurumAdi], [Tarih], [OzgecmisID], [Aciklama]) VALUES (39, N'SAP Sertifikalı Uygulama Uzmanı', N'SAP', CAST(N'2023-08-20' AS Date), 11, N'aciklama 13')
INSERT [dbo].[Sertifikalar] ([ID], [SertifikaAdi], [KurumAdi], [Tarih], [OzgecmisID], [Aciklama]) VALUES (40, N'Adobe Sertifikalı Uzman (ACE)', N'Adobe', CAST(N'2023-09-15' AS Date), 12, N'aciklama 14')
INSERT [dbo].[Sertifikalar] ([ID], [SertifikaAdi], [KurumAdi], [Tarih], [OzgecmisID], [Aciklama]) VALUES (41, N'TOGAF Sertifikası', N'Open Group', CAST(N'2023-07-20' AS Date), 13, N'aciklama 15')
INSERT [dbo].[Sertifikalar] ([ID], [SertifikaAdi], [KurumAdi], [Tarih], [OzgecmisID], [Aciklama]) VALUES (42, N'PMP-Proje Yönetimi Profesyoneli', N'PMI', CAST(N'2023-03-10' AS Date), 14, N'aciklama 16')
INSERT [dbo].[Sertifikalar] ([ID], [SertifikaAdi], [KurumAdi], [Tarih], [OzgecmisID], [Aciklama]) VALUES (43, N'CISSP-Sertifikalı Bilgi Sistemleri Güvenlik Uzmanı', N'ISC2', CAST(N'2023-05-25' AS Date), 15, N'aciklama 17')
INSERT [dbo].[Sertifikalar] ([ID], [SertifikaAdi], [KurumAdi], [Tarih], [OzgecmisID], [Aciklama]) VALUES (44, N'ITIL Foundation Sertifikası', N'AXELOS', CAST(N'2023-09-05' AS Date), 16, N'aciklama 18')
INSERT [dbo].[Sertifikalar] ([ID], [SertifikaAdi], [KurumAdi], [Tarih], [OzgecmisID], [Aciklama]) VALUES (45, N'MCSA-Microsoft Sertifikalı Çözüm Uzmanı', N'Microsoft', CAST(N'2023-11-15' AS Date), 17, N'aciklama 19')
INSERT [dbo].[Sertifikalar] ([ID], [SertifikaAdi], [KurumAdi], [Tarih], [OzgecmisID], [Aciklama]) VALUES (46, N'Adobe Sertifikalı Uzman (ACE)', N'Adobe', CAST(N'2023-09-15' AS Date), 18, N'aciklama 10')
INSERT [dbo].[Sertifikalar] ([ID], [SertifikaAdi], [KurumAdi], [Tarih], [OzgecmisID], [Aciklama]) VALUES (47, N'TOGAF Sertifikası', N'Open Group', CAST(N'2023-07-20' AS Date), 19, N'aciklama 21')
INSERT [dbo].[Sertifikalar] ([ID], [SertifikaAdi], [KurumAdi], [Tarih], [OzgecmisID], [Aciklama]) VALUES (48, N'PMP-Proje Yönetimi Profesyoneli', N'PMI', CAST(N'2023-03-10' AS Date), 20, N'aciklama 22')
INSERT [dbo].[Sertifikalar] ([ID], [SertifikaAdi], [KurumAdi], [Tarih], [OzgecmisID], [Aciklama]) VALUES (49, N'CISSP-Sertifikalı Bilgi Sistemleri Güvenlik Uzmanı', N'ISC2', CAST(N'2023-05-25' AS Date), 21, N'aciklama 23')
INSERT [dbo].[Sertifikalar] ([ID], [SertifikaAdi], [KurumAdi], [Tarih], [OzgecmisID], [Aciklama]) VALUES (50, N'ITIL Foundation Sertifikası', N'AXELOS', CAST(N'2023-09-05' AS Date), 22, N'aciklama 24')
INSERT [dbo].[Sertifikalar] ([ID], [SertifikaAdi], [KurumAdi], [Tarih], [OzgecmisID], [Aciklama]) VALUES (51, N'MCSA-Microsoft Sertifikalı Çözüm Uzmanı', N'Microsoft', CAST(N'2023-11-15' AS Date), 17, N'aciklama 25')
INSERT [dbo].[Sertifikalar] ([ID], [SertifikaAdi], [KurumAdi], [Tarih], [OzgecmisID], [Aciklama]) VALUES (52, N'Google Bulut Profesyonel Veri Mühendisi', N'Google', CAST(N'2023-04-20' AS Date), 5, N'aciklama 26')
INSERT [dbo].[Sertifikalar] ([ID], [SertifikaAdi], [KurumAdi], [Tarih], [OzgecmisID], [Aciklama]) VALUES (53, N'AWS Sertifikalı Çözümler Mimarı', N'Amazon Web Services', CAST(N'2023-03-25' AS Date), 14, N'aciklama 27')
INSERT [dbo].[Sertifikalar] ([ID], [SertifikaAdi], [KurumAdi], [Tarih], [OzgecmisID], [Aciklama]) VALUES (54, N'CompTIA Güvenlik+', N'CompTIA', CAST(N'2023-02-15' AS Date), 16, N'aciklama28')
INSERT [dbo].[Sertifikalar] ([ID], [SertifikaAdi], [KurumAdi], [Tarih], [OzgecmisID], [Aciklama]) VALUES (55, N'Sertifikalı Etik Hacker (CEH)', N'EC-Council', CAST(N'2023-01-10' AS Date), 9, N'aciklama 29')
INSERT [dbo].[Sertifikalar] ([ID], [SertifikaAdi], [KurumAdi], [Tarih], [OzgecmisID], [Aciklama]) VALUES (56, N'Oracle Sertifikalı Java Programcısı', N'Oracle', CAST(N'2023-06-05' AS Date), 7, N'aciklama 30')
INSERT [dbo].[Sertifikalar] ([ID], [SertifikaAdi], [KurumAdi], [Tarih], [OzgecmisID], [Aciklama]) VALUES (57, N'Red Hat Sertifikalı Sistem Yöneticisi (RHCSA)', N'Red Hat', CAST(N'2023-07-01' AS Date), 12, N'aciklama 31')
INSERT [dbo].[Sertifikalar] ([ID], [SertifikaAdi], [KurumAdi], [Tarih], [OzgecmisID], [Aciklama]) VALUES (58, N'SAP Sertifikalı Uygulama Uzmanı', N'SAP', CAST(N'2023-08-20' AS Date), 19, N'aciklama 32')
INSERT [dbo].[Sertifikalar] ([ID], [SertifikaAdi], [KurumAdi], [Tarih], [OzgecmisID], [Aciklama]) VALUES (59, N'Adobe Sertifikalı Uzman (ACE)', N'Adobe', CAST(N'2023-09-15' AS Date), 21, N'aciklama 33')
SET IDENTITY_INSERT [dbo].[Sertifikalar] OFF
GO
SET IDENTITY_INSERT [dbo].[Sinavlar] ON 

INSERT [dbo].[Sinavlar] ([ID], [Adi], [Puan], [Tarih], [OzgecmisID]) VALUES (1, N'KPSS', 80, CAST(N'2023-08-21' AS Date), 1)
INSERT [dbo].[Sinavlar] ([ID], [Adi], [Puan], [Tarih], [OzgecmisID]) VALUES (2, N'YDS', 70, CAST(N'2022-12-15' AS Date), 1)
INSERT [dbo].[Sinavlar] ([ID], [Adi], [Puan], [Tarih], [OzgecmisID]) VALUES (3, N'KPSS', 75, CAST(N'2023-08-21' AS Date), 2)
INSERT [dbo].[Sinavlar] ([ID], [Adi], [Puan], [Tarih], [OzgecmisID]) VALUES (4, N'LYS', 80, CAST(N'2020-06-20' AS Date), 2)
INSERT [dbo].[Sinavlar] ([ID], [Adi], [Puan], [Tarih], [OzgecmisID]) VALUES (77, N'KPSS', 85, CAST(N'2023-06-15' AS Date), 3)
INSERT [dbo].[Sinavlar] ([ID], [Adi], [Puan], [Tarih], [OzgecmisID]) VALUES (78, N'YDS', 90, CAST(N'2023-05-10' AS Date), 3)
INSERT [dbo].[Sinavlar] ([ID], [Adi], [Puan], [Tarih], [OzgecmisID]) VALUES (79, N'LYS', 78, CAST(N'2023-04-20' AS Date), 4)
INSERT [dbo].[Sinavlar] ([ID], [Adi], [Puan], [Tarih], [OzgecmisID]) VALUES (80, N'ALES', 88, CAST(N'2023-03-25' AS Date), 5)
INSERT [dbo].[Sinavlar] ([ID], [Adi], [Puan], [Tarih], [OzgecmisID]) VALUES (81, N'DGS', 80, CAST(N'2023-01-10' AS Date), 6)
INSERT [dbo].[Sinavlar] ([ID], [Adi], [Puan], [Tarih], [OzgecmisID]) VALUES (82, N'YKS', 84, CAST(N'2023-06-05' AS Date), 7)
INSERT [dbo].[Sinavlar] ([ID], [Adi], [Puan], [Tarih], [OzgecmisID]) VALUES (83, N'YÖKDİL', 75, CAST(N'2023-07-01' AS Date), 8)
INSERT [dbo].[Sinavlar] ([ID], [Adi], [Puan], [Tarih], [OzgecmisID]) VALUES (84, N'ÖABT', 89, CAST(N'2023-08-20' AS Date), 9)
INSERT [dbo].[Sinavlar] ([ID], [Adi], [Puan], [Tarih], [OzgecmisID]) VALUES (85, N'MSÜ', 83, CAST(N'2023-09-15' AS Date), 10)
INSERT [dbo].[Sinavlar] ([ID], [Adi], [Puan], [Tarih], [OzgecmisID]) VALUES (86, N'KPSS', 80, CAST(N'2023-06-15' AS Date), 11)
INSERT [dbo].[Sinavlar] ([ID], [Adi], [Puan], [Tarih], [OzgecmisID]) VALUES (87, N'YDS', 80, CAST(N'2023-05-10' AS Date), 12)
INSERT [dbo].[Sinavlar] ([ID], [Adi], [Puan], [Tarih], [OzgecmisID]) VALUES (88, N'LYS', 68, CAST(N'2023-04-20' AS Date), 13)
INSERT [dbo].[Sinavlar] ([ID], [Adi], [Puan], [Tarih], [OzgecmisID]) VALUES (89, N'ALES', 78, CAST(N'2023-03-25' AS Date), 14)
INSERT [dbo].[Sinavlar] ([ID], [Adi], [Puan], [Tarih], [OzgecmisID]) VALUES (90, N'DGS', 84, CAST(N'2023-01-10' AS Date), 15)
INSERT [dbo].[Sinavlar] ([ID], [Adi], [Puan], [Tarih], [OzgecmisID]) VALUES (91, N'YKS', 81, CAST(N'2023-06-05' AS Date), 16)
INSERT [dbo].[Sinavlar] ([ID], [Adi], [Puan], [Tarih], [OzgecmisID]) VALUES (92, N'YÖKDİL', 65, CAST(N'2023-07-01' AS Date), 17)
INSERT [dbo].[Sinavlar] ([ID], [Adi], [Puan], [Tarih], [OzgecmisID]) VALUES (93, N'ÖABT', 79, CAST(N'2023-08-20' AS Date), 18)
INSERT [dbo].[Sinavlar] ([ID], [Adi], [Puan], [Tarih], [OzgecmisID]) VALUES (94, N'MSÜ', 88, CAST(N'2023-09-15' AS Date), 19)
INSERT [dbo].[Sinavlar] ([ID], [Adi], [Puan], [Tarih], [OzgecmisID]) VALUES (95, N'KPSS', 77, CAST(N'2023-06-15' AS Date), 20)
INSERT [dbo].[Sinavlar] ([ID], [Adi], [Puan], [Tarih], [OzgecmisID]) VALUES (96, N'YDS', 73, CAST(N'2023-05-10' AS Date), 21)
INSERT [dbo].[Sinavlar] ([ID], [Adi], [Puan], [Tarih], [OzgecmisID]) VALUES (97, N'LYS', 73, CAST(N'2023-04-20' AS Date), 22)
INSERT [dbo].[Sinavlar] ([ID], [Adi], [Puan], [Tarih], [OzgecmisID]) VALUES (98, N'ALES', 89, CAST(N'2023-03-25' AS Date), 14)
INSERT [dbo].[Sinavlar] ([ID], [Adi], [Puan], [Tarih], [OzgecmisID]) VALUES (99, N'DGS', 81, CAST(N'2023-01-10' AS Date), 22)
INSERT [dbo].[Sinavlar] ([ID], [Adi], [Puan], [Tarih], [OzgecmisID]) VALUES (100, N'YKS', 72, CAST(N'2023-06-05' AS Date), 21)
INSERT [dbo].[Sinavlar] ([ID], [Adi], [Puan], [Tarih], [OzgecmisID]) VALUES (101, N'YÖKDİL', 79, CAST(N'2023-07-01' AS Date), 8)
INSERT [dbo].[Sinavlar] ([ID], [Adi], [Puan], [Tarih], [OzgecmisID]) VALUES (102, N'ÖABT', 69, CAST(N'2023-08-20' AS Date), 9)
INSERT [dbo].[Sinavlar] ([ID], [Adi], [Puan], [Tarih], [OzgecmisID]) VALUES (103, N'MSÜ', 87, CAST(N'2023-09-15' AS Date), 13)
INSERT [dbo].[Sinavlar] ([ID], [Adi], [Puan], [Tarih], [OzgecmisID]) VALUES (104, N'KPSS', 77, CAST(N'2023-06-15' AS Date), 20)
INSERT [dbo].[Sinavlar] ([ID], [Adi], [Puan], [Tarih], [OzgecmisID]) VALUES (105, N'YDS', 78, CAST(N'2023-05-10' AS Date), 10)
INSERT [dbo].[Sinavlar] ([ID], [Adi], [Puan], [Tarih], [OzgecmisID]) VALUES (106, N'LYS', 75, CAST(N'2023-04-20' AS Date), 19)
INSERT [dbo].[Sinavlar] ([ID], [Adi], [Puan], [Tarih], [OzgecmisID]) VALUES (107, N'ALES', 87, CAST(N'2023-03-25' AS Date), 11)
INSERT [dbo].[Sinavlar] ([ID], [Adi], [Puan], [Tarih], [OzgecmisID]) VALUES (108, N'DGS', 74, CAST(N'2023-01-10' AS Date), 15)
INSERT [dbo].[Sinavlar] ([ID], [Adi], [Puan], [Tarih], [OzgecmisID]) VALUES (109, N'YKS', 77, CAST(N'2023-06-05' AS Date), 16)
INSERT [dbo].[Sinavlar] ([ID], [Adi], [Puan], [Tarih], [OzgecmisID]) VALUES (110, N'YÖKDİL', 79, CAST(N'2023-07-01' AS Date), 18)
INSERT [dbo].[Sinavlar] ([ID], [Adi], [Puan], [Tarih], [OzgecmisID]) VALUES (111, N'ÖABT', 69, CAST(N'2023-08-20' AS Date), 7)
INSERT [dbo].[Sinavlar] ([ID], [Adi], [Puan], [Tarih], [OzgecmisID]) VALUES (112, N'MSÜ', 70, CAST(N'2023-09-15' AS Date), 3)
SET IDENTITY_INSERT [dbo].[Sinavlar] OFF
GO
SET IDENTITY_INSERT [dbo].[Sirket] ON 

INSERT [dbo].[Sirket] ([ID], [SirketAdi], [TelNo], [Adres], [Hakkimizda], [TaniticiLink], [UyelikID]) VALUES (1, N'SektörSoft', N'02120141245', N'YTÜ TeknoPark', N'hakkımızda bölümü yazısı', N'sektorsoft.***', 4)
INSERT [dbo].[Sirket] ([ID], [SirketAdi], [TelNo], [Adres], [Hakkimizda], [TaniticiLink], [UyelikID]) VALUES (2, N'Tosya Yazılım', N'03663134424', N'Tosya ... mahallesi', N'tosyada kurulan şirket', N'tosya.net', 5)
INSERT [dbo].[Sirket] ([ID], [SirketAdi], [TelNo], [Adres], [Hakkimizda], [TaniticiLink], [UyelikID]) VALUES (3, N'Tech Innovators', N'0212 345 67 89', N'İstanbul, Türkiye', N'Yazılım geliştirme ve teknoloji danışmanlığı hizmetleri sunuyoruz.', N'https://techinnovators.com', 19)
INSERT [dbo].[Sirket] ([ID], [SirketAdi], [TelNo], [Adres], [Hakkimizda], [TaniticiLink], [UyelikID]) VALUES (4, N'Code Masters', N'0312 456 78 90', N'Ankara, Türkiye', N'Yazılım çözümleri ve inovasyon merkezi.', N'https://codemasters.com', 20)
INSERT [dbo].[Sirket] ([ID], [SirketAdi], [TelNo], [Adres], [Hakkimizda], [TaniticiLink], [UyelikID]) VALUES (5, N'Digital Solutions', N'0232 567 89 01', N'İzmir, Türkiye', N'Web ve mobil uygulama geliştirme hizmetleri sunuyoruz.', N'https://digitalsolutions.com', 26)
INSERT [dbo].[Sirket] ([ID], [SirketAdi], [TelNo], [Adres], [Hakkimizda], [TaniticiLink], [UyelikID]) VALUES (6, N'NextGen Software', N'0224 678 90 12', N'Bursa, Türkiye', N'Geleceğin yazılım çözümlerini bugün sunuyoruz.', N'https://nextgensoftware.com', 28)
SET IDENTITY_INSERT [dbo].[Sirket] OFF
GO
SET IDENTITY_INSERT [dbo].[SirketIlan] ON 

INSERT [dbo].[SirketIlan] ([ID], [SirketID], [IlanID]) VALUES (1, 1, 1)
INSERT [dbo].[SirketIlan] ([ID], [SirketID], [IlanID]) VALUES (2, 1, 2)
INSERT [dbo].[SirketIlan] ([ID], [SirketID], [IlanID]) VALUES (3, 2, 3)
INSERT [dbo].[SirketIlan] ([ID], [SirketID], [IlanID]) VALUES (4, 2, 4)
INSERT [dbo].[SirketIlan] ([ID], [SirketID], [IlanID]) VALUES (5, 3, 5)
INSERT [dbo].[SirketIlan] ([ID], [SirketID], [IlanID]) VALUES (6, 3, 6)
INSERT [dbo].[SirketIlan] ([ID], [SirketID], [IlanID]) VALUES (7, 4, 7)
INSERT [dbo].[SirketIlan] ([ID], [SirketID], [IlanID]) VALUES (8, 4, 8)
INSERT [dbo].[SirketIlan] ([ID], [SirketID], [IlanID]) VALUES (9, 5, 9)
INSERT [dbo].[SirketIlan] ([ID], [SirketID], [IlanID]) VALUES (10, 4, 10)
INSERT [dbo].[SirketIlan] ([ID], [SirketID], [IlanID]) VALUES (11, 6, 11)
INSERT [dbo].[SirketIlan] ([ID], [SirketID], [IlanID]) VALUES (12, 6, 12)
INSERT [dbo].[SirketIlan] ([ID], [SirketID], [IlanID]) VALUES (13, 1, 13)
INSERT [dbo].[SirketIlan] ([ID], [SirketID], [IlanID]) VALUES (14, 2, 14)
INSERT [dbo].[SirketIlan] ([ID], [SirketID], [IlanID]) VALUES (15, 2, 15)
INSERT [dbo].[SirketIlan] ([ID], [SirketID], [IlanID]) VALUES (16, 4, 16)
INSERT [dbo].[SirketIlan] ([ID], [SirketID], [IlanID]) VALUES (17, 3, 17)
INSERT [dbo].[SirketIlan] ([ID], [SirketID], [IlanID]) VALUES (18, 3, 18)
INSERT [dbo].[SirketIlan] ([ID], [SirketID], [IlanID]) VALUES (19, 5, 19)
INSERT [dbo].[SirketIlan] ([ID], [SirketID], [IlanID]) VALUES (20, 4, 20)
INSERT [dbo].[SirketIlan] ([ID], [SirketID], [IlanID]) VALUES (21, 6, 21)
INSERT [dbo].[SirketIlan] ([ID], [SirketID], [IlanID]) VALUES (22, 2, 22)
SET IDENTITY_INSERT [dbo].[SirketIlan] OFF
GO
SET IDENTITY_INSERT [dbo].[SirketSehir] ON 

INSERT [dbo].[SirketSehir] ([ID], [SirketID], [SehirID]) VALUES (1, 1, 34)
INSERT [dbo].[SirketSehir] ([ID], [SirketID], [SehirID]) VALUES (2, 2, 34)
INSERT [dbo].[SirketSehir] ([ID], [SirketID], [SehirID]) VALUES (3, 3, 6)
INSERT [dbo].[SirketSehir] ([ID], [SirketID], [SehirID]) VALUES (4, 4, 35)
INSERT [dbo].[SirketSehir] ([ID], [SirketID], [SehirID]) VALUES (5, 5, 35)
INSERT [dbo].[SirketSehir] ([ID], [SirketID], [SehirID]) VALUES (6, 6, 34)
INSERT [dbo].[SirketSehir] ([ID], [SirketID], [SehirID]) VALUES (7, 5, 34)
INSERT [dbo].[SirketSehir] ([ID], [SirketID], [SehirID]) VALUES (8, 5, 6)
INSERT [dbo].[SirketSehir] ([ID], [SirketID], [SehirID]) VALUES (9, 4, 34)
INSERT [dbo].[SirketSehir] ([ID], [SirketID], [SehirID]) VALUES (10, 3, 34)
INSERT [dbo].[SirketSehir] ([ID], [SirketID], [SehirID]) VALUES (11, 2, 6)
INSERT [dbo].[SirketSehir] ([ID], [SirketID], [SehirID]) VALUES (12, 1, 41)
SET IDENTITY_INSERT [dbo].[SirketSehir] OFF
GO
SET IDENTITY_INSERT [dbo].[SirketSektor] ON 

INSERT [dbo].[SirketSektor] ([ID], [SektorID], [SirketID]) VALUES (1, 1, 1)
INSERT [dbo].[SirketSektor] ([ID], [SektorID], [SirketID]) VALUES (2, 3, 2)
INSERT [dbo].[SirketSektor] ([ID], [SektorID], [SirketID]) VALUES (3, 4, 1)
INSERT [dbo].[SirketSektor] ([ID], [SektorID], [SirketID]) VALUES (4, 6, 2)
INSERT [dbo].[SirketSektor] ([ID], [SektorID], [SirketID]) VALUES (5, 1, 3)
INSERT [dbo].[SirketSektor] ([ID], [SektorID], [SirketID]) VALUES (6, 3, 4)
INSERT [dbo].[SirketSektor] ([ID], [SektorID], [SirketID]) VALUES (7, 4, 6)
INSERT [dbo].[SirketSektor] ([ID], [SektorID], [SirketID]) VALUES (8, 1, 4)
INSERT [dbo].[SirketSektor] ([ID], [SektorID], [SirketID]) VALUES (9, 1, 6)
INSERT [dbo].[SirketSektor] ([ID], [SektorID], [SirketID]) VALUES (10, 1, 5)
INSERT [dbo].[SirketSektor] ([ID], [SektorID], [SirketID]) VALUES (11, 2, 5)
SET IDENTITY_INSERT [dbo].[SirketSektor] OFF
GO
SET IDENTITY_INSERT [dbo].[SirketSosyalMedya] ON 

INSERT [dbo].[SirketSosyalMedya] ([ID], [SosyalMedyaID], [SirketID], [HesapAdi]) VALUES (1, 3, 1, N'sektorsoft')
INSERT [dbo].[SirketSosyalMedya] ([ID], [SosyalMedyaID], [SirketID], [HesapAdi]) VALUES (2, 6, 1, N'sektorsoftli')
INSERT [dbo].[SirketSosyalMedya] ([ID], [SosyalMedyaID], [SirketID], [HesapAdi]) VALUES (3, 6, 2, N'tosyayaz')
INSERT [dbo].[SirketSosyalMedya] ([ID], [SosyalMedyaID], [SirketID], [HesapAdi]) VALUES (4, 4, 2, N'tosyaface')
INSERT [dbo].[SirketSosyalMedya] ([ID], [SosyalMedyaID], [SirketID], [HesapAdi]) VALUES (5, 6, 3, N'innovatorsTech')
INSERT [dbo].[SirketSosyalMedya] ([ID], [SosyalMedyaID], [SirketID], [HesapAdi]) VALUES (6, 5, 3, N'innovators')
INSERT [dbo].[SirketSosyalMedya] ([ID], [SosyalMedyaID], [SirketID], [HesapAdi]) VALUES (7, 6, 4, N'codemasters')
INSERT [dbo].[SirketSosyalMedya] ([ID], [SosyalMedyaID], [SirketID], [HesapAdi]) VALUES (8, 6, 5, N'digitalSolutions')
INSERT [dbo].[SirketSosyalMedya] ([ID], [SosyalMedyaID], [SirketID], [HesapAdi]) VALUES (9, 6, 6, N'NextGenSoft')
SET IDENTITY_INSERT [dbo].[SirketSosyalMedya] OFF
GO
SET IDENTITY_INSERT [dbo].[SirketTakip] ON 

INSERT [dbo].[SirketTakip] ([ID], [UyelikID], [SirketID]) VALUES (2, 1, 2)
INSERT [dbo].[SirketTakip] ([ID], [UyelikID], [SirketID]) VALUES (3, 2, 1)
INSERT [dbo].[SirketTakip] ([ID], [UyelikID], [SirketID]) VALUES (4, 1, 1)
INSERT [dbo].[SirketTakip] ([ID], [UyelikID], [SirketID]) VALUES (5, 1, 3)
INSERT [dbo].[SirketTakip] ([ID], [UyelikID], [SirketID]) VALUES (6, 9, 5)
INSERT [dbo].[SirketTakip] ([ID], [UyelikID], [SirketID]) VALUES (7, 17, 6)
INSERT [dbo].[SirketTakip] ([ID], [UyelikID], [SirketID]) VALUES (8, 12, 3)
INSERT [dbo].[SirketTakip] ([ID], [UyelikID], [SirketID]) VALUES (9, 12, 6)
INSERT [dbo].[SirketTakip] ([ID], [UyelikID], [SirketID]) VALUES (10, 24, 3)
INSERT [dbo].[SirketTakip] ([ID], [UyelikID], [SirketID]) VALUES (11, 23, 5)
INSERT [dbo].[SirketTakip] ([ID], [UyelikID], [SirketID]) VALUES (12, 12, 2)
INSERT [dbo].[SirketTakip] ([ID], [UyelikID], [SirketID]) VALUES (13, 25, 3)
INSERT [dbo].[SirketTakip] ([ID], [UyelikID], [SirketID]) VALUES (14, 25, 6)
INSERT [dbo].[SirketTakip] ([ID], [UyelikID], [SirketID]) VALUES (15, 22, 4)
INSERT [dbo].[SirketTakip] ([ID], [UyelikID], [SirketID]) VALUES (16, 14, 4)
INSERT [dbo].[SirketTakip] ([ID], [UyelikID], [SirketID]) VALUES (17, 15, 5)
INSERT [dbo].[SirketTakip] ([ID], [UyelikID], [SirketID]) VALUES (18, 15, 4)
INSERT [dbo].[SirketTakip] ([ID], [UyelikID], [SirketID]) VALUES (19, 16, 4)
INSERT [dbo].[SirketTakip] ([ID], [UyelikID], [SirketID]) VALUES (20, 16, 3)
INSERT [dbo].[SirketTakip] ([ID], [UyelikID], [SirketID]) VALUES (21, 27, 1)
INSERT [dbo].[SirketTakip] ([ID], [UyelikID], [SirketID]) VALUES (22, 27, 4)
SET IDENTITY_INSERT [dbo].[SirketTakip] OFF
GO
SET IDENTITY_INSERT [dbo].[SosyalMedya] ON 

INSERT [dbo].[SosyalMedya] ([ID], [Adi]) VALUES (3, N'X')
INSERT [dbo].[SosyalMedya] ([ID], [Adi]) VALUES (4, N'Facebook')
INSERT [dbo].[SosyalMedya] ([ID], [Adi]) VALUES (5, N'Instagram')
INSERT [dbo].[SosyalMedya] ([ID], [Adi]) VALUES (6, N'Linkedin')
INSERT [dbo].[SosyalMedya] ([ID], [Adi]) VALUES (7, N'Github')
INSERT [dbo].[SosyalMedya] ([ID], [Adi]) VALUES (8, N'Reddit')
SET IDENTITY_INSERT [dbo].[SosyalMedya] OFF
GO
SET IDENTITY_INSERT [dbo].[Ulkeler] ON 

INSERT [dbo].[Ulkeler] ([ID], [Adi]) VALUES (1, N'Türkiye')
INSERT [dbo].[Ulkeler] ([ID], [Adi]) VALUES (2, N'Almanya')
INSERT [dbo].[Ulkeler] ([ID], [Adi]) VALUES (3, N'Fransa')
INSERT [dbo].[Ulkeler] ([ID], [Adi]) VALUES (4, N'ABD')
INSERT [dbo].[Ulkeler] ([ID], [Adi]) VALUES (5, N'Ukrayna')
INSERT [dbo].[Ulkeler] ([ID], [Adi]) VALUES (6, N'İran')
INSERT [dbo].[Ulkeler] ([ID], [Adi]) VALUES (7, N'Hollanda')
INSERT [dbo].[Ulkeler] ([ID], [Adi]) VALUES (8, N'İrlanda')
INSERT [dbo].[Ulkeler] ([ID], [Adi]) VALUES (9, N'Japonya')
INSERT [dbo].[Ulkeler] ([ID], [Adi]) VALUES (10, N'Çin')
INSERT [dbo].[Ulkeler] ([ID], [Adi]) VALUES (11, N'Güney Kore')
SET IDENTITY_INSERT [dbo].[Ulkeler] OFF
GO
SET IDENTITY_INSERT [dbo].[Universite] ON 

INSERT [dbo].[Universite] ([ID], [Adi]) VALUES (1, N'Cumhuriyet Üniversitesi')
INSERT [dbo].[Universite] ([ID], [Adi]) VALUES (2, N'Boğaziçi Üniversitesi')
INSERT [dbo].[Universite] ([ID], [Adi]) VALUES (3, N'Marmara Üniversitesi')
INSERT [dbo].[Universite] ([ID], [Adi]) VALUES (4, N'KTÜ')
INSERT [dbo].[Universite] ([ID], [Adi]) VALUES (5, N'İTÜ')
INSERT [dbo].[Universite] ([ID], [Adi]) VALUES (6, N'ODTÜ')
INSERT [dbo].[Universite] ([ID], [Adi]) VALUES (7, N'HİTİT Üni')
INSERT [dbo].[Universite] ([ID], [Adi]) VALUES (8, N'Kastamonu Üniversitesi')
INSERT [dbo].[Universite] ([ID], [Adi]) VALUES (9, N'YTÜ')
INSERT [dbo].[Universite] ([ID], [Adi]) VALUES (10, N'19 Mayıs Üniversitesi')
INSERT [dbo].[Universite] ([ID], [Adi]) VALUES (11, N'9 Eylül Üniversitesi')
INSERT [dbo].[Universite] ([ID], [Adi]) VALUES (12, N'Ege Üniversitesi')
INSERT [dbo].[Universite] ([ID], [Adi]) VALUES (13, N'Gazi Üniversitesi')
INSERT [dbo].[Universite] ([ID], [Adi]) VALUES (14, N'Akdeniz Üniversitesi')
SET IDENTITY_INSERT [dbo].[Universite] OFF
GO
SET IDENTITY_INSERT [dbo].[Uyelik] ON 

INSERT [dbo].[Uyelik] ([ID], [Isim], [Soyisim], [DogumTarihi], [KullaniciAdi], [Email], [Sifre], [KullaniciTipi]) VALUES (1, N'Mustafa Levent', N'Aydemir', CAST(N'1997-02-24' AS Date), N'leventaydemir', N'levent.ydmr@gmail.com', N'yenisifrem', N'is_arayan')
INSERT [dbo].[Uyelik] ([ID], [Isim], [Soyisim], [DogumTarihi], [KullaniciAdi], [Email], [Sifre], [KullaniciTipi]) VALUES (2, N'Emre', N'Nefesli', CAST(N'1999-02-04' AS Date), N'emrenefesli', N'emrenqw@gmail.com', N'4563210', N'is_arayan')
INSERT [dbo].[Uyelik] ([ID], [Isim], [Soyisim], [DogumTarihi], [KullaniciAdi], [Email], [Sifre], [KullaniciTipi]) VALUES (4, N'Tunahan', N'Boz', CAST(N'1998-03-10' AS Date), N'tunahan', N'tunahan@gmail.com', N'yenisifrem', N'is_veren')
INSERT [dbo].[Uyelik] ([ID], [Isim], [Soyisim], [DogumTarihi], [KullaniciAdi], [Email], [Sifre], [KullaniciTipi]) VALUES (5, N'Gökhan', N'Pirizoğlu', CAST(N'1998-10-02' AS Date), N'gokhanprz', N'gokhanprz@gmail.com', N'235471wes', N'is_veren')
INSERT [dbo].[Uyelik] ([ID], [Isim], [Soyisim], [DogumTarihi], [KullaniciAdi], [Email], [Sifre], [KullaniciTipi]) VALUES (6, N'Emre', N'Akbaş', CAST(N'1994-12-12' AS Date), N'akbasemre', N'emreakbas@outlook.com', N'akb1547', N'is_arayan')
INSERT [dbo].[Uyelik] ([ID], [Isim], [Soyisim], [DogumTarihi], [KullaniciAdi], [Email], [Sifre], [KullaniciTipi]) VALUES (7, N'Mehmet', N'Özöget', CAST(N'1996-10-29' AS Date), N'ozoget37', N'mehmetozogt@gmail.com', N'ozogmehmet23', N'is_arayan')
INSERT [dbo].[Uyelik] ([ID], [Isim], [Soyisim], [DogumTarihi], [KullaniciAdi], [Email], [Sifre], [KullaniciTipi]) VALUES (8, N'Fatih', N'Koşar', CAST(N'1998-05-15' AS Date), N'fatih3737', N'fatihkosar@hotmail.com', N'78915we12', N'is_arayan')
INSERT [dbo].[Uyelik] ([ID], [Isim], [Soyisim], [DogumTarihi], [KullaniciAdi], [Email], [Sifre], [KullaniciTipi]) VALUES (9, N'Ahmet', N'Yılmaz', CAST(N'1985-05-15' AS Date), N'ahmetyilmaz', N'ahmet.yilmaz@example.com', N'sifre123', N'is_arayan')
INSERT [dbo].[Uyelik] ([ID], [Isim], [Soyisim], [DogumTarihi], [KullaniciAdi], [Email], [Sifre], [KullaniciTipi]) VALUES (10, N'Elif', N'Demir', CAST(N'1990-11-22' AS Date), N'elifdemir', N'elif.demir@example.com', N'parola456', N'is_arayan')
INSERT [dbo].[Uyelik] ([ID], [Isim], [Soyisim], [DogumTarihi], [KullaniciAdi], [Email], [Sifre], [KullaniciTipi]) VALUES (11, N'Mehmet', N'Kaya', CAST(N'1988-02-10' AS Date), N'mehmetkaya', N'mehmet.kaya@example.com', N'gizli789', N'is_arayan')
INSERT [dbo].[Uyelik] ([ID], [Isim], [Soyisim], [DogumTarihi], [KullaniciAdi], [Email], [Sifre], [KullaniciTipi]) VALUES (12, N'Ayşe', N'Öztürk', CAST(N'1995-07-30' AS Date), N'ayseozturk', N'ayse.ozturk@example.com', N'sifre321', N'is_arayan')
INSERT [dbo].[Uyelik] ([ID], [Isim], [Soyisim], [DogumTarihi], [KullaniciAdi], [Email], [Sifre], [KullaniciTipi]) VALUES (13, N'Fatma', N'Çelik', CAST(N'2000-01-05' AS Date), N'fatmacelik', N'fatma.celik@example.com', N'parola654', N'is_arayan')
INSERT [dbo].[Uyelik] ([ID], [Isim], [Soyisim], [DogumTarihi], [KullaniciAdi], [Email], [Sifre], [KullaniciTipi]) VALUES (14, N'Ali', N'Şahin', CAST(N'1983-03-25' AS Date), N'alisahin', N'ali.sahin@example.com', N'gizli987', N'is_arayan')
INSERT [dbo].[Uyelik] ([ID], [Isim], [Soyisim], [DogumTarihi], [KullaniciAdi], [Email], [Sifre], [KullaniciTipi]) VALUES (15, N'Zeynep', N'Yıldırım', CAST(N'1992-09-17' AS Date), N'zeynepyildirim', N'zeynep.yildirim@example.com', N'sifre456', N'is_arayan')
INSERT [dbo].[Uyelik] ([ID], [Isim], [Soyisim], [DogumTarihi], [KullaniciAdi], [Email], [Sifre], [KullaniciTipi]) VALUES (16, N'Emre', N'Kurt', CAST(N'1987-12-14' AS Date), N'emrekurt', N'emre.kurt@example.com', N'parola789', N'is_arayan')
INSERT [dbo].[Uyelik] ([ID], [Isim], [Soyisim], [DogumTarihi], [KullaniciAdi], [Email], [Sifre], [KullaniciTipi]) VALUES (17, N'Merve', N'Aydın', CAST(N'1998-06-02' AS Date), N'merveaydin', N'merve.aydin@example.com', N'gizli321', N'is_arayan')
INSERT [dbo].[Uyelik] ([ID], [Isim], [Soyisim], [DogumTarihi], [KullaniciAdi], [Email], [Sifre], [KullaniciTipi]) VALUES (18, N'Hakan', N'Doğan', CAST(N'1981-08-19' AS Date), N'hakandogan', N'hakan.dogan@example.com', N'sifre654', N'is_arayan')
INSERT [dbo].[Uyelik] ([ID], [Isim], [Soyisim], [DogumTarihi], [KullaniciAdi], [Email], [Sifre], [KullaniciTipi]) VALUES (19, N'Kerem', N'Güneş', CAST(N'1991-04-21' AS Date), N'keremgunes', N'kerem.gunes@example.com', N'sifre987', N'is_veren')
INSERT [dbo].[Uyelik] ([ID], [Isim], [Soyisim], [DogumTarihi], [KullaniciAdi], [Email], [Sifre], [KullaniciTipi]) VALUES (20, N'Selin', N'Arslan', CAST(N'1986-12-15' AS Date), N'selinarslan', N'selin.arslan@example.com', N'parola123', N'is_veren')
INSERT [dbo].[Uyelik] ([ID], [Isim], [Soyisim], [DogumTarihi], [KullaniciAdi], [Email], [Sifre], [KullaniciTipi]) VALUES (21, N'Berk', N'Aksoy', CAST(N'1993-08-08' AS Date), N'berkaksoy', N'berk.aksoy@example.com', N'gizli456', N'is_arayan')
INSERT [dbo].[Uyelik] ([ID], [Isim], [Soyisim], [DogumTarihi], [KullaniciAdi], [Email], [Sifre], [KullaniciTipi]) VALUES (22, N'Leyla', N'Kara', CAST(N'1999-03-12' AS Date), N'leylakara', N'leyla.kara@example.com', N'sifre321', N'is_arayan')
INSERT [dbo].[Uyelik] ([ID], [Isim], [Soyisim], [DogumTarihi], [KullaniciAdi], [Email], [Sifre], [KullaniciTipi]) VALUES (23, N'Cem', N'Yıldız', CAST(N'1984-10-03' AS Date), N'cemyildiz', N'cem.yildiz@example.com', N'parola654', N'is_arayan')
INSERT [dbo].[Uyelik] ([ID], [Isim], [Soyisim], [DogumTarihi], [KullaniciAdi], [Email], [Sifre], [KullaniciTipi]) VALUES (24, N'Ece', N'Koç', CAST(N'1996-07-29' AS Date), N'ecekoc', N'ece.koc@example.com', N'gizli789', N'is_arayan')
INSERT [dbo].[Uyelik] ([ID], [Isim], [Soyisim], [DogumTarihi], [KullaniciAdi], [Email], [Sifre], [KullaniciTipi]) VALUES (25, N'Barış', N'Özdemir', CAST(N'1992-11-19' AS Date), N'barisozdemir', N'baris.ozdemir@example.com', N'sifre654', N'is_arayan')
INSERT [dbo].[Uyelik] ([ID], [Isim], [Soyisim], [DogumTarihi], [KullaniciAdi], [Email], [Sifre], [KullaniciTipi]) VALUES (26, N'Derya', N'Tekin', CAST(N'1988-05-25' AS Date), N'deryatekin', N'derya.tekin@example.com', N'parola987', N'is_veren')
INSERT [dbo].[Uyelik] ([ID], [Isim], [Soyisim], [DogumTarihi], [KullaniciAdi], [Email], [Sifre], [KullaniciTipi]) VALUES (27, N'Furkan', N'Sevim', CAST(N'2001-09-14' AS Date), N'furkansevim', N'furkan.sevim@example.com', N'gizli321', N'is_arayan')
INSERT [dbo].[Uyelik] ([ID], [Isim], [Soyisim], [DogumTarihi], [KullaniciAdi], [Email], [Sifre], [KullaniciTipi]) VALUES (28, N'Melis', N'Ersoy', CAST(N'1982-02-11' AS Date), N'melisersoy', N'melis.ersoy@example.com', N'sifre123', N'is_veren')
SET IDENTITY_INSERT [dbo].[Uyelik] OFF
GO
SET IDENTITY_INSERT [dbo].[YabanciDiller] ON 

INSERT [dbo].[YabanciDiller] ([ID], [Adi]) VALUES (1, N'İngilizce')
INSERT [dbo].[YabanciDiller] ([ID], [Adi]) VALUES (2, N'Almanca')
INSERT [dbo].[YabanciDiller] ([ID], [Adi]) VALUES (3, N'Fransızca')
INSERT [dbo].[YabanciDiller] ([ID], [Adi]) VALUES (4, N'Rusça')
INSERT [dbo].[YabanciDiller] ([ID], [Adi]) VALUES (5, N'İspanyolca')
SET IDENTITY_INSERT [dbo].[YabanciDiller] OFF
GO
SET IDENTITY_INSERT [dbo].[YazilimDilleri] ON 

INSERT [dbo].[YazilimDilleri] ([ID], [Adi]) VALUES (1, N'C#')
INSERT [dbo].[YazilimDilleri] ([ID], [Adi]) VALUES (2, N'Javascript')
INSERT [dbo].[YazilimDilleri] ([ID], [Adi]) VALUES (3, N'Java')
INSERT [dbo].[YazilimDilleri] ([ID], [Adi]) VALUES (4, N'Python')
INSERT [dbo].[YazilimDilleri] ([ID], [Adi]) VALUES (5, N'PHP')
INSERT [dbo].[YazilimDilleri] ([ID], [Adi]) VALUES (6, N'SQL')
SET IDENTITY_INSERT [dbo].[YazilimDilleri] OFF
GO
ALTER TABLE [dbo].[Hareket] ADD  DEFAULT (getdate()) FOR [HareketTarihi]
GO
ALTER TABLE [dbo].[Uyelik] ADD  DEFAULT ('is_arayan') FOR [KullaniciTipi]
GO
ALTER TABLE [dbo].[Basvuranlar]  WITH CHECK ADD  CONSTRAINT [FK_Basvuranlar_IsIlanlari] FOREIGN KEY([IlanID])
REFERENCES [dbo].[Ilan] ([ID])
GO
ALTER TABLE [dbo].[Basvuranlar] CHECK CONSTRAINT [FK_Basvuranlar_IsIlanlari]
GO
ALTER TABLE [dbo].[Basvuranlar]  WITH CHECK ADD  CONSTRAINT [FK_Basvuranlar_Ozgecmis] FOREIGN KEY([OzgecmisID])
REFERENCES [dbo].[Ozgecmis] ([ID])
GO
ALTER TABLE [dbo].[Basvuranlar] CHECK CONSTRAINT [FK_Basvuranlar_Ozgecmis]
GO
ALTER TABLE [dbo].[BolumAdi]  WITH CHECK ADD  CONSTRAINT [FK_BolumAdi_FakulteAdi] FOREIGN KEY([FakulteID])
REFERENCES [dbo].[FakulteAdi] ([ID])
GO
ALTER TABLE [dbo].[BolumAdi] CHECK CONSTRAINT [FK_BolumAdi_FakulteAdi]
GO
ALTER TABLE [dbo].[Egitimler]  WITH CHECK ADD  CONSTRAINT [FK_Egitimler_BolumAdi] FOREIGN KEY([BolumID])
REFERENCES [dbo].[BolumAdi] ([ID])
GO
ALTER TABLE [dbo].[Egitimler] CHECK CONSTRAINT [FK_Egitimler_BolumAdi]
GO
ALTER TABLE [dbo].[Egitimler]  WITH CHECK ADD  CONSTRAINT [FK_Egitimler_FakulteAdi] FOREIGN KEY([FakulteID])
REFERENCES [dbo].[FakulteAdi] ([ID])
GO
ALTER TABLE [dbo].[Egitimler] CHECK CONSTRAINT [FK_Egitimler_FakulteAdi]
GO
ALTER TABLE [dbo].[Egitimler]  WITH CHECK ADD  CONSTRAINT [FK_Egitimler_Ozgecmis] FOREIGN KEY([OzgecmisID])
REFERENCES [dbo].[Ozgecmis] ([ID])
GO
ALTER TABLE [dbo].[Egitimler] CHECK CONSTRAINT [FK_Egitimler_Ozgecmis]
GO
ALTER TABLE [dbo].[Egitimler]  WITH CHECK ADD  CONSTRAINT [FK_Egitimler_Universite] FOREIGN KEY([UniversiteID])
REFERENCES [dbo].[Universite] ([ID])
GO
ALTER TABLE [dbo].[Egitimler] CHECK CONSTRAINT [FK_Egitimler_Universite]
GO
ALTER TABLE [dbo].[EkBilgiler]  WITH CHECK ADD  CONSTRAINT [FK_EkBilgiler_Ozgecmis] FOREIGN KEY([OzgecmisID])
REFERENCES [dbo].[Ozgecmis] ([ID])
GO
ALTER TABLE [dbo].[EkBilgiler] CHECK CONSTRAINT [FK_EkBilgiler_Ozgecmis]
GO
ALTER TABLE [dbo].[FakulteAdi]  WITH CHECK ADD  CONSTRAINT [FK_FakulteAdi_Universite] FOREIGN KEY([UniversiteID])
REFERENCES [dbo].[Universite] ([ID])
GO
ALTER TABLE [dbo].[FakulteAdi] CHECK CONSTRAINT [FK_FakulteAdi_Universite]
GO
ALTER TABLE [dbo].[FavoriIlanlar]  WITH CHECK ADD  CONSTRAINT [FK_FavoriIlanlar_IsIlanlari] FOREIGN KEY([IlanID])
REFERENCES [dbo].[Ilan] ([ID])
GO
ALTER TABLE [dbo].[FavoriIlanlar] CHECK CONSTRAINT [FK_FavoriIlanlar_IsIlanlari]
GO
ALTER TABLE [dbo].[FavoriIlanlar]  WITH CHECK ADD  CONSTRAINT [FK_FavoriIlanlar_KullaniciUyelik] FOREIGN KEY([UyelikID])
REFERENCES [dbo].[Uyelik] ([ID])
GO
ALTER TABLE [dbo].[FavoriIlanlar] CHECK CONSTRAINT [FK_FavoriIlanlar_KullaniciUyelik]
GO
ALTER TABLE [dbo].[Hakkimda]  WITH CHECK ADD  CONSTRAINT [FK_Hakkimda_Ozgecmis] FOREIGN KEY([OzgecmisID])
REFERENCES [dbo].[Ozgecmis] ([ID])
GO
ALTER TABLE [dbo].[Hakkimda] CHECK CONSTRAINT [FK_Hakkimda_Ozgecmis]
GO
ALTER TABLE [dbo].[Hareket]  WITH CHECK ADD FOREIGN KEY([BildirimID])
REFERENCES [dbo].[Bildirim] ([ID])
GO
ALTER TABLE [dbo].[Hareket]  WITH CHECK ADD FOREIGN KEY([UyelikID])
REFERENCES [dbo].[Uyelik] ([ID])
GO
ALTER TABLE [dbo].[Hobiler]  WITH CHECK ADD  CONSTRAINT [FK_Hobiler_Ozgecmis] FOREIGN KEY([OzgecmisID])
REFERENCES [dbo].[Ozgecmis] ([ID])
GO
ALTER TABLE [dbo].[Hobiler] CHECK CONSTRAINT [FK_Hobiler_Ozgecmis]
GO
ALTER TABLE [dbo].[IlanKayit]  WITH CHECK ADD  CONSTRAINT [FK_IlanKayit_Ilan] FOREIGN KEY([IlanID])
REFERENCES [dbo].[Ilan] ([ID])
GO
ALTER TABLE [dbo].[IlanKayit] CHECK CONSTRAINT [FK_IlanKayit_Ilan]
GO
ALTER TABLE [dbo].[IlanKayit]  WITH CHECK ADD  CONSTRAINT [FK_IlanKayit_Uyelik] FOREIGN KEY([UyelikID])
REFERENCES [dbo].[Uyelik] ([ID])
GO
ALTER TABLE [dbo].[IlanKayit] CHECK CONSTRAINT [FK_IlanKayit_Uyelik]
GO
ALTER TABLE [dbo].[IsDeneyimleri]  WITH CHECK ADD  CONSTRAINT [FK_IsDeneyimleri_Ozgecmis] FOREIGN KEY([OzgecmisID])
REFERENCES [dbo].[Ozgecmis] ([ID])
GO
ALTER TABLE [dbo].[IsDeneyimleri] CHECK CONSTRAINT [FK_IsDeneyimleri_Ozgecmis]
GO
ALTER TABLE [dbo].[IsIlaniCalismaSekli]  WITH CHECK ADD  CONSTRAINT [FK_IsIlaniCalismaSekli_CalismaSekli] FOREIGN KEY([CalismaSekliID])
REFERENCES [dbo].[CalismaSekli] ([ID])
GO
ALTER TABLE [dbo].[IsIlaniCalismaSekli] CHECK CONSTRAINT [FK_IsIlaniCalismaSekli_CalismaSekli]
GO
ALTER TABLE [dbo].[IsIlaniCalismaSekli]  WITH CHECK ADD  CONSTRAINT [FK_IsIlaniCalismaSekli_IsIlanlari] FOREIGN KEY([IlanID])
REFERENCES [dbo].[Ilan] ([ID])
GO
ALTER TABLE [dbo].[IsIlaniCalismaSekli] CHECK CONSTRAINT [FK_IsIlaniCalismaSekli_IsIlanlari]
GO
ALTER TABLE [dbo].[IsIlaniCinsiyet]  WITH CHECK ADD  CONSTRAINT [FK_IsIlaniCinsiyet_Cinsiyet] FOREIGN KEY([CinsiyetID])
REFERENCES [dbo].[Cinsiyet] ([ID])
GO
ALTER TABLE [dbo].[IsIlaniCinsiyet] CHECK CONSTRAINT [FK_IsIlaniCinsiyet_Cinsiyet]
GO
ALTER TABLE [dbo].[IsIlaniCinsiyet]  WITH CHECK ADD  CONSTRAINT [FK_IsIlaniCinsiyet_IsIlanlari] FOREIGN KEY([IlanID])
REFERENCES [dbo].[Ilan] ([ID])
GO
ALTER TABLE [dbo].[IsIlaniCinsiyet] CHECK CONSTRAINT [FK_IsIlaniCinsiyet_IsIlanlari]
GO
ALTER TABLE [dbo].[IsIlaniDurum]  WITH CHECK ADD  CONSTRAINT [FK_IsIlaniDurum_IlanDurumu] FOREIGN KEY([DurumID])
REFERENCES [dbo].[IlanDurumu] ([ID])
GO
ALTER TABLE [dbo].[IsIlaniDurum] CHECK CONSTRAINT [FK_IsIlaniDurum_IlanDurumu]
GO
ALTER TABLE [dbo].[IsIlaniDurum]  WITH CHECK ADD  CONSTRAINT [FK_IsIlaniDurum_IsIlanlari] FOREIGN KEY([IlanID])
REFERENCES [dbo].[Ilan] ([ID])
GO
ALTER TABLE [dbo].[IsIlaniDurum] CHECK CONSTRAINT [FK_IsIlaniDurum_IsIlanlari]
GO
ALTER TABLE [dbo].[IsIlaniMezuniyet]  WITH CHECK ADD  CONSTRAINT [FK_IsIlaniMezuniyet_IsIlanlari] FOREIGN KEY([IlanID])
REFERENCES [dbo].[Ilan] ([ID])
GO
ALTER TABLE [dbo].[IsIlaniMezuniyet] CHECK CONSTRAINT [FK_IsIlaniMezuniyet_IsIlanlari]
GO
ALTER TABLE [dbo].[IsIlaniMezuniyet]  WITH CHECK ADD  CONSTRAINT [FK_IsIlaniMezuniyet_Mezuniyet] FOREIGN KEY([MezuniyetID])
REFERENCES [dbo].[Mezuniyet] ([ID])
GO
ALTER TABLE [dbo].[IsIlaniMezuniyet] CHECK CONSTRAINT [FK_IsIlaniMezuniyet_Mezuniyet]
GO
ALTER TABLE [dbo].[IsIlaniSehirler]  WITH CHECK ADD  CONSTRAINT [FK_IsIlaniSehirler_IsIlanlari1] FOREIGN KEY([IlanID])
REFERENCES [dbo].[Ilan] ([ID])
GO
ALTER TABLE [dbo].[IsIlaniSehirler] CHECK CONSTRAINT [FK_IsIlaniSehirler_IsIlanlari1]
GO
ALTER TABLE [dbo].[IsIlaniSehirler]  WITH CHECK ADD  CONSTRAINT [FK_IsIlaniSehirler_Sehirler1] FOREIGN KEY([SehirID])
REFERENCES [dbo].[Sehirler] ([ID])
GO
ALTER TABLE [dbo].[IsIlaniSehirler] CHECK CONSTRAINT [FK_IsIlaniSehirler_Sehirler1]
GO
ALTER TABLE [dbo].[IsIlaniSektor]  WITH CHECK ADD  CONSTRAINT [FK_IsIlaniSektor_IsIlanlari] FOREIGN KEY([IlanID])
REFERENCES [dbo].[Ilan] ([ID])
GO
ALTER TABLE [dbo].[IsIlaniSektor] CHECK CONSTRAINT [FK_IsIlaniSektor_IsIlanlari]
GO
ALTER TABLE [dbo].[IsIlaniSektor]  WITH CHECK ADD  CONSTRAINT [FK_IsIlaniSektor_Sektorler] FOREIGN KEY([SektorID])
REFERENCES [dbo].[Sektorler] ([ID])
GO
ALTER TABLE [dbo].[IsIlaniSektor] CHECK CONSTRAINT [FK_IsIlaniSektor_Sektorler]
GO
ALTER TABLE [dbo].[IsIlaniUlke]  WITH CHECK ADD  CONSTRAINT [FK_IsIlaniUlke_IsIlanlari] FOREIGN KEY([IlanID])
REFERENCES [dbo].[Ilan] ([ID])
GO
ALTER TABLE [dbo].[IsIlaniUlke] CHECK CONSTRAINT [FK_IsIlaniUlke_IsIlanlari]
GO
ALTER TABLE [dbo].[IsIlaniUlke]  WITH CHECK ADD  CONSTRAINT [FK_IsIlaniUlke_Ulkeler] FOREIGN KEY([UlkelerID])
REFERENCES [dbo].[Ulkeler] ([ID])
GO
ALTER TABLE [dbo].[IsIlaniUlke] CHECK CONSTRAINT [FK_IsIlaniUlke_Ulkeler]
GO
ALTER TABLE [dbo].[IsIlaniYabanciDiller]  WITH CHECK ADD  CONSTRAINT [FK_IsIlaniYabanciDiller_IsIlanlari] FOREIGN KEY([IlanID])
REFERENCES [dbo].[Ilan] ([ID])
GO
ALTER TABLE [dbo].[IsIlaniYabanciDiller] CHECK CONSTRAINT [FK_IsIlaniYabanciDiller_IsIlanlari]
GO
ALTER TABLE [dbo].[IsIlaniYabanciDiller]  WITH CHECK ADD  CONSTRAINT [FK_IsIlaniYabanciDiller_YabanciDiller] FOREIGN KEY([YabanciDillerID])
REFERENCES [dbo].[YabanciDiller] ([ID])
GO
ALTER TABLE [dbo].[IsIlaniYabanciDiller] CHECK CONSTRAINT [FK_IsIlaniYabanciDiller_YabanciDiller]
GO
ALTER TABLE [dbo].[IsIlanlariDeneyimSuresi]  WITH CHECK ADD  CONSTRAINT [FK_IsIlanlariDeneyimSuresi_Deneyim] FOREIGN KEY([DeneyimSureID])
REFERENCES [dbo].[Deneyim] ([ID])
GO
ALTER TABLE [dbo].[IsIlanlariDeneyimSuresi] CHECK CONSTRAINT [FK_IsIlanlariDeneyimSuresi_Deneyim]
GO
ALTER TABLE [dbo].[IsIlanlariDeneyimSuresi]  WITH CHECK ADD  CONSTRAINT [FK_IsIlanlariDeneyimSuresi_IsIlanlari] FOREIGN KEY([IlanID])
REFERENCES [dbo].[Ilan] ([ID])
GO
ALTER TABLE [dbo].[IsIlanlariDeneyimSuresi] CHECK CONSTRAINT [FK_IsIlanlariDeneyimSuresi_IsIlanlari]
GO
ALTER TABLE [dbo].[MulakatListesi]  WITH CHECK ADD  CONSTRAINT [FK_MulakatListesi_IsIlanlari] FOREIGN KEY([IlanID])
REFERENCES [dbo].[Ilan] ([ID])
GO
ALTER TABLE [dbo].[MulakatListesi] CHECK CONSTRAINT [FK_MulakatListesi_IsIlanlari]
GO
ALTER TABLE [dbo].[MulakatListesi]  WITH CHECK ADD  CONSTRAINT [FK_MulakatListesi_Mulakatlar] FOREIGN KEY([MulakatID])
REFERENCES [dbo].[Mulakatlar] ([ID])
GO
ALTER TABLE [dbo].[MulakatListesi] CHECK CONSTRAINT [FK_MulakatListesi_Mulakatlar]
GO
ALTER TABLE [dbo].[MulakatListesi]  WITH CHECK ADD  CONSTRAINT [FK_MulakatListesi_Ozgecmis] FOREIGN KEY([OzgecmisID])
REFERENCES [dbo].[Ozgecmis] ([ID])
GO
ALTER TABLE [dbo].[MulakatListesi] CHECK CONSTRAINT [FK_MulakatListesi_Ozgecmis]
GO
ALTER TABLE [dbo].[MulakatListesi]  WITH CHECK ADD  CONSTRAINT [FK_MulakatListesi_SirketBilgileri] FOREIGN KEY([SirketID])
REFERENCES [dbo].[Sirket] ([ID])
GO
ALTER TABLE [dbo].[MulakatListesi] CHECK CONSTRAINT [FK_MulakatListesi_SirketBilgileri]
GO
ALTER TABLE [dbo].[Ozgecmis]  WITH CHECK ADD  CONSTRAINT [FK_Ozgecmis_KullaniciUyelik] FOREIGN KEY([UyelikID])
REFERENCES [dbo].[Uyelik] ([ID])
GO
ALTER TABLE [dbo].[Ozgecmis] CHECK CONSTRAINT [FK_Ozgecmis_KullaniciUyelik]
GO
ALTER TABLE [dbo].[OzgecmisHavuzu]  WITH CHECK ADD  CONSTRAINT [FK_OzgecmisHavuzu_Ozgecmis] FOREIGN KEY([OzgecmisID])
REFERENCES [dbo].[Ozgecmis] ([ID])
GO
ALTER TABLE [dbo].[OzgecmisHavuzu] CHECK CONSTRAINT [FK_OzgecmisHavuzu_Ozgecmis]
GO
ALTER TABLE [dbo].[OzgecmisHavuzu]  WITH CHECK ADD  CONSTRAINT [FK_OzgecmisHavuzu_SirketBilgileri] FOREIGN KEY([SirketID])
REFERENCES [dbo].[Sirket] ([ID])
GO
ALTER TABLE [dbo].[OzgecmisHavuzu] CHECK CONSTRAINT [FK_OzgecmisHavuzu_SirketBilgileri]
GO
ALTER TABLE [dbo].[OzgecmisSehirler]  WITH CHECK ADD  CONSTRAINT [FK_OzgecmisSehirler_Ozgecmis] FOREIGN KEY([OzgecmisID])
REFERENCES [dbo].[Ozgecmis] ([ID])
GO
ALTER TABLE [dbo].[OzgecmisSehirler] CHECK CONSTRAINT [FK_OzgecmisSehirler_Ozgecmis]
GO
ALTER TABLE [dbo].[OzgecmisSehirler]  WITH CHECK ADD  CONSTRAINT [FK_OzgecmisSehirler_Sehirler] FOREIGN KEY([SehirID])
REFERENCES [dbo].[Sehirler] ([ID])
GO
ALTER TABLE [dbo].[OzgecmisSehirler] CHECK CONSTRAINT [FK_OzgecmisSehirler_Sehirler]
GO
ALTER TABLE [dbo].[OzgecmisSosyalMedya]  WITH CHECK ADD  CONSTRAINT [FK_OzgecmisSosyalMedya_Ozgecmis] FOREIGN KEY([OzgecmisID])
REFERENCES [dbo].[Ozgecmis] ([ID])
GO
ALTER TABLE [dbo].[OzgecmisSosyalMedya] CHECK CONSTRAINT [FK_OzgecmisSosyalMedya_Ozgecmis]
GO
ALTER TABLE [dbo].[OzgecmisSosyalMedya]  WITH CHECK ADD  CONSTRAINT [FK_OzgecmisSosyalMedya_SosyalMedya] FOREIGN KEY([SosyalMedyaID])
REFERENCES [dbo].[SosyalMedya] ([ID])
GO
ALTER TABLE [dbo].[OzgecmisSosyalMedya] CHECK CONSTRAINT [FK_OzgecmisSosyalMedya_SosyalMedya]
GO
ALTER TABLE [dbo].[OzgecmisYabanciDil]  WITH CHECK ADD  CONSTRAINT [FK_OzgecmisYabanciDil_Ozgecmis] FOREIGN KEY([OzgecmisID])
REFERENCES [dbo].[Ozgecmis] ([ID])
GO
ALTER TABLE [dbo].[OzgecmisYabanciDil] CHECK CONSTRAINT [FK_OzgecmisYabanciDil_Ozgecmis]
GO
ALTER TABLE [dbo].[OzgecmisYabanciDil]  WITH CHECK ADD  CONSTRAINT [FK_OzgecmisYabanciDil_YabanciDiller] FOREIGN KEY([YabanciDilID])
REFERENCES [dbo].[YabanciDiller] ([ID])
GO
ALTER TABLE [dbo].[OzgecmisYabanciDil] CHECK CONSTRAINT [FK_OzgecmisYabanciDil_YabanciDiller]
GO
ALTER TABLE [dbo].[OzgecmisYazilimDilleri]  WITH CHECK ADD  CONSTRAINT [FK_OzgecmisYazilimDilleri_Ozgecmis] FOREIGN KEY([OzgecmisID])
REFERENCES [dbo].[Ozgecmis] ([ID])
GO
ALTER TABLE [dbo].[OzgecmisYazilimDilleri] CHECK CONSTRAINT [FK_OzgecmisYazilimDilleri_Ozgecmis]
GO
ALTER TABLE [dbo].[OzgecmisYazilimDilleri]  WITH CHECK ADD  CONSTRAINT [FK_OzgecmisYazilimDilleri_YazilimDilleri] FOREIGN KEY([DilID])
REFERENCES [dbo].[YazilimDilleri] ([ID])
GO
ALTER TABLE [dbo].[OzgecmisYazilimDilleri] CHECK CONSTRAINT [FK_OzgecmisYazilimDilleri_YazilimDilleri]
GO
ALTER TABLE [dbo].[Referanslar]  WITH CHECK ADD  CONSTRAINT [FK_Referanslar_Ozgecmis] FOREIGN KEY([OzgecmisID])
REFERENCES [dbo].[Ozgecmis] ([ID])
GO
ALTER TABLE [dbo].[Referanslar] CHECK CONSTRAINT [FK_Referanslar_Ozgecmis]
GO
ALTER TABLE [dbo].[Sertifikalar]  WITH CHECK ADD  CONSTRAINT [FK_Sertifikalar_Ozgecmis] FOREIGN KEY([OzgecmisID])
REFERENCES [dbo].[Ozgecmis] ([ID])
GO
ALTER TABLE [dbo].[Sertifikalar] CHECK CONSTRAINT [FK_Sertifikalar_Ozgecmis]
GO
ALTER TABLE [dbo].[Sinavlar]  WITH CHECK ADD  CONSTRAINT [FK_Sinavlar_Ozgecmis1] FOREIGN KEY([OzgecmisID])
REFERENCES [dbo].[Ozgecmis] ([ID])
GO
ALTER TABLE [dbo].[Sinavlar] CHECK CONSTRAINT [FK_Sinavlar_Ozgecmis1]
GO
ALTER TABLE [dbo].[Sirket]  WITH CHECK ADD  CONSTRAINT [FK_SirketBilgileri_KullaniciUyelik] FOREIGN KEY([UyelikID])
REFERENCES [dbo].[Uyelik] ([ID])
GO
ALTER TABLE [dbo].[Sirket] CHECK CONSTRAINT [FK_SirketBilgileri_KullaniciUyelik]
GO
ALTER TABLE [dbo].[SirketIlan]  WITH CHECK ADD  CONSTRAINT [FK_SirketIlan_Ilan] FOREIGN KEY([IlanID])
REFERENCES [dbo].[Ilan] ([ID])
GO
ALTER TABLE [dbo].[SirketIlan] CHECK CONSTRAINT [FK_SirketIlan_Ilan]
GO
ALTER TABLE [dbo].[SirketIlan]  WITH CHECK ADD  CONSTRAINT [FK_SirketIlan_Sirket] FOREIGN KEY([SirketID])
REFERENCES [dbo].[Sirket] ([ID])
GO
ALTER TABLE [dbo].[SirketIlan] CHECK CONSTRAINT [FK_SirketIlan_Sirket]
GO
ALTER TABLE [dbo].[SirketSehir]  WITH CHECK ADD  CONSTRAINT [FK_SirketSehir_Sehirler] FOREIGN KEY([SehirID])
REFERENCES [dbo].[Sehirler] ([ID])
GO
ALTER TABLE [dbo].[SirketSehir] CHECK CONSTRAINT [FK_SirketSehir_Sehirler]
GO
ALTER TABLE [dbo].[SirketSehir]  WITH CHECK ADD  CONSTRAINT [FK_SirketSehir_Sirket] FOREIGN KEY([SirketID])
REFERENCES [dbo].[Sirket] ([ID])
GO
ALTER TABLE [dbo].[SirketSehir] CHECK CONSTRAINT [FK_SirketSehir_Sirket]
GO
ALTER TABLE [dbo].[SirketSektor]  WITH CHECK ADD  CONSTRAINT [FK_SirketSektor_Sektorler] FOREIGN KEY([SektorID])
REFERENCES [dbo].[Sektorler] ([ID])
GO
ALTER TABLE [dbo].[SirketSektor] CHECK CONSTRAINT [FK_SirketSektor_Sektorler]
GO
ALTER TABLE [dbo].[SirketSektor]  WITH CHECK ADD  CONSTRAINT [FK_SirketSektor_SirketBilgileri] FOREIGN KEY([SirketID])
REFERENCES [dbo].[Sirket] ([ID])
GO
ALTER TABLE [dbo].[SirketSektor] CHECK CONSTRAINT [FK_SirketSektor_SirketBilgileri]
GO
ALTER TABLE [dbo].[SirketSosyalMedya]  WITH CHECK ADD  CONSTRAINT [FK_SirketSosyalMedya_Sirket] FOREIGN KEY([SirketID])
REFERENCES [dbo].[Sirket] ([ID])
GO
ALTER TABLE [dbo].[SirketSosyalMedya] CHECK CONSTRAINT [FK_SirketSosyalMedya_Sirket]
GO
ALTER TABLE [dbo].[SirketSosyalMedya]  WITH CHECK ADD  CONSTRAINT [FK_SirketSosyalMedya_SosyalMedya] FOREIGN KEY([SosyalMedyaID])
REFERENCES [dbo].[SosyalMedya] ([ID])
GO
ALTER TABLE [dbo].[SirketSosyalMedya] CHECK CONSTRAINT [FK_SirketSosyalMedya_SosyalMedya]
GO
ALTER TABLE [dbo].[SirketTakip]  WITH CHECK ADD  CONSTRAINT [FK_SirketTakip_KullaniciUyelik] FOREIGN KEY([UyelikID])
REFERENCES [dbo].[Uyelik] ([ID])
GO
ALTER TABLE [dbo].[SirketTakip] CHECK CONSTRAINT [FK_SirketTakip_KullaniciUyelik]
GO
ALTER TABLE [dbo].[SirketTakip]  WITH CHECK ADD  CONSTRAINT [FK_SirketTakip_SirketBilgileri] FOREIGN KEY([SirketID])
REFERENCES [dbo].[Sirket] ([ID])
GO
ALTER TABLE [dbo].[SirketTakip] CHECK CONSTRAINT [FK_SirketTakip_SirketBilgileri]
GO
ALTER TABLE [dbo].[Uyelik]  WITH CHECK ADD  CONSTRAINT [chk_kullantip] CHECK  (([KullaniciTipi]='is_arayan' OR [KullaniciTipi]='is_veren'))
GO
ALTER TABLE [dbo].[Uyelik] CHECK CONSTRAINT [chk_kullantip]
GO
/****** Object:  StoredProcedure [dbo].[AcikPozisyonlar]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[AcikPozisyonlar] @ID int AS
select i.PozisyonAdi, string_agg(seh.SehirAdi,', ') as [Şehir], cs.CalismaSekliAdi, i.SonBasvuruTarihi
from Sirket as s
inner join SirketIlan as si on si.SirketID=s.ID
inner join Ilan as i on i.ID=si.IlanID
inner join IsIlaniSehirler as iis on iis.IlanID=i.ID
inner join Sehirler as seh on seh.ID=iis.SehirID
inner join IsIlaniCalismaSekli as iics on iics.IlanID=i.ID
inner join CalismaSekli as cs on cs.ID=iics.CalismaSekliID
where s.ID=@ID
group by i.PozisyonAdi, cs.CalismaSekliAdi, i.SonBasvuruTarihi
GO
/****** Object:  StoredProcedure [dbo].[BasvuranSayisi]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[BasvuranSayisi] @ID int AS
select s.SirketAdi, count(*) as [Başvuru Sayısı]
from Ilan as i
inner join Basvuranlar as b on b.IlanID=i.ID
inner join Ozgecmis as o on o.ID=b.OzgecmisID
inner join SirketIlan as si on si.IlanID=i.ID
inner join Sirket as s on s.ID=si.SirketID
where s.ID=@ID
group by s.SirketAdi
GO
/****** Object:  StoredProcedure [dbo].[Basvuru]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Basvuru] @ID int as
select u.Isim + ' ' + u.Soyisim as [Ad Soyad], count(o.ID) as [Başvuru Sayısı]
from Ozgecmis as o 
inner join Basvuranlar as b on b.OzgecmisID=o.ID
inner join Uyelik as u on u.ID=o.UyelikID
where o.ID=@ID
group by u.Isim,u.Soyisim
GO
/****** Object:  StoredProcedure [dbo].[Basvurulan]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Basvurulan] @ID int AS
select u.Isim + ' ' + u.Soyisim AS [Ad Soyad], i.PozisyonAdi,s.SirketAdi,string_agg(seh.SehirAdi,', '),string_Agg(cs.CalismaSekliAdi,', ')
from Ozgecmis as o
inner join Basvuranlar as b on b.OzgecmisID=o.ID
inner join Ilan as i on i.ID=b.IlanID
inner join Uyelik as u on u.ID=o.UyelikID
inner join SirketIlan as si on si.IlanID=i.ID
inner join Sirket as s on s.ID=si.SirketID
inner join IsIlaniCalismaSekli as iics on iics.IlanID=i.ID
inner join CalismaSekli as cs on cs.ID=iics.CalismaSekliID
inner join IsIlaniSehirler as iis on iis.IlanID=i.ID
inner join Sehirler as seh on seh.ID=iis.SehirID
where o.ID=@ID
group by u.Isim,u.Soyisim, i.PozisyonAdi, s.SirketAdi
order by u.Isim
GO
/****** Object:  StoredProcedure [dbo].[Candidate]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Candidate] @SirketID int AS
select  u.Isim + ' ' + u.Soyisim AS İsim,h.Meslek,s.SehirAdi
from OzgecmisHavuzu as oh
inner join Ozgecmis as o on o.ID=oh.OzgecmisID
inner join (select * from Uyelik where KullaniciTipi='is_arayan') as u on
			u.ID=o.UyelikID

inner join Hakkimda as h on h.OzgecmisID=o.ID
inner join OzgecmisSehirler as os on os.OzgecmisID=o.ID
inner join Sehirler as s on s.ID=os.SehirID
inner join (select * from Sirket where ID=@SirketID) as sir on sir.ID=oh.SirketID
			
GO
/****** Object:  StoredProcedure [dbo].[Egitim]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Egitim] @ID int AS
select u.Isim + ' ' + u.Soyisim AS [Ad Soyad], uni.Adi as Üniversite,f.FakulteAdi,b.BolumAdi,e.Aciklama,e.BaslangicTarih,e.BitisTarih
from Ozgecmis as o 
inner join Uyelik as u on u.ID=o.UyelikID
inner join Egitimler as e on e.OzgecmisID=o.ID
inner join Universite as uni on uni.ID=e.UniversiteID
inner join FakulteAdi as f on f.ID=e.FakulteID
inner join BolumAdi as b on b.ID=e.BolumID
where o.ID=@ID
order by o.ID
GO
/****** Object:  StoredProcedure [dbo].[EkBilgi]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[EkBilgi] @ID int AS
select u.Isim + ' ' + u.Soyisim AS [Ad Soyad], STRING_AGG(eb.Bilgiler,', ') AS EkBilgiler
from Ozgecmis as o
inner join Uyelik as u on u.ID=o.UyelikID
inner join EkBilgiler as eb on eb.OzgecmisID=o.ID
where o.ID=@ID
group by u.Isim,u.Soyisim
GO
/****** Object:  StoredProcedure [dbo].[Favori]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Favori] @ID int AS
select u.Isim + ' ' + u.Soyisim as [Ad Soyad],s.SirketAdi,string_agg(se.SehirAdi,', '),string_agg(cs.CalismaSekliAdi,', '),i.SonBasvuruTarihi
from Uyelik as u
inner join FavoriIlanlar as fi on fi.UyelikID=u.ID
inner join Ilan as i on i.ID=fi.IlanID
inner join SirketIlan as si on si.IlanID=i.ID
inner join Sirket as s on s.ID=si.SirketID
inner join IsIlaniSehirler as iis on iis.IlanID=i.ID
inner join Sehirler as se on se.ID=iis.SehirID
inner join IsIlaniCalismaSekli as iics on iics.IlanID=i.ID
inner join CalismaSekli as cs on cs.ID=iics.CalismaSekliID
where u.ID=@ID
group by u.Isim, u.Soyisim,s.SirketAdi,i.SonBasvuruTarihi
order by u.Isim
GO
/****** Object:  StoredProcedure [dbo].[FirmaBilgi]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[FirmaBilgi] @ID int AS
select s.SirketAdi, u.KullaniciAdi, u.Email, s.TelNo, s.Adres, string_agg(sek.Adi,', '), s.Hakkimizda
from Sirket as s
inner join Uyelik as u on u.ID=s.UyelikID
inner join SirketSektor as ss on ss.SirketID=s.ID
inner join Sektorler as sek on sek.ID=ss.SektorID
inner join SirketSosyalMedya as ssm on ssm.SirketID=s.ID
inner join SosyalMedya as sm on sm.ID=ssm.SosyalMedyaID
where s.ID=@ID
group by s.SirketAdi, u.KullaniciAdi, u.Email, s.TelNo, s.Adres,s.Hakkimizda
GO
/****** Object:  StoredProcedure [dbo].[Firmalar]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Firmalar] AS
select s.SirketAdi,s.TelNo,s.Adres,s.Hakkimizda,s.TaniticiLink,STRING_AGG(sek.Adi, ', ') AS Sektör 
from Sirket as s
inner join SirketSektor as ss on ss.SirketID=s.ID
inner join Sektorler as sek on sek.ID=ss.SektorID
group by s.SirketAdi,s.TelNo,s.Adres,s.Hakkimizda,s.TaniticiLink
GO
/****** Object:  StoredProcedure [dbo].[HakkimdaDetay]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[HakkimdaDetay] @ID int AS
select u.Isim + ' ' + u.Soyisim AS [Ad Soyad], h.Hakkimda,h.Meslek,h.Konum,h.CalismaSekli,h.DeneyimYili,o.Cinsiyet,h.MezuniyetDerece
from Ozgecmis as o
inner join Uyelik as u on u.ID=o.UyelikID
inner join Hakkimda as h on h.OzgecmisID=o.ID
where o.ID=@ID
order by o.ID
GO
/****** Object:  StoredProcedure [dbo].[Hareketler]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Hareketler] @ID int AS
select u.KullaniciAdi, b.Bildirim
from Hareket as h 
inner join Bildirim as b on b.ID=h.BildirimID
inner join Uyelik as u on u.ID=h.UyelikID
where u.ID=@ID
GO
/****** Object:  StoredProcedure [dbo].[Hobi]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create procedure Sinav @ID int AS
--select u.Isim + ' ' + u.Soyisim as [Ad Soyad], s.Adi, s.Puan,s.Tarih
--from Ozgecmis as o
--inner join (select * from Uyelik where ID=@ID) as u on u.ID=o.UyelikID
--inner join Sinavlar as s on s.OzgecmisID=o.ID

create procedure [dbo].[Hobi] @ID int AS
select u.Isim + ' ' + u.Soyisim AS [Ad Soyad], string_agg(h.Hobi,', ') as Hobiler
from Hobiler as h 
inner join (select * from Ozgecmis where ID=@ID)as o on o.ID=h.OzgecmisID
inner join Uyelik as u on u.ID=o.UyelikID
group by u.Isim,u.Soyisim
GO
/****** Object:  StoredProcedure [dbo].[IlanDetay]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[IlanDetay] @SirketID int, @SirketIlanID int AS
select i.PozisyonAdi,s.SirketAdi,string_agg(seh.SehirAdi,', ') AS Şehir, string_agg(cs.CalismaSekliAdi,', ') AS [Çalışma Şekli],i.IsTanimi,i.Yetkinlikler,i.Tercihen,i.SirketImkanlari
from Ilan as i 
inner join SirketIlan as si on si.IlanID=i.ID
inner join Sirket as s on s.ID=si.SirketID
inner join IsIlaniSehirler as iis on iis.IlanID=i.ID
inner join Sehirler as seh on seh.ID=iis.SehirID
inner join IsIlaniCalismaSekli as iics on iics.IlanID=i.ID
inner join CalismaSekli as cs on cs.ID=iics.CalismaSekliID
where s.ID=@SirketID and si.ID=@SirketIlanID
group by i.PozisyonAdi,s.SirketAdi,i.IsTanimi,i.Yetkinlikler,i.Tercihen,i.SirketImkanlari
GO
/****** Object:  StoredProcedure [dbo].[Ilanlar]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Ilanlar] AS
select i.PozisyonAdi,s.SirketAdi,string_agg(se.Adi,', ') AS Sektör,string_agg(seh.SehirAdi,', ') AS Şehir, i.IlanTarihi,string_agg(ca.CalismaSekliAdi, ', ') ÇalışmaŞekli
from Ilan as i
inner join SirketIlan as si on si.IlanID=i.ID
inner join Sirket as s on s.ID=si.SirketID
inner join IsIlaniSektor as iis on iis.IlanID=i.ID
inner join Sektorler as se on se.ID=iis.SektorID
inner join IsIlaniCalismaSekli as iics on iics.IlanID=i.ID
inner join CalismaSekli as ca on ca.ID=iics.CalismaSekliID
inner join IsIlaniSehirler as iiseh on iiseh.IlanID=i.ID
inner join Sehirler as seh on seh.ID=iiseh.SehirID
group by i.PozisyonAdi,s.SirketAdi,i.IlanTarihi
order by i.IlanTarihi desc
GO
/****** Object:  StoredProcedure [dbo].[IlanSayisi]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[IlanSayisi] as
SELECT COUNT(*)
FROM Ilan





GO
/****** Object:  StoredProcedure [dbo].[IlanYonet]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[IlanYonet] @ID int AS
select i.PozisyonAdi,s.SirketAdi,string_agg(se.Adi,', ') AS Sektör,string_agg(seh.SehirAdi,', ') AS Şehir, i.IlanTarihi,i.SonBasvuruTarihi,string_agg(ca.CalismaSekliAdi, ', ') ÇalışmaŞekli
from Ilan as i
inner join SirketIlan as si on si.IlanID=i.ID
inner join Sirket as s on s.ID=si.SirketID
inner join IsIlaniSektor as iis on iis.IlanID=i.ID
inner join Sektorler as se on se.ID=iis.SektorID
inner join IsIlaniCalismaSekli as iics on iics.IlanID=i.ID
inner join CalismaSekli as ca on ca.ID=iics.CalismaSekliID
inner join IsIlaniSehirler as iiseh on iiseh.IlanID=i.ID
inner join Sehirler as seh on seh.ID=iiseh.SehirID
where s.ID=@ID
group by i.PozisyonAdi,s.SirketAdi,i.IlanTarihi,i.SonBasvuruTarihi	
order by i.IlanTarihi desc
GO
/****** Object:  StoredProcedure [dbo].[IsArayanIlanDetay]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[IsArayanIlanDetay] @ID int AS
select i.ID,i.PozisyonAdi,i.IsTanimi,i.Yetkinlikler,i.Tercihen,i.SirketImkanlari
from Ilan as i
where i.ID=@ID
GO
/****** Object:  StoredProcedure [dbo].[IsArayanSayisi]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[IsArayanSayisi] AS
select count(*) AS [İş Arayan]
from Uyelik
where KullaniciTipi='is_arayan'
GO
/****** Object:  StoredProcedure [dbo].[IsDeneyim]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--create procedure Sinav @ID int AS
--select u.Isim + ' ' + u.Soyisim as [Ad Soyad], s.Adi, s.Puan,s.Tarih
--from Ozgecmis as o
--inner join (select * from Uyelik where ID=@ID) as u on u.ID=o.UyelikID
--inner join Sinavlar as s on s.OzgecmisID=o.ID

create procedure [dbo].[IsDeneyim] @ID int AS
select o.ID,u.Isim, u.Soyisim, id.Adi
from IsDeneyimleri as id 
inner  join (select * from Ozgecmis where ID=@ID) as o on o.ID=id.OzgecmisID
inner  join Uyelik as u on u.ID=o.UyelikID
GO
/****** Object:  StoredProcedure [dbo].[KaydedilenIs]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[KaydedilenIs] @ID int AS
select u.Isim + ' ' + u.Soyisim as [Ad Soyad], count(ik.ID) as [Kayıt Sayısı]
from Uyelik as u
inner join IlanKayit as ik on ik.UyelikID=u.ID
where u.ID=@ID
group by u.Isim,u.Soyisim
GO
/****** Object:  StoredProcedure [dbo].[KisiselBilgi]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[KisiselBilgi] @ID int AS
select o.ID,u.Isim + ' ' + u.Soyisim AS [Ad Soyad],o.TelNo,o.Email,u.DogumTarihi,o.Uyruk,o.Cinsiyet,o.Adres
from Uyelik as u 
inner join (select * from Ozgecmis where ID=@ID) as o on o.UyelikID=u.ID
GO
/****** Object:  StoredProcedure [dbo].[KullaniciSifre]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[KullaniciSifre] @ID int, @EskiSifre nvarchar(30), @YeniSifre nvarchar(30) as
update Uyelik 
set Sifre=@YeniSifre
where ID=@ID and Sifre=@EskiSifre
GO
/****** Object:  StoredProcedure [dbo].[MulakatCagir]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[MulakatCagir] @ID int AS
select s.SirketAdi, count(*) as [Mulakata Çağırılacak]
from Sirket as s
inner join MulakatListesi as ml on ml.SirketID=s.ID
inner join Ozgecmis as o on o.ID=ml.OzgecmisID
where s.ID=@ID
group by s.SirketAdi
GO
/****** Object:  StoredProcedure [dbo].[OzgecmisSayisi]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[OzgecmisSayisi] AS
select count(*)
from Ozgecmis
GO
/****** Object:  StoredProcedure [dbo].[Referans]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Referans] @ID int AS
select u.Isim + ' ' + u.Soyisim AS [Ad Soyad], r.RefAdi,r.SirketAdi,r.TelNo
from Ozgecmis as o
inner join Uyelik as u on u.ID=o.UyelikID
inner join Referanslar as r on r.OzgecmisID=o.ID
where o.ID=@ID
GO
/****** Object:  StoredProcedure [dbo].[SektorIlanlari]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SektorIlanlari] @Adi nvarchar(30) as
select count(*) as IlanSayisi, s.Adi
from Ilan as i
inner join IsIlaniSektor as iis on iis.IlanID=i.ID
inner join Sektorler as s on s.ID=iis.SektorID
where s.Adi=@Adi
group by s.Adi




GO
/****** Object:  StoredProcedure [dbo].[Sertifika]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Sertifika] @ID int AS
select u.Isim + ' ' + u.Soyisim AS [Ad Soyad],s.SertifikaAdi,s.KurumAdi,s.Tarih,s.Aciklama
from Ozgecmis as o
inner join Uyelik as u on u.ID=o.UyelikID
inner join Sertifikalar as s on s.OzgecmisID=o.ID
where o.ID=@ID
GO
/****** Object:  StoredProcedure [dbo].[Sinav]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Sinav] @ID int AS
select u.Isim + ' ' + u.Soyisim as [Ad Soyad], s.Adi, s.Puan,s.Tarih
from Ozgecmis as o
inner join Uyelik as u on u.ID=o.UyelikID
inner join Sinavlar as s on s.OzgecmisID=o.ID
where o.ID=@ID
GO
/****** Object:  StoredProcedure [dbo].[sirket_is_ilan]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sirket_is_ilan] @ID int AS
select i.PozisyonAdi,s.SirketAdi,seh.SehirAdi,cs.CalismaSekliAdi
from Uyelik as u
inner join Sirket as s on s.UyelikID=u.ID
inner join SirketIlan as si on si.SirketID=s.ID
inner join Ilan as i on i.ID=si.IlanID
inner join IsIlaniSehirler as iis on iis.IlanID=i.ID
inner join Sehirler as seh on seh.ID=iis.SehirID
inner join IsIlaniCalismaSekli as iics on iics.IlanID=i.ID
inner join CalismaSekli as cs on cs.ID=iics.CalismaSekliID
where u.KullaniciTipi='is_veren' and u.ID=@ID
GO
/****** Object:  StoredProcedure [dbo].[sirketbasvuranlar]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sirketbasvuranlar] @ID int AS
select o.ID as ozgecmisid, iara.Isim + ' ' + iara.Soyisim as [Ad Soyad],h.Meslek, seh.SehirAdi, s.SirketAdi,iver.KullaniciAdi
from Ozgecmis as o
inner join Basvuranlar as b on b.OzgecmisID=o.ID
inner join Ilan as i on i.ID=b.IlanID
inner join (select * from Uyelik where KullaniciTipi='is_arayan') as iara on iara.ID=o.UyelikID
inner join SirketIlan as si on si.IlanID=i.ID
inner join Sirket as s on s.ID=si.SirketID
inner join (select * from Uyelik where KullaniciTipi='is_veren') as iver on iver.ID=s.UyelikID
inner join Hakkimda as h on h.OzgecmisID=o.ID
inner join OzgecmisSehirler as os on os.OzgecmisID=o.ID
inner join Sehirler as seh on seh.ID=os.SehirID
where iver.ID=@ID

--not: isverenlerin ID'leri : 4,5,19,20,26
GO
/****** Object:  StoredProcedure [dbo].[SirketDetayi]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SirketDetayi] @ID int AS
select s.SirketAdi,s.Adres,s.TaniticiLink,s.Hakkimizda
from Sirket as s
where s.ID=@ID
GO
/****** Object:  StoredProcedure [dbo].[SirketIlanSayisi]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SirketIlanSayisi] @ID int AS
select count(*) AS [Toplam İlan Sayısı],s.SirketAdi
from Uyelik as u
inner join Sirket as s on s.UyelikID=u.ID
inner join SirketIlan as si on si.SirketID=s.ID
inner join Ilan as i on i.ID=si.IlanID
where s.ID=@ID
group by s.SirketAdi
GO
/****** Object:  StoredProcedure [dbo].[SirketSayisi]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SirketSayisi] as
select count(*) from Sirket





GO
/****** Object:  StoredProcedure [dbo].[SirketSifre]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SirketSifre] @ID int, @EskiSifre nvarchar(30), @YeniSifre nvarchar(30) as
update Uyelik 
set Sifre=@YeniSifre
where ID=@ID and Sifre=@EskiSifre
GO
/****** Object:  StoredProcedure [dbo].[SirketSosyal]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SirketSosyal] @ID int AS
select s.SirketAdi, sm.Adi + ' / ' + ssm.HesapAdi as [Sosyal Medya]
from Sirket as s
inner join Uyelik as u on u.ID=s.UyelikID
inner join SirketSosyalMedya as ssm on ssm.SirketID=s.ID
inner join SosyalMedya as sm on sm.ID=ssm.SosyalMedyaID
where s.ID=@ID
GO
/****** Object:  StoredProcedure [dbo].[SonIlanlar]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SonIlanlar] AS
select i.PozisyonAdi,s.SirketAdi,string_agg(se.Adi,', ') AS Sektör, i.IlanTarihi,string_agg(ca.CalismaSekliAdi, ', ') ÇalışmaŞekli
from Ilan as i
inner join SirketIlan as si on si.IlanID=i.ID
inner join Sirket as s on s.ID=si.SirketID
inner join IsIlaniSektor as iis on iis.IlanID=i.ID
inner join Sektorler as se on se.ID=iis.SektorID
inner join IsIlaniCalismaSekli as iics on iics.IlanID=i.ID
inner join CalismaSekli as ca on ca.ID=iics.CalismaSekliID
group by i.PozisyonAdi,s.SirketAdi,i.IlanTarihi
order by i.IlanTarihi desc
GO
/****** Object:  StoredProcedure [dbo].[sourceHareket]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sourceHareket] @Tipi nvarchar(50) AS
select u.ID,u.KullaniciAdi,b.Bildirim, count(*) AS [İşlem Sayısı],h.HareketTarihi
--into #isVerenHareket
from Hareket as h
inner join Bildirim as b on b.ID=h.BildirimID
inner join Uyelik as u on u.ID=h.UyelikID
where u.KullaniciTipi=@Tipi
group by u.ID,u.KullaniciAdi,b.Bildirim,h.HareketTarihi
order by u.ID
GO
/****** Object:  StoredProcedure [dbo].[Takip]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Takip] @ID int AS
select u.Isim + ' ' + u.Soyisim AS [Ad Soyad],s.SirketAdi,string_agg(sek.Adi,', ') as Sektör,string_agg(se.SehirAdi,', ') AS Şehir
from Uyelik as u
inner join SirketTakip as st on st.UyelikID=u.ID
inner join Sirket as s on s.ID=st.SirketID
inner join SirketSektor as ss on ss.SirketID=s.ID
inner join Sektorler as sek on sek.ID=ss.SektorID
inner join SirketSehir as sirse on sirse.SirketID=s.ID
inner join Sehirler as se on se.ID=sirse.SehirID
where u.ID=@ID
group by u.Isim,u.Soyisim,s.SirketAdi
GO
/****** Object:  StoredProcedure [dbo].[TakipSayi]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[TakipSayi] @ID int AS
SELECT u.ID,u.Isim + ' ' + u.Soyisim as [Ad Soyad],COUNT(DISTINCT st.SirketID) AS TakipEdilenSirketSayisi
FROM Uyelik AS u
INNER JOIN SirketTakip AS st ON st.UyelikID = u.ID
where u.ID=@ID
group by u.ID,u.Isim,u.Soyisim
GO
/****** Object:  StoredProcedure [dbo].[UyeOl]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[UyeOl] @KullaniciAdi nvarchar(50), @email nvarchar(50), @sifre nvarchar(50) AS
insert into Uyelik (KullaniciAdi, Email, Sifre)
values (@KullaniciAdi, @email, @sifre)
GO
/****** Object:  StoredProcedure [dbo].[YabanciDil]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[YabanciDil] @ID int AS
select u.Isim + ' ' + u.Soyisim as [Ad Soyad],STRING_AGG(yd.Adi,', ') AS [Yabancı Diller]
from Ozgecmis as o 
inner join Uyelik as u on u.ID=o.UyelikID
inner join OzgecmisYabanciDil as oyd on oyd.OzgecmisID=o.ID
inner join YabanciDiller as yd on yd.ID=oyd.YabanciDilID
where o.ID=@ID
group by u.Isim,u.Soyisim




GO
/****** Object:  StoredProcedure [dbo].[YazilimDil]    Script Date: 4.07.2024 22:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[YazilimDil] @ID int AS
select u.Isim + ' ' + u.Soyisim as [Ad Soyad], string_agg(yd.Adi,', ')
from Ozgecmis as o 
inner join Uyelik as u on u.ID=o.UyelikID
inner join OzgecmisYazilimDilleri as oyd on oyd.OzgecmisID=o.ID
inner join YazilimDilleri as yd on yd.ID=oyd.DilID
where o.ID=@ID
group by u.Isim,u.Soyisim
GO
USE [master]
GO
ALTER DATABASE [KariyerDBTest] SET  READ_WRITE 
GO
