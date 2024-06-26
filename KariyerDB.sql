/****** Object:  Table [dbo].[SirketBilgileri]    Script Date: 28.06.2024 10:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SirketBilgileri](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SirketAdi] [nvarchar](50) NULL,
	[TelNo] [nvarchar](50) NULL,
	[Adres] [nvarchar](50) NULL,
	[Hakkimizda] [nvarchar](500) NULL,
	[TaniticiLink] [nvarchar](50) NULL,
	[KullaniciBilgiID] [int] NULL,
 CONSTRAINT [PK_SirketBilgileri] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SirketSektor]    Script Date: 28.06.2024 10:57:29 ******/
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
/****** Object:  Table [dbo].[Basvuranlar]    Script Date: 28.06.2024 10:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Basvuranlar](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IsIlanID] [int] NULL,
	[OzgecmisID] [int] NULL,
 CONSTRAINT [PK_Basvuranlar] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IsIlanlari]    Script Date: 28.06.2024 10:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IsIlanlari](
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
/****** Object:  Table [dbo].[IsIlaniSektor]    Script Date: 28.06.2024 10:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IsIlaniSektor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SektorID] [int] NULL,
	[IsIlanID] [int] NULL,
 CONSTRAINT [PK_IsIlaniSektor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KullaniciUyelik]    Script Date: 28.06.2024 10:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KullaniciUyelik](
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
/****** Object:  Table [dbo].[Ozgecmis]    Script Date: 28.06.2024 10:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ozgecmis](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciID] [int] NULL,
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
/****** Object:  Table [dbo].[Sektorler]    Script Date: 28.06.2024 10:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sektorler](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SektorAdi] [nvarchar](50) NULL,
 CONSTRAINT [PK_Sektorler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[BasvuruYapanlar]    Script Date: 28.06.2024 10:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create VIEW [dbo].[BasvuruYapanlar] AS
select i.PozisyonAdi,i.IsTanimi,k.Isim + ' ' + k.Soyisim as IsimSoyisim,s.SektorAdi,sbil.SirketAdi
from IsIlanlari as i
inner join Basvuranlar as b on i.ID=b.IsIlanID
inner join Ozgecmis as o on b.OzgecmisID=o.ID
inner join KullaniciUyelik as k on o.KullaniciID=k.ID
inner join IsIlaniSektor as il on i.ID=il.IsIlanID
inner join Sektorler as s on il.SektorID=s.ID
inner join SirketSektor as sir on sir.SektorID=s.ID
inner join SirketBilgileri as sbil on sir.SirketID=sbil.ID
GO
/****** Object:  Table [dbo].[BolumAdi]    Script Date: 28.06.2024 10:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BolumAdi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UniBolumAdi] [nvarchar](50) NULL,
	[FakulteID] [int] NULL,
 CONSTRAINT [PK_BolumAdi] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CalismaSekli]    Script Date: 28.06.2024 10:57:29 ******/
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
/****** Object:  Table [dbo].[Cinsiyet]    Script Date: 28.06.2024 10:57:29 ******/
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
/****** Object:  Table [dbo].[Deneyim]    Script Date: 28.06.2024 10:57:29 ******/
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
/****** Object:  Table [dbo].[Egitimler]    Script Date: 28.06.2024 10:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Egitimler](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EgitimAciklama] [nvarchar](300) NULL,
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
/****** Object:  Table [dbo].[EkBilgiler]    Script Date: 28.06.2024 10:57:29 ******/
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
/****** Object:  Table [dbo].[FakulteAdi]    Script Date: 28.06.2024 10:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FakulteAdi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UniFakulteAdi] [nvarchar](50) NULL,
	[UniversiteID] [int] NULL,
 CONSTRAINT [PK_FakulteAdi] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FavoriIlanlar]    Script Date: 28.06.2024 10:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FavoriIlanlar](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciID] [int] NULL,
	[IlanID] [int] NULL,
 CONSTRAINT [PK_FavoriIlanlar] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hakkimda]    Script Date: 28.06.2024 10:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hakkimda](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Hakkimda] [nvarchar](500) NULL,
	[SektorAdi] [nvarchar](50) NULL,
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
/****** Object:  Table [dbo].[Hobiler]    Script Date: 28.06.2024 10:57:29 ******/
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
/****** Object:  Table [dbo].[IlanDurumu]    Script Date: 28.06.2024 10:57:29 ******/
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
/****** Object:  Table [dbo].[IsDeneyimleri]    Script Date: 28.06.2024 10:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IsDeneyimleri](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DeneyimAdi] [nvarchar](50) NULL,
	[DeneyimAciklama] [nvarchar](500) NULL,
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
/****** Object:  Table [dbo].[IsIlaniCalismaSekli]    Script Date: 28.06.2024 10:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IsIlaniCalismaSekli](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CalismaSekliID] [int] NULL,
	[IsIlanID] [int] NULL,
 CONSTRAINT [PK_IsIlaniCalismaSekli] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IsIlaniCinsiyet]    Script Date: 28.06.2024 10:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IsIlaniCinsiyet](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CinsiyetID] [int] NULL,
	[IsIlanID] [int] NULL,
 CONSTRAINT [PK_IsIlaniCinsiyet] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IsIlaniDurum]    Script Date: 28.06.2024 10:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IsIlaniDurum](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IsIlanID] [int] NULL,
	[DurumID] [int] NULL,
 CONSTRAINT [PK_IsIlaniDurum] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IsIlaniMezuniyet]    Script Date: 28.06.2024 10:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IsIlaniMezuniyet](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MezuniyetID] [int] NULL,
	[IsIlaniID] [int] NULL,
 CONSTRAINT [PK_IsIlaniMezuniyet] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IsIlaniSehirler]    Script Date: 28.06.2024 10:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IsIlaniSehirler](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SehirID] [int] NULL,
	[IsIlanID] [int] NULL,
 CONSTRAINT [PK_IsIlaniSehirler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IsIlaniUlke]    Script Date: 28.06.2024 10:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IsIlaniUlke](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UlkeID] [int] NULL,
	[IsIlanID] [int] NULL,
 CONSTRAINT [PK_IsIlaniUlke] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IsIlaniYabanciDiller]    Script Date: 28.06.2024 10:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IsIlaniYabanciDiller](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IsIlanID] [int] NULL,
	[YabanciDilID] [int] NULL,
	[Okuma] [nvarchar](20) NULL,
	[Yazma] [nvarchar](20) NULL,
 CONSTRAINT [PK_IsIlaniYabanciDiller] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IsIlanlariDeneyimSuresi]    Script Date: 28.06.2024 10:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IsIlanlariDeneyimSuresi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DeneyimSureID] [int] NULL,
	[IsIlanID] [int] NULL,
 CONSTRAINT [PK_IsIlanlariDeneyimSuresi] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KisiBilgileri]    Script Date: 28.06.2024 10:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KisiBilgileri](
	[ID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mezuniyet]    Script Date: 28.06.2024 10:57:29 ******/
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
/****** Object:  Table [dbo].[Mulakatlar]    Script Date: 28.06.2024 10:57:29 ******/
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
/****** Object:  Table [dbo].[MulakatListesi]    Script Date: 28.06.2024 10:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MulakatListesi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OzgecmisID] [int] NULL,
	[MulakatDurumID] [int] NULL,
	[SirketID] [int] NULL,
	[IsIlanID] [int] NULL,
 CONSTRAINT [PK_MulakatListesi] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OzgecmisHavuzu]    Script Date: 28.06.2024 10:57:29 ******/
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
/****** Object:  Table [dbo].[OzgecmisSehirler]    Script Date: 28.06.2024 10:57:29 ******/
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
/****** Object:  Table [dbo].[OzgecmisYabanciDil]    Script Date: 28.06.2024 10:57:29 ******/
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
 CONSTRAINT [PK_OzgecmisYabanciDil] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OzgecmisYazilimDilleri]    Script Date: 28.06.2024 10:57:29 ******/
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
/****** Object:  Table [dbo].[Referanslar]    Script Date: 28.06.2024 10:57:29 ******/
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
/****** Object:  Table [dbo].[Sehirler]    Script Date: 28.06.2024 10:57:29 ******/
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
/****** Object:  Table [dbo].[Sertifikalar]    Script Date: 28.06.2024 10:57:29 ******/
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
 CONSTRAINT [PK_Sertifikalar] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sinavlar]    Script Date: 28.06.2024 10:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sinavlar](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SinavAdi] [nvarchar](50) NULL,
	[Puan] [tinyint] NULL,
	[Tarih] [date] NULL,
	[OzgecmisID] [int] NULL,
 CONSTRAINT [PK_Sinavlar] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SirketTakip]    Script Date: 28.06.2024 10:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SirketTakip](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciID] [int] NULL,
	[SirketID] [int] NULL,
 CONSTRAINT [PK_SirketTakip] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SosyalMedya]    Script Date: 28.06.2024 10:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SosyalMedya](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Facebook] [nvarchar](50) NULL,
	[X] [nvarchar](50) NULL,
	[Github] [nvarchar](50) NULL,
	[Linkedin] [nvarchar](50) NULL,
	[Instagram] [nvarchar](50) NULL,
	[OzgecmisID] [int] NULL,
 CONSTRAINT [PK_SosyalMedya] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ulkeler]    Script Date: 28.06.2024 10:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ulkeler](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UlkeAdi] [nvarchar](50) NULL,
 CONSTRAINT [PK_Ulkeler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Universite]    Script Date: 28.06.2024 10:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Universite](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UniAdi] [nvarchar](50) NULL,
 CONSTRAINT [PK_Universite] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[YabanciDiller]    Script Date: 28.06.2024 10:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YabanciDiller](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[YabanciDilAdi] [nvarchar](50) NULL,
 CONSTRAINT [PK_YabanciDiller] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[YazilimDilleri]    Script Date: 28.06.2024 10:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YazilimDilleri](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DilAdi] [nvarchar](50) NULL,
 CONSTRAINT [PK_YazilimDilleri] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Basvuranlar] ON 

INSERT [dbo].[Basvuranlar] ([ID], [IsIlanID], [OzgecmisID]) VALUES (1, 1, 1)
INSERT [dbo].[Basvuranlar] ([ID], [IsIlanID], [OzgecmisID]) VALUES (2, 1, 2)
INSERT [dbo].[Basvuranlar] ([ID], [IsIlanID], [OzgecmisID]) VALUES (3, 2, 2)
SET IDENTITY_INSERT [dbo].[Basvuranlar] OFF
GO
SET IDENTITY_INSERT [dbo].[BolumAdi] ON 

INSERT [dbo].[BolumAdi] ([ID], [UniBolumAdi], [FakulteID]) VALUES (1, N'YBS', 1)
INSERT [dbo].[BolumAdi] ([ID], [UniBolumAdi], [FakulteID]) VALUES (2, N'Grafik Tasarım', 4)
INSERT [dbo].[BolumAdi] ([ID], [UniBolumAdi], [FakulteID]) VALUES (3, N'Yazılım Mühendisliği', 2)
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

INSERT [dbo].[Egitimler] ([ID], [EgitimAciklama], [BaslangicTarih], [BitisTarih], [OzgecmisID], [UniversiteID], [FakulteID], [BolumID]) VALUES (1, N'4 yıllık Lisans eğitimim boyunca her sene bölüm birincisi derecesine sahip oldum.', CAST(N'2023-01-01' AS Date), CAST(N'2024-05-01' AS Date), 1, 1, 1, 1)
INSERT [dbo].[Egitimler] ([ID], [EgitimAciklama], [BaslangicTarih], [BitisTarih], [OzgecmisID], [UniversiteID], [FakulteID], [BolumID]) VALUES (2, N'4 yıllık grafik tasarım bitirdim', CAST(N'2020-04-02' AS Date), CAST(N'2024-08-02' AS Date), 1, 3, 4, 2)
INSERT [dbo].[Egitimler] ([ID], [EgitimAciklama], [BaslangicTarih], [BitisTarih], [OzgecmisID], [UniversiteID], [FakulteID], [BolumID]) VALUES (3, N'yüksek lisans yaptım 2 yıl', CAST(N'2022-04-04' AS Date), CAST(N'2024-05-05' AS Date), 1, 3, 3, 3)
INSERT [dbo].[Egitimler] ([ID], [EgitimAciklama], [BaslangicTarih], [BitisTarih], [OzgecmisID], [UniversiteID], [FakulteID], [BolumID]) VALUES (4, N'Lisans eğitimimi tamamladım', CAST(N'2021-02-07' AS Date), CAST(N'2024-04-08' AS Date), 2, 2, 2, 3)
SET IDENTITY_INSERT [dbo].[Egitimler] OFF
GO
SET IDENTITY_INSERT [dbo].[EkBilgiler] ON 

INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (1, N'17 Native uygulama geliştirdim.', 1)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (2, N'+90.000 üzeri uygulama indirme sayısı.', 1)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (3, N'Çalışkan ve hızlı öğrenirim.', 2)
INSERT [dbo].[EkBilgiler] ([ID], [Bilgiler], [OzgecmisID]) VALUES (4, N'uygulama indirme sayısı.', 2)
SET IDENTITY_INSERT [dbo].[EkBilgiler] OFF
GO
SET IDENTITY_INSERT [dbo].[FakulteAdi] ON 

INSERT [dbo].[FakulteAdi] ([ID], [UniFakulteAdi], [UniversiteID]) VALUES (1, N'İİBF', 1)
INSERT [dbo].[FakulteAdi] ([ID], [UniFakulteAdi], [UniversiteID]) VALUES (2, N'Mühendislik Fak', 4)
INSERT [dbo].[FakulteAdi] ([ID], [UniFakulteAdi], [UniversiteID]) VALUES (3, N'Fen ve Edebiyat Fak', 2)
INSERT [dbo].[FakulteAdi] ([ID], [UniFakulteAdi], [UniversiteID]) VALUES (4, N'Güzel Sanatlar Fak', 3)
SET IDENTITY_INSERT [dbo].[FakulteAdi] OFF
GO
SET IDENTITY_INSERT [dbo].[FavoriIlanlar] ON 

INSERT [dbo].[FavoriIlanlar] ([ID], [KullaniciID], [IlanID]) VALUES (1, 1, 1)
INSERT [dbo].[FavoriIlanlar] ([ID], [KullaniciID], [IlanID]) VALUES (2, 1, 2)
INSERT [dbo].[FavoriIlanlar] ([ID], [KullaniciID], [IlanID]) VALUES (3, 2, 2)
INSERT [dbo].[FavoriIlanlar] ([ID], [KullaniciID], [IlanID]) VALUES (4, 2, 1)
SET IDENTITY_INSERT [dbo].[FavoriIlanlar] OFF
GO
SET IDENTITY_INSERT [dbo].[Hakkimda] ON 

INSERT [dbo].[Hakkimda] ([ID], [Hakkimda], [SektorAdi], [CalismaSekli], [Konum], [DeneyimYili], [MezuniyetDerece], [OzgecmisID]) VALUES (1, N'Eğitim hayatım açtığınız pozisyonun gerektirdiği altyapıyı bana sağladı. Eğitim sürecim içerisinde araştırma, öz motivasyon, girişimcilik ve farklı yetenekler edinme noktasında kendimi geliştirdim. Özgeçmişimde de görebileceğiniz gibi farklı eğitimlerle ve yaptığım bireysel araştırmalarla kendimi iş hayatına hazırladım.', N'Yazılım', N' Tam Zamanlı', N'İstanbul', N'2 Yıl', N'Lisans', 1)
INSERT [dbo].[Hakkimda] ([ID], [Hakkimda], [SektorAdi], [CalismaSekli], [Konum], [DeneyimYili], [MezuniyetDerece], [OzgecmisID]) VALUES (2, N'İş yaşamında efektif ve hızlı olmak konusunda son derece özverili ve hevesli olduğumu, pozisyonun gerektirdiği sorumluluğu merak ve istekle üzerime almak istediğimi belirtmek isterim. İstekli, özenli ve dikkatli çalışmanın mutlaka başarı ile sonuçlanacağının bilincindeyim. Bu nedenle size yeteneklerim ve çalışma disiplinim ile katkı sağlayabileceğim noktasında şüphem yok.', N'Yazılım', N'Tam Zamanlı', N'Ankara', N'3 Yıl', N'Yüksek Lisans', 2)
SET IDENTITY_INSERT [dbo].[Hakkimda] OFF
GO
SET IDENTITY_INSERT [dbo].[Hobiler] ON 

INSERT [dbo].[Hobiler] ([ID], [Hobi], [OzgecmisID]) VALUES (1, N'Bilgisayar', 1)
INSERT [dbo].[Hobiler] ([ID], [Hobi], [OzgecmisID]) VALUES (2, N'3D Yazıcılar', 1)
INSERT [dbo].[Hobiler] ([ID], [Hobi], [OzgecmisID]) VALUES (3, N'Otomobiller', 1)
INSERT [dbo].[Hobiler] ([ID], [Hobi], [OzgecmisID]) VALUES (4, N'Müzik', 2)
INSERT [dbo].[Hobiler] ([ID], [Hobi], [OzgecmisID]) VALUES (5, N'Resim', 2)
INSERT [dbo].[Hobiler] ([ID], [Hobi], [OzgecmisID]) VALUES (6, N'Tarih', 2)
SET IDENTITY_INSERT [dbo].[Hobiler] OFF
GO
SET IDENTITY_INSERT [dbo].[IlanDurumu] ON 

INSERT [dbo].[IlanDurumu] ([ID], [Durum]) VALUES (1, N'Uygun')
INSERT [dbo].[IlanDurumu] ([ID], [Durum]) VALUES (2, N'Askıda')
INSERT [dbo].[IlanDurumu] ([ID], [Durum]) VALUES (3, N'Bitti')
SET IDENTITY_INSERT [dbo].[IlanDurumu] OFF
GO
SET IDENTITY_INSERT [dbo].[IsDeneyimleri] ON 

INSERT [dbo].[IsDeneyimleri] ([ID], [DeneyimAdi], [DeneyimAciklama], [SirketAdi], [BaslangicTarihi], [BitisTarihi], [OzgecmisID]) VALUES (1, N'.NET Uzmanı', N'Bu süreç boyunca, Gazetelerin Seri İlan Departmanlarının İlan alımından baskıya kadar ki, Tüm operasyonel süreçleri için geliştirilmiş yazılım çözümüdü olan Sis2010 Projesinde destek sağladım.', N'OHO TECHNOLOGY', CAST(N'2023-08-05' AS Date), CAST(N'2023-12-18' AS Date), 1)
INSERT [dbo].[IsDeneyimleri] ([ID], [DeneyimAdi], [DeneyimAciklama], [SirketAdi], [BaslangicTarihi], [BitisTarihi], [OzgecmisID]) VALUES (2, N'Junior .NET Geliştiricisi', N'Kendimi geliştirme fırsatını bulduğum Selvi Boylum Al Yazılım şirketinde; ilk senemde yazılım destek uzmanı olarak görev yaptım. İkinci senemde ise Uygulama İçi Kart Entegrasyonu Projesinde Ana Geliştiricisi olarak görev yaptım.', N'Selvi Boylum Al Yazılım', CAST(N'2022-12-12' AS Date), CAST(N'2023-02-02' AS Date), 1)
INSERT [dbo].[IsDeneyimleri] ([ID], [DeneyimAdi], [DeneyimAciklama], [SirketAdi], [BaslangicTarihi], [BitisTarihi], [OzgecmisID]) VALUES (3, N'Junior Front end Geliştiricisi', N'İkinci senemde ise Uygulama İçi Kart Entegrasyonu Projesinde Ana Geliştiricisi olarak görev yaptım', N'deneyim teknoloji', CAST(N'2021-04-05' AS Date), CAST(N'2021-12-09' AS Date), 2)
SET IDENTITY_INSERT [dbo].[IsDeneyimleri] OFF
GO
SET IDENTITY_INSERT [dbo].[IsIlaniCalismaSekli] ON 

INSERT [dbo].[IsIlaniCalismaSekli] ([ID], [CalismaSekliID], [IsIlanID]) VALUES (1, 1, 1)
INSERT [dbo].[IsIlaniCalismaSekli] ([ID], [CalismaSekliID], [IsIlanID]) VALUES (2, 4, 1)
INSERT [dbo].[IsIlaniCalismaSekli] ([ID], [CalismaSekliID], [IsIlanID]) VALUES (4, 5, 2)
SET IDENTITY_INSERT [dbo].[IsIlaniCalismaSekli] OFF
GO
SET IDENTITY_INSERT [dbo].[IsIlaniCinsiyet] ON 

INSERT [dbo].[IsIlaniCinsiyet] ([ID], [CinsiyetID], [IsIlanID]) VALUES (1, 1, 1)
INSERT [dbo].[IsIlaniCinsiyet] ([ID], [CinsiyetID], [IsIlanID]) VALUES (2, 2, 1)
INSERT [dbo].[IsIlaniCinsiyet] ([ID], [CinsiyetID], [IsIlanID]) VALUES (3, 1, 2)
INSERT [dbo].[IsIlaniCinsiyet] ([ID], [CinsiyetID], [IsIlanID]) VALUES (4, 2, 2)
SET IDENTITY_INSERT [dbo].[IsIlaniCinsiyet] OFF
GO
SET IDENTITY_INSERT [dbo].[IsIlaniDurum] ON 

INSERT [dbo].[IsIlaniDurum] ([ID], [IsIlanID], [DurumID]) VALUES (1, 1, 1)
INSERT [dbo].[IsIlaniDurum] ([ID], [IsIlanID], [DurumID]) VALUES (2, 2, 2)
SET IDENTITY_INSERT [dbo].[IsIlaniDurum] OFF
GO
SET IDENTITY_INSERT [dbo].[IsIlaniMezuniyet] ON 

INSERT [dbo].[IsIlaniMezuniyet] ([ID], [MezuniyetID], [IsIlaniID]) VALUES (1, 2, 1)
INSERT [dbo].[IsIlaniMezuniyet] ([ID], [MezuniyetID], [IsIlaniID]) VALUES (2, 3, 1)
INSERT [dbo].[IsIlaniMezuniyet] ([ID], [MezuniyetID], [IsIlaniID]) VALUES (3, 4, 1)
INSERT [dbo].[IsIlaniMezuniyet] ([ID], [MezuniyetID], [IsIlaniID]) VALUES (4, 1, 2)
INSERT [dbo].[IsIlaniMezuniyet] ([ID], [MezuniyetID], [IsIlaniID]) VALUES (5, 2, 2)
INSERT [dbo].[IsIlaniMezuniyet] ([ID], [MezuniyetID], [IsIlaniID]) VALUES (6, 3, 2)
INSERT [dbo].[IsIlaniMezuniyet] ([ID], [MezuniyetID], [IsIlaniID]) VALUES (7, 4, 2)
SET IDENTITY_INSERT [dbo].[IsIlaniMezuniyet] OFF
GO
SET IDENTITY_INSERT [dbo].[IsIlaniSehirler] ON 

INSERT [dbo].[IsIlaniSehirler] ([ID], [SehirID], [IsIlanID]) VALUES (4, 34, 1)
INSERT [dbo].[IsIlaniSehirler] ([ID], [SehirID], [IsIlanID]) VALUES (6, 35, 1)
INSERT [dbo].[IsIlaniSehirler] ([ID], [SehirID], [IsIlanID]) VALUES (7, 37, 2)
INSERT [dbo].[IsIlaniSehirler] ([ID], [SehirID], [IsIlanID]) VALUES (8, 34, 2)
SET IDENTITY_INSERT [dbo].[IsIlaniSehirler] OFF
GO
SET IDENTITY_INSERT [dbo].[IsIlaniSektor] ON 

INSERT [dbo].[IsIlaniSektor] ([ID], [SektorID], [IsIlanID]) VALUES (1, 1, 1)
INSERT [dbo].[IsIlaniSektor] ([ID], [SektorID], [IsIlanID]) VALUES (2, 1, 2)
INSERT [dbo].[IsIlaniSektor] ([ID], [SektorID], [IsIlanID]) VALUES (3, 3, 2)
SET IDENTITY_INSERT [dbo].[IsIlaniSektor] OFF
GO
SET IDENTITY_INSERT [dbo].[IsIlaniUlke] ON 

INSERT [dbo].[IsIlaniUlke] ([ID], [UlkeID], [IsIlanID]) VALUES (1, 1, 1)
INSERT [dbo].[IsIlaniUlke] ([ID], [UlkeID], [IsIlanID]) VALUES (2, 2, 1)
INSERT [dbo].[IsIlaniUlke] ([ID], [UlkeID], [IsIlanID]) VALUES (3, 1, 2)
INSERT [dbo].[IsIlaniUlke] ([ID], [UlkeID], [IsIlanID]) VALUES (4, 3, 2)
SET IDENTITY_INSERT [dbo].[IsIlaniUlke] OFF
GO
SET IDENTITY_INSERT [dbo].[IsIlaniYabanciDiller] ON 

INSERT [dbo].[IsIlaniYabanciDiller] ([ID], [IsIlanID], [YabanciDilID], [Okuma], [Yazma]) VALUES (1, 1, 1, N'Orta', N'Orta')
INSERT [dbo].[IsIlaniYabanciDiller] ([ID], [IsIlanID], [YabanciDilID], [Okuma], [Yazma]) VALUES (2, 1, 3, N'Başlangıç', N'Başlangıç')
INSERT [dbo].[IsIlaniYabanciDiller] ([ID], [IsIlanID], [YabanciDilID], [Okuma], [Yazma]) VALUES (3, 2, 2, N'Orta', N'Orta')
SET IDENTITY_INSERT [dbo].[IsIlaniYabanciDiller] OFF
GO
SET IDENTITY_INSERT [dbo].[IsIlanlari] ON 

INSERT [dbo].[IsIlanlari] ([ID], [PozisyonAdi], [IsTanimi], [Yetkinlikler], [Tercihen], [SirketImkanlari], [PostaKodu], [IlanTarihi], [SonBasvuruTarihi]) VALUES (1, N'.NET Yazılım Uzmanı ', N'Merkezi İstanbul''da olan şirketimiz, müşterilerimize yazılım alanında hizmet vermekte. Ağırlıklı olarak .NET geliştirme yapan şirketimiz Türkiye pazarında yer almak ve daha fazla katma değer sağlamak adına İstanbul''daki ofisimizde her geçen gün kaliteli ve yüksek teknolojiye sahip projeler üretmek için durmaksızın çalışıyoruz. ', N'React Native ile uygulama geliştirmiş ve ekosistemine oldukça iyi hakim
Web servisleri/REST API''ler hakkında bilgi sahibi', N'JavaScript Framework da genel olarak ilgi duyan
NodeJS tecrübesi olması', N'Sağlık Hizmeti Ay Sonu Tatili Yıl Sonu Çifte Maaş Öğle Yemeği', NULL, CAST(N'2024-02-21' AS Date), CAST(N'2024-03-05' AS Date))
INSERT [dbo].[IsIlanlari] ([ID], [PozisyonAdi], [IsTanimi], [Yetkinlikler], [Tercihen], [SirketImkanlari], [PostaKodu], [IlanTarihi], [SonBasvuruTarihi]) VALUES (2, N'Front-end Geliştiricisi ', N'Merkezi İstanbul''da olan şirketimiz, müşterilerimize yazılım alanında hizmet vermekte. Ağırlıklı olarak .NET geliştirme yapan şirketimiz Türkiye pazarında yer almak ve daha fazla katma değer sağlamak adına İstanbul''daki ofisimizde her geçen gün kaliteli ve yüksek teknolojiye sahip projeler üretmek için durmaksızın çalışıyoruz', N'Teknik dokümantasyonu takip edebilecek seviyede İngilizce bilen
Redux veya context yapısını hakkında bilgi sahibi', N'HTML ve CSS önderleyicileri konusunda yetkin
Ekstra olarak Java, Javascript, C#, Swift', N'rket Artıları

    Sağlık Hizmeti
    Ay Sonu Tatili
    Yıl Sonu Çifte Maaş
    Öğle Yemeği
', NULL, CAST(N'2023-01-01' AS Date), CAST(N'2023-01-25' AS Date))
SET IDENTITY_INSERT [dbo].[IsIlanlari] OFF
GO
SET IDENTITY_INSERT [dbo].[IsIlanlariDeneyimSuresi] ON 

INSERT [dbo].[IsIlanlariDeneyimSuresi] ([ID], [DeneyimSureID], [IsIlanID]) VALUES (1, 1, 1)
INSERT [dbo].[IsIlanlariDeneyimSuresi] ([ID], [DeneyimSureID], [IsIlanID]) VALUES (2, 2, 1)
INSERT [dbo].[IsIlanlariDeneyimSuresi] ([ID], [DeneyimSureID], [IsIlanID]) VALUES (3, 3, 1)
INSERT [dbo].[IsIlanlariDeneyimSuresi] ([ID], [DeneyimSureID], [IsIlanID]) VALUES (4, 1, 2)
INSERT [dbo].[IsIlanlariDeneyimSuresi] ([ID], [DeneyimSureID], [IsIlanID]) VALUES (5, 4, 2)
SET IDENTITY_INSERT [dbo].[IsIlanlariDeneyimSuresi] OFF
GO
SET IDENTITY_INSERT [dbo].[KullaniciUyelik] ON 

INSERT [dbo].[KullaniciUyelik] ([ID], [Isim], [Soyisim], [DogumTarihi], [KullaniciAdi], [Email], [Sifre], [KullaniciTipi]) VALUES (1, N'Mustafa Levent', N'Aydemir', CAST(N'1997-02-24' AS Date), N'leventaydemir', N'levent.ydmr@gmail.com', N'0123654', N'is_arayan')
INSERT [dbo].[KullaniciUyelik] ([ID], [Isim], [Soyisim], [DogumTarihi], [KullaniciAdi], [Email], [Sifre], [KullaniciTipi]) VALUES (2, N'Emre', N'Nefesli', CAST(N'1999-02-04' AS Date), N'emrenefesli', N'emrenqw@gmail.com', N'4563210', N'is_arayan')
INSERT [dbo].[KullaniciUyelik] ([ID], [Isim], [Soyisim], [DogumTarihi], [KullaniciAdi], [Email], [Sifre], [KullaniciTipi]) VALUES (4, N'Tunahan', N'Boz', CAST(N'1998-03-10' AS Date), N'tunahan', N'tunahan@gmail.com', N'785410s', N'is_veren')
INSERT [dbo].[KullaniciUyelik] ([ID], [Isim], [Soyisim], [DogumTarihi], [KullaniciAdi], [Email], [Sifre], [KullaniciTipi]) VALUES (5, N'Gökhan', N'Pirizoğlu', CAST(N'1998-10-02' AS Date), N'gokhanprz', N'gokhanprz@gmail.com', N'235471wes', N'is_veren')
SET IDENTITY_INSERT [dbo].[KullaniciUyelik] OFF
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

INSERT [dbo].[MulakatListesi] ([ID], [OzgecmisID], [MulakatDurumID], [SirketID], [IsIlanID]) VALUES (1, 1, 1, 1, 1)
INSERT [dbo].[MulakatListesi] ([ID], [OzgecmisID], [MulakatDurumID], [SirketID], [IsIlanID]) VALUES (2, 2, 2, 1, 2)
INSERT [dbo].[MulakatListesi] ([ID], [OzgecmisID], [MulakatDurumID], [SirketID], [IsIlanID]) VALUES (3, 2, 3, 2, 1)
INSERT [dbo].[MulakatListesi] ([ID], [OzgecmisID], [MulakatDurumID], [SirketID], [IsIlanID]) VALUES (4, 1, 2, 2, 2)
SET IDENTITY_INSERT [dbo].[MulakatListesi] OFF
GO
SET IDENTITY_INSERT [dbo].[Ozgecmis] ON 

INSERT [dbo].[Ozgecmis] ([ID], [KullaniciID], [TelNo], [Email], [Uyruk], [Cinsiyet], [Adres], [Durum]) VALUES (1, 1, N'05413322437', N'leayneih@gmail.com', N'Türk', N'Erkek', N'hocaimat mahallesi', 1)
INSERT [dbo].[Ozgecmis] ([ID], [KullaniciID], [TelNo], [Email], [Uyruk], [Cinsiyet], [Adres], [Durum]) VALUES (2, 2, N'05344578594', N'emrenm@gmail.com', N'Türk', N'Erkek', N'zeytinlik sokak', 1)
SET IDENTITY_INSERT [dbo].[Ozgecmis] OFF
GO
SET IDENTITY_INSERT [dbo].[OzgecmisHavuzu] ON 

INSERT [dbo].[OzgecmisHavuzu] ([ID], [OzgecmisID], [SirketID]) VALUES (1, 1, 1)
INSERT [dbo].[OzgecmisHavuzu] ([ID], [OzgecmisID], [SirketID]) VALUES (2, 1, 2)
INSERT [dbo].[OzgecmisHavuzu] ([ID], [OzgecmisID], [SirketID]) VALUES (3, 2, 2)
SET IDENTITY_INSERT [dbo].[OzgecmisHavuzu] OFF
GO
SET IDENTITY_INSERT [dbo].[OzgecmisSehirler] ON 

INSERT [dbo].[OzgecmisSehirler] ([ID], [SehirID], [OzgecmisID]) VALUES (1, 37, 1)
INSERT [dbo].[OzgecmisSehirler] ([ID], [SehirID], [OzgecmisID]) VALUES (2, 34, 2)
SET IDENTITY_INSERT [dbo].[OzgecmisSehirler] OFF
GO
SET IDENTITY_INSERT [dbo].[OzgecmisYabanciDil] ON 

INSERT [dbo].[OzgecmisYabanciDil] ([ID], [OzgecmisID], [YabanciDilID], [Okuma], [Yazma]) VALUES (1, 1, 1, N'Orta', N'Orta')
INSERT [dbo].[OzgecmisYabanciDil] ([ID], [OzgecmisID], [YabanciDilID], [Okuma], [Yazma]) VALUES (2, 1, 2, N'Başlangıç', N'Başlangıç')
INSERT [dbo].[OzgecmisYabanciDil] ([ID], [OzgecmisID], [YabanciDilID], [Okuma], [Yazma]) VALUES (3, 2, 4, N'Başlangıç', N'Başlangıç')
INSERT [dbo].[OzgecmisYabanciDil] ([ID], [OzgecmisID], [YabanciDilID], [Okuma], [Yazma]) VALUES (4, 2, 3, N'Orta', N'Orta')
SET IDENTITY_INSERT [dbo].[OzgecmisYabanciDil] OFF
GO
SET IDENTITY_INSERT [dbo].[OzgecmisYazilimDilleri] ON 

INSERT [dbo].[OzgecmisYazilimDilleri] ([ID], [DilID], [OzgecmisID], [BilgiOrani]) VALUES (1, 1, 1, 80)
INSERT [dbo].[OzgecmisYazilimDilleri] ([ID], [DilID], [OzgecmisID], [BilgiOrani]) VALUES (2, 3, 1, 50)
INSERT [dbo].[OzgecmisYazilimDilleri] ([ID], [DilID], [OzgecmisID], [BilgiOrani]) VALUES (3, 4, 1, 70)
INSERT [dbo].[OzgecmisYazilimDilleri] ([ID], [DilID], [OzgecmisID], [BilgiOrani]) VALUES (4, 1, 2, 40)
INSERT [dbo].[OzgecmisYazilimDilleri] ([ID], [DilID], [OzgecmisID], [BilgiOrani]) VALUES (5, 5, 2, 60)
INSERT [dbo].[OzgecmisYazilimDilleri] ([ID], [DilID], [OzgecmisID], [BilgiOrani]) VALUES (6, 6, 2, 80)
SET IDENTITY_INSERT [dbo].[OzgecmisYazilimDilleri] OFF
GO
SET IDENTITY_INSERT [dbo].[Referanslar] ON 

INSERT [dbo].[Referanslar] ([ID], [SirketAdi], [RefAdi], [TelNo], [OzgecmisID]) VALUES (1, N'falanca şirket', N'ismail mert', N'015346', 1)
INSERT [dbo].[Referanslar] ([ID], [SirketAdi], [RefAdi], [TelNo], [OzgecmisID]) VALUES (2, N'falanca şirket 2', N'emre akbaş', N'456546542', 1)
INSERT [dbo].[Referanslar] ([ID], [SirketAdi], [RefAdi], [TelNo], [OzgecmisID]) VALUES (3, N'...... şirket 1 ', N'mehmet çınar', N'21321412', 2)
INSERT [dbo].[Referanslar] ([ID], [SirketAdi], [RefAdi], [TelNo], [OzgecmisID]) VALUES (4, N'...... şirket 2', N'timur yıldız', N'8745123', 2)
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

INSERT [dbo].[Sektorler] ([ID], [SektorAdi]) VALUES (1, N'Yazılım')
INSERT [dbo].[Sektorler] ([ID], [SektorAdi]) VALUES (2, N'Tekstil')
INSERT [dbo].[Sektorler] ([ID], [SektorAdi]) VALUES (3, N'Otomotiv')
INSERT [dbo].[Sektorler] ([ID], [SektorAdi]) VALUES (4, N'Bankacılık')
INSERT [dbo].[Sektorler] ([ID], [SektorAdi]) VALUES (5, N'Tarım')
INSERT [dbo].[Sektorler] ([ID], [SektorAdi]) VALUES (6, N'Hizmet')
SET IDENTITY_INSERT [dbo].[Sektorler] OFF
GO
SET IDENTITY_INSERT [dbo].[Sertifikalar] ON 

INSERT [dbo].[Sertifikalar] ([ID], [SertifikaAdi], [KurumAdi], [Tarih], [OzgecmisID]) VALUES (1, N'sertifika 1', N'kurumadi 1', CAST(N'2021-01-01' AS Date), 1)
INSERT [dbo].[Sertifikalar] ([ID], [SertifikaAdi], [KurumAdi], [Tarih], [OzgecmisID]) VALUES (2, N'sertifika2', N'kurumadi 2', CAST(N'2023-04-04' AS Date), 1)
INSERT [dbo].[Sertifikalar] ([ID], [SertifikaAdi], [KurumAdi], [Tarih], [OzgecmisID]) VALUES (3, N'sertifika 3', N'kurumadi 3', CAST(N'2024-08-05' AS Date), 2)
INSERT [dbo].[Sertifikalar] ([ID], [SertifikaAdi], [KurumAdi], [Tarih], [OzgecmisID]) VALUES (4, N'sertifika 4', N'kurumadi 4', CAST(N'2020-09-21' AS Date), 2)
SET IDENTITY_INSERT [dbo].[Sertifikalar] OFF
GO
SET IDENTITY_INSERT [dbo].[Sinavlar] ON 

INSERT [dbo].[Sinavlar] ([ID], [SinavAdi], [Puan], [Tarih], [OzgecmisID]) VALUES (1, N'KPSS', 80, CAST(N'2023-08-21' AS Date), 1)
INSERT [dbo].[Sinavlar] ([ID], [SinavAdi], [Puan], [Tarih], [OzgecmisID]) VALUES (2, N'YDS', 70, CAST(N'2022-12-15' AS Date), 1)
INSERT [dbo].[Sinavlar] ([ID], [SinavAdi], [Puan], [Tarih], [OzgecmisID]) VALUES (3, N'KPSS', 75, CAST(N'2023-08-21' AS Date), 2)
INSERT [dbo].[Sinavlar] ([ID], [SinavAdi], [Puan], [Tarih], [OzgecmisID]) VALUES (4, N'LYS', 80, CAST(N'2020-06-20' AS Date), 2)
SET IDENTITY_INSERT [dbo].[Sinavlar] OFF
GO
SET IDENTITY_INSERT [dbo].[SirketBilgileri] ON 

INSERT [dbo].[SirketBilgileri] ([ID], [SirketAdi], [TelNo], [Adres], [Hakkimizda], [TaniticiLink], [KullaniciBilgiID]) VALUES (1, N'SektörSoft', N'02120141245', N'YTÜ TeknoPark', N'hakkımızda bölümü yazısı', N'sektorsoft.***', 4)
INSERT [dbo].[SirketBilgileri] ([ID], [SirketAdi], [TelNo], [Adres], [Hakkimizda], [TaniticiLink], [KullaniciBilgiID]) VALUES (2, N'Tosya Yazılım', N'03663134424', N'Tosya ... mahallesi', N'tosyada kurulan şirket', N'tosya.net', 5)
SET IDENTITY_INSERT [dbo].[SirketBilgileri] OFF
GO
SET IDENTITY_INSERT [dbo].[SirketSektor] ON 

INSERT [dbo].[SirketSektor] ([ID], [SektorID], [SirketID]) VALUES (1, 1, 1)
INSERT [dbo].[SirketSektor] ([ID], [SektorID], [SirketID]) VALUES (2, 3, 2)
INSERT [dbo].[SirketSektor] ([ID], [SektorID], [SirketID]) VALUES (3, 4, 1)
INSERT [dbo].[SirketSektor] ([ID], [SektorID], [SirketID]) VALUES (4, 6, 2)
SET IDENTITY_INSERT [dbo].[SirketSektor] OFF
GO
SET IDENTITY_INSERT [dbo].[SirketTakip] ON 

INSERT [dbo].[SirketTakip] ([ID], [KullaniciID], [SirketID]) VALUES (2, 1, 2)
INSERT [dbo].[SirketTakip] ([ID], [KullaniciID], [SirketID]) VALUES (3, 2, 1)
INSERT [dbo].[SirketTakip] ([ID], [KullaniciID], [SirketID]) VALUES (4, 1, 1)
SET IDENTITY_INSERT [dbo].[SirketTakip] OFF
GO
SET IDENTITY_INSERT [dbo].[SosyalMedya] ON 

INSERT [dbo].[SosyalMedya] ([ID], [Facebook], [X], [Github], [Linkedin], [Instagram], [OzgecmisID]) VALUES (1, N'leventface', N'leventx', N'leventgithub', N'leventlinedin', N'leventinstagram', 1)
INSERT [dbo].[SosyalMedya] ([ID], [Facebook], [X], [Github], [Linkedin], [Instagram], [OzgecmisID]) VALUES (2, N'faceemre', N'xemre', N'githubemre', N'linkedinemre', N'', 2)
SET IDENTITY_INSERT [dbo].[SosyalMedya] OFF
GO
SET IDENTITY_INSERT [dbo].[Ulkeler] ON 

INSERT [dbo].[Ulkeler] ([ID], [UlkeAdi]) VALUES (1, N'Türkiye')
INSERT [dbo].[Ulkeler] ([ID], [UlkeAdi]) VALUES (2, N'Almanya')
INSERT [dbo].[Ulkeler] ([ID], [UlkeAdi]) VALUES (3, N'Fransa')
INSERT [dbo].[Ulkeler] ([ID], [UlkeAdi]) VALUES (4, N'ABD')
INSERT [dbo].[Ulkeler] ([ID], [UlkeAdi]) VALUES (5, N'Ukrayna')
INSERT [dbo].[Ulkeler] ([ID], [UlkeAdi]) VALUES (6, N'İran')
INSERT [dbo].[Ulkeler] ([ID], [UlkeAdi]) VALUES (7, N'Hollanda')
INSERT [dbo].[Ulkeler] ([ID], [UlkeAdi]) VALUES (8, N'İrlanda')
INSERT [dbo].[Ulkeler] ([ID], [UlkeAdi]) VALUES (9, N'Japonya')
INSERT [dbo].[Ulkeler] ([ID], [UlkeAdi]) VALUES (10, N'Çin')
INSERT [dbo].[Ulkeler] ([ID], [UlkeAdi]) VALUES (11, N'Güney Kore')
SET IDENTITY_INSERT [dbo].[Ulkeler] OFF
GO
SET IDENTITY_INSERT [dbo].[Universite] ON 

INSERT [dbo].[Universite] ([ID], [UniAdi]) VALUES (1, N'Cumhuriyet Üniversitesi')
INSERT [dbo].[Universite] ([ID], [UniAdi]) VALUES (2, N'Boğaziçi Üniversitesi')
INSERT [dbo].[Universite] ([ID], [UniAdi]) VALUES (3, N'Marmara Üniversitesi')
INSERT [dbo].[Universite] ([ID], [UniAdi]) VALUES (4, N'KTÜ')
INSERT [dbo].[Universite] ([ID], [UniAdi]) VALUES (5, N'İTÜ')
INSERT [dbo].[Universite] ([ID], [UniAdi]) VALUES (6, N'ODTÜ')
INSERT [dbo].[Universite] ([ID], [UniAdi]) VALUES (7, N'HİTİT Üni')
SET IDENTITY_INSERT [dbo].[Universite] OFF
GO
SET IDENTITY_INSERT [dbo].[YabanciDiller] ON 

INSERT [dbo].[YabanciDiller] ([ID], [YabanciDilAdi]) VALUES (1, N'İngilizce')
INSERT [dbo].[YabanciDiller] ([ID], [YabanciDilAdi]) VALUES (2, N'Almanca')
INSERT [dbo].[YabanciDiller] ([ID], [YabanciDilAdi]) VALUES (3, N'Fransızca')
INSERT [dbo].[YabanciDiller] ([ID], [YabanciDilAdi]) VALUES (4, N'Rusça')
INSERT [dbo].[YabanciDiller] ([ID], [YabanciDilAdi]) VALUES (5, N'İspanyolca')
SET IDENTITY_INSERT [dbo].[YabanciDiller] OFF
GO
SET IDENTITY_INSERT [dbo].[YazilimDilleri] ON 

INSERT [dbo].[YazilimDilleri] ([ID], [DilAdi]) VALUES (1, N'C#')
INSERT [dbo].[YazilimDilleri] ([ID], [DilAdi]) VALUES (2, N'Javascript')
INSERT [dbo].[YazilimDilleri] ([ID], [DilAdi]) VALUES (3, N'Java')
INSERT [dbo].[YazilimDilleri] ([ID], [DilAdi]) VALUES (4, N'Python')
INSERT [dbo].[YazilimDilleri] ([ID], [DilAdi]) VALUES (5, N'PHP')
INSERT [dbo].[YazilimDilleri] ([ID], [DilAdi]) VALUES (6, N'SQL')
SET IDENTITY_INSERT [dbo].[YazilimDilleri] OFF
GO
ALTER TABLE [dbo].[KullaniciUyelik] ADD  DEFAULT ('is_arayan') FOR [KullaniciTipi]
GO
ALTER TABLE [dbo].[Basvuranlar]  WITH CHECK ADD  CONSTRAINT [FK_Basvuranlar_IsIlanlari] FOREIGN KEY([IsIlanID])
REFERENCES [dbo].[IsIlanlari] ([ID])
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
REFERENCES [dbo].[IsIlanlari] ([ID])
GO
ALTER TABLE [dbo].[FavoriIlanlar] CHECK CONSTRAINT [FK_FavoriIlanlar_IsIlanlari]
GO
ALTER TABLE [dbo].[FavoriIlanlar]  WITH CHECK ADD  CONSTRAINT [FK_FavoriIlanlar_KullaniciUyelik] FOREIGN KEY([KullaniciID])
REFERENCES [dbo].[KullaniciUyelik] ([ID])
GO
ALTER TABLE [dbo].[FavoriIlanlar] CHECK CONSTRAINT [FK_FavoriIlanlar_KullaniciUyelik]
GO
ALTER TABLE [dbo].[Hakkimda]  WITH CHECK ADD  CONSTRAINT [FK_Hakkimda_Ozgecmis] FOREIGN KEY([OzgecmisID])
REFERENCES [dbo].[Ozgecmis] ([ID])
GO
ALTER TABLE [dbo].[Hakkimda] CHECK CONSTRAINT [FK_Hakkimda_Ozgecmis]
GO
ALTER TABLE [dbo].[Hobiler]  WITH CHECK ADD  CONSTRAINT [FK_Hobiler_Ozgecmis] FOREIGN KEY([OzgecmisID])
REFERENCES [dbo].[Ozgecmis] ([ID])
GO
ALTER TABLE [dbo].[Hobiler] CHECK CONSTRAINT [FK_Hobiler_Ozgecmis]
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
ALTER TABLE [dbo].[IsIlaniCalismaSekli]  WITH CHECK ADD  CONSTRAINT [FK_IsIlaniCalismaSekli_IsIlanlari] FOREIGN KEY([IsIlanID])
REFERENCES [dbo].[IsIlanlari] ([ID])
GO
ALTER TABLE [dbo].[IsIlaniCalismaSekli] CHECK CONSTRAINT [FK_IsIlaniCalismaSekli_IsIlanlari]
GO
ALTER TABLE [dbo].[IsIlaniCinsiyet]  WITH CHECK ADD  CONSTRAINT [FK_IsIlaniCinsiyet_Cinsiyet] FOREIGN KEY([CinsiyetID])
REFERENCES [dbo].[Cinsiyet] ([ID])
GO
ALTER TABLE [dbo].[IsIlaniCinsiyet] CHECK CONSTRAINT [FK_IsIlaniCinsiyet_Cinsiyet]
GO
ALTER TABLE [dbo].[IsIlaniCinsiyet]  WITH CHECK ADD  CONSTRAINT [FK_IsIlaniCinsiyet_IsIlanlari] FOREIGN KEY([IsIlanID])
REFERENCES [dbo].[IsIlanlari] ([ID])
GO
ALTER TABLE [dbo].[IsIlaniCinsiyet] CHECK CONSTRAINT [FK_IsIlaniCinsiyet_IsIlanlari]
GO
ALTER TABLE [dbo].[IsIlaniDurum]  WITH CHECK ADD  CONSTRAINT [FK_IsIlaniDurum_IlanDurumu] FOREIGN KEY([DurumID])
REFERENCES [dbo].[IlanDurumu] ([ID])
GO
ALTER TABLE [dbo].[IsIlaniDurum] CHECK CONSTRAINT [FK_IsIlaniDurum_IlanDurumu]
GO
ALTER TABLE [dbo].[IsIlaniDurum]  WITH CHECK ADD  CONSTRAINT [FK_IsIlaniDurum_IsIlanlari] FOREIGN KEY([IsIlanID])
REFERENCES [dbo].[IsIlanlari] ([ID])
GO
ALTER TABLE [dbo].[IsIlaniDurum] CHECK CONSTRAINT [FK_IsIlaniDurum_IsIlanlari]
GO
ALTER TABLE [dbo].[IsIlaniMezuniyet]  WITH CHECK ADD  CONSTRAINT [FK_IsIlaniMezuniyet_IsIlanlari] FOREIGN KEY([IsIlaniID])
REFERENCES [dbo].[IsIlanlari] ([ID])
GO
ALTER TABLE [dbo].[IsIlaniMezuniyet] CHECK CONSTRAINT [FK_IsIlaniMezuniyet_IsIlanlari]
GO
ALTER TABLE [dbo].[IsIlaniMezuniyet]  WITH CHECK ADD  CONSTRAINT [FK_IsIlaniMezuniyet_Mezuniyet] FOREIGN KEY([MezuniyetID])
REFERENCES [dbo].[Mezuniyet] ([ID])
GO
ALTER TABLE [dbo].[IsIlaniMezuniyet] CHECK CONSTRAINT [FK_IsIlaniMezuniyet_Mezuniyet]
GO
ALTER TABLE [dbo].[IsIlaniSehirler]  WITH CHECK ADD  CONSTRAINT [FK_IsIlaniSehirler_IsIlanlari1] FOREIGN KEY([IsIlanID])
REFERENCES [dbo].[IsIlanlari] ([ID])
GO
ALTER TABLE [dbo].[IsIlaniSehirler] CHECK CONSTRAINT [FK_IsIlaniSehirler_IsIlanlari1]
GO
ALTER TABLE [dbo].[IsIlaniSehirler]  WITH CHECK ADD  CONSTRAINT [FK_IsIlaniSehirler_Sehirler1] FOREIGN KEY([SehirID])
REFERENCES [dbo].[Sehirler] ([ID])
GO
ALTER TABLE [dbo].[IsIlaniSehirler] CHECK CONSTRAINT [FK_IsIlaniSehirler_Sehirler1]
GO
ALTER TABLE [dbo].[IsIlaniSektor]  WITH CHECK ADD  CONSTRAINT [FK_IsIlaniSektor_IsIlanlari] FOREIGN KEY([IsIlanID])
REFERENCES [dbo].[IsIlanlari] ([ID])
GO
ALTER TABLE [dbo].[IsIlaniSektor] CHECK CONSTRAINT [FK_IsIlaniSektor_IsIlanlari]
GO
ALTER TABLE [dbo].[IsIlaniSektor]  WITH CHECK ADD  CONSTRAINT [FK_IsIlaniSektor_Sektorler] FOREIGN KEY([SektorID])
REFERENCES [dbo].[Sektorler] ([ID])
GO
ALTER TABLE [dbo].[IsIlaniSektor] CHECK CONSTRAINT [FK_IsIlaniSektor_Sektorler]
GO
ALTER TABLE [dbo].[IsIlaniUlke]  WITH CHECK ADD  CONSTRAINT [FK_IsIlaniUlke_IsIlanlari] FOREIGN KEY([IsIlanID])
REFERENCES [dbo].[IsIlanlari] ([ID])
GO
ALTER TABLE [dbo].[IsIlaniUlke] CHECK CONSTRAINT [FK_IsIlaniUlke_IsIlanlari]
GO
ALTER TABLE [dbo].[IsIlaniUlke]  WITH CHECK ADD  CONSTRAINT [FK_IsIlaniUlke_Ulkeler] FOREIGN KEY([UlkeID])
REFERENCES [dbo].[Ulkeler] ([ID])
GO
ALTER TABLE [dbo].[IsIlaniUlke] CHECK CONSTRAINT [FK_IsIlaniUlke_Ulkeler]
GO
ALTER TABLE [dbo].[IsIlaniYabanciDiller]  WITH CHECK ADD  CONSTRAINT [FK_IsIlaniYabanciDiller_IsIlanlari] FOREIGN KEY([IsIlanID])
REFERENCES [dbo].[IsIlanlari] ([ID])
GO
ALTER TABLE [dbo].[IsIlaniYabanciDiller] CHECK CONSTRAINT [FK_IsIlaniYabanciDiller_IsIlanlari]
GO
ALTER TABLE [dbo].[IsIlaniYabanciDiller]  WITH CHECK ADD  CONSTRAINT [FK_IsIlaniYabanciDiller_YabanciDiller] FOREIGN KEY([YabanciDilID])
REFERENCES [dbo].[YabanciDiller] ([ID])
GO
ALTER TABLE [dbo].[IsIlaniYabanciDiller] CHECK CONSTRAINT [FK_IsIlaniYabanciDiller_YabanciDiller]
GO
ALTER TABLE [dbo].[IsIlanlariDeneyimSuresi]  WITH CHECK ADD  CONSTRAINT [FK_IsIlanlariDeneyimSuresi_Deneyim] FOREIGN KEY([DeneyimSureID])
REFERENCES [dbo].[Deneyim] ([ID])
GO
ALTER TABLE [dbo].[IsIlanlariDeneyimSuresi] CHECK CONSTRAINT [FK_IsIlanlariDeneyimSuresi_Deneyim]
GO
ALTER TABLE [dbo].[IsIlanlariDeneyimSuresi]  WITH CHECK ADD  CONSTRAINT [FK_IsIlanlariDeneyimSuresi_IsIlanlari] FOREIGN KEY([IsIlanID])
REFERENCES [dbo].[IsIlanlari] ([ID])
GO
ALTER TABLE [dbo].[IsIlanlariDeneyimSuresi] CHECK CONSTRAINT [FK_IsIlanlariDeneyimSuresi_IsIlanlari]
GO
ALTER TABLE [dbo].[MulakatListesi]  WITH CHECK ADD  CONSTRAINT [FK_MulakatListesi_IsIlanlari] FOREIGN KEY([IsIlanID])
REFERENCES [dbo].[IsIlanlari] ([ID])
GO
ALTER TABLE [dbo].[MulakatListesi] CHECK CONSTRAINT [FK_MulakatListesi_IsIlanlari]
GO
ALTER TABLE [dbo].[MulakatListesi]  WITH CHECK ADD  CONSTRAINT [FK_MulakatListesi_Mulakatlar] FOREIGN KEY([MulakatDurumID])
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
REFERENCES [dbo].[SirketBilgileri] ([ID])
GO
ALTER TABLE [dbo].[MulakatListesi] CHECK CONSTRAINT [FK_MulakatListesi_SirketBilgileri]
GO
ALTER TABLE [dbo].[Ozgecmis]  WITH CHECK ADD  CONSTRAINT [FK_Ozgecmis_KullaniciUyelik] FOREIGN KEY([KullaniciID])
REFERENCES [dbo].[KullaniciUyelik] ([ID])
GO
ALTER TABLE [dbo].[Ozgecmis] CHECK CONSTRAINT [FK_Ozgecmis_KullaniciUyelik]
GO
ALTER TABLE [dbo].[OzgecmisHavuzu]  WITH CHECK ADD  CONSTRAINT [FK_OzgecmisHavuzu_Ozgecmis] FOREIGN KEY([OzgecmisID])
REFERENCES [dbo].[Ozgecmis] ([ID])
GO
ALTER TABLE [dbo].[OzgecmisHavuzu] CHECK CONSTRAINT [FK_OzgecmisHavuzu_Ozgecmis]
GO
ALTER TABLE [dbo].[OzgecmisHavuzu]  WITH CHECK ADD  CONSTRAINT [FK_OzgecmisHavuzu_SirketBilgileri] FOREIGN KEY([SirketID])
REFERENCES [dbo].[SirketBilgileri] ([ID])
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
ALTER TABLE [dbo].[Sinavlar]  WITH CHECK ADD  CONSTRAINT [FK_Sinavlar_Ozgecmis] FOREIGN KEY([OzgecmisID])
REFERENCES [dbo].[Ozgecmis] ([ID])
GO
ALTER TABLE [dbo].[Sinavlar] CHECK CONSTRAINT [FK_Sinavlar_Ozgecmis]
GO
ALTER TABLE [dbo].[SirketBilgileri]  WITH CHECK ADD  CONSTRAINT [FK_SirketBilgileri_KullaniciUyelik] FOREIGN KEY([KullaniciBilgiID])
REFERENCES [dbo].[KullaniciUyelik] ([ID])
GO
ALTER TABLE [dbo].[SirketBilgileri] CHECK CONSTRAINT [FK_SirketBilgileri_KullaniciUyelik]
GO
ALTER TABLE [dbo].[SirketSektor]  WITH CHECK ADD  CONSTRAINT [FK_SirketSektor_Sektorler] FOREIGN KEY([SektorID])
REFERENCES [dbo].[Sektorler] ([ID])
GO
ALTER TABLE [dbo].[SirketSektor] CHECK CONSTRAINT [FK_SirketSektor_Sektorler]
GO
ALTER TABLE [dbo].[SirketSektor]  WITH CHECK ADD  CONSTRAINT [FK_SirketSektor_SirketBilgileri] FOREIGN KEY([SirketID])
REFERENCES [dbo].[SirketBilgileri] ([ID])
GO
ALTER TABLE [dbo].[SirketSektor] CHECK CONSTRAINT [FK_SirketSektor_SirketBilgileri]
GO
ALTER TABLE [dbo].[SirketTakip]  WITH CHECK ADD  CONSTRAINT [FK_SirketTakip_KullaniciUyelik] FOREIGN KEY([KullaniciID])
REFERENCES [dbo].[KullaniciUyelik] ([ID])
GO
ALTER TABLE [dbo].[SirketTakip] CHECK CONSTRAINT [FK_SirketTakip_KullaniciUyelik]
GO
ALTER TABLE [dbo].[SirketTakip]  WITH CHECK ADD  CONSTRAINT [FK_SirketTakip_SirketBilgileri] FOREIGN KEY([SirketID])
REFERENCES [dbo].[SirketBilgileri] ([ID])
GO
ALTER TABLE [dbo].[SirketTakip] CHECK CONSTRAINT [FK_SirketTakip_SirketBilgileri]
GO
ALTER TABLE [dbo].[SosyalMedya]  WITH CHECK ADD  CONSTRAINT [FK_SosyalMedya_Ozgecmis] FOREIGN KEY([OzgecmisID])
REFERENCES [dbo].[Ozgecmis] ([ID])
GO
ALTER TABLE [dbo].[SosyalMedya] CHECK CONSTRAINT [FK_SosyalMedya_Ozgecmis]
GO
ALTER TABLE [dbo].[KullaniciUyelik]  WITH CHECK ADD  CONSTRAINT [chk_kullantip] CHECK  (([KullaniciTipi]='is_arayan' OR [KullaniciTipi]='is_veren'))
GO
ALTER TABLE [dbo].[KullaniciUyelik] CHECK CONSTRAINT [chk_kullantip]
GO
/****** Object:  StoredProcedure [dbo].[MulakatDurumProcedure]    Script Date: 28.06.2024 10:57:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[MulakatDurumProcedure] AS
select s.SirketAdi,mu.MulakatDurumu,k.Isim + ' '+k.Soyisim AS IsimSoyisim,ilan.PozisyonAdi
from SirketBilgileri as s
inner join MulakatListesi as m on s.ID=m.SirketID
inner join Mulakatlar as mu on m.MulakatDurumID=mu.ID
inner join Ozgecmis as o on m.OzgecmisID=o.ID
inner join KullaniciUyelik as k on k.ID=o.KullaniciID
inner join IsIlanlari as ilan on ilan.ID=m.IsIlanID
GO
/****** Object:  StoredProcedure [dbo].[OzgecmisHavuzuProcedure]    Script Date: 28.06.2024 10:57:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[OzgecmisHavuzuProcedure] AS
select s.ID,s.SirketAdi,k.Isim + ' ' +k.Soyisim AS IsimSoyisim, o.Durum, h.Konum, o.TelNo, STRING_AGG(bo.UniBolumAdi, ', ') AS BolumAdi
from OzgecmisHavuzu as oh
inner join Ozgecmis as o on o.ID=oh.OzgecmisID
inner join SirketBilgileri as s on s.ID=oh.SirketID
inner join KullaniciUyelik as k on k.ID=o.KullaniciID
inner join Hakkimda as h on o.ID=h.OzgecmisID

inner join Egitimler as e on e.OzgecmisID=o.ID
inner join BolumAdi as bo on e.BolumID=bo.ID
group by s.ID, s.SirketAdi, k.Isim, k.Soyisim, o.Durum, h.Konum, o.TelNo
GO
/****** Object:  StoredProcedure [dbo].[Ozgecmisler]    Script Date: 28.06.2024 10:57:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Ozgecmisler] as 
select distinct k.Isim,k.Soyisim,o.ID,e.EgitimAciklama,u.UniAdi,f.UniFakulteAdi,b.UniBolumAdi,h.Hakkimda
from Ozgecmis as o
inner join Egitimler as e on o.ID=e.OzgecmisID
inner join Universite as u on e.UniversiteID=u.ID
inner join KullaniciUyelik as k on o.KullaniciID=k.ID
inner join FakulteAdi as f on e.FakulteID=f.ID 
inner join BolumAdi as b on e.BolumID=b.ID
inner join Hakkimda as h on o.ID=h.OzgecmisID
group by k.Isim,k.Soyisim,o.ID,e.EgitimAciklama,u.UniAdi,f.UniFakulteAdi,b.UniBolumAdi,h.Hakkimda
order by Isim desc
GO
USE [master]
GO
ALTER DATABASE [KariyerDB] SET  READ_WRITE 
GO
