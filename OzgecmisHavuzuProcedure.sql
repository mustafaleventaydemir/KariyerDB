create procedure OzgecmisHavuzuProcedure AS
select s.ID,s.SirketAdi,k.Isim + ' ' +k.Soyisim AS IsimSoyisim, o.Durum, h.Konum, o.TelNo, STRING_AGG(bo.UniBolumAdi, ', ') AS BolumAdi
from OzgecmisHavuzu as oh
inner join Ozgecmis as o on o.ID=oh.OzgecmisID
inner join SirketBilgileri as s on s.ID=oh.SirketID
inner join KullaniciUyelik as k on k.ID=o.KullaniciID
inner join Hakkimda as h on o.ID=h.OzgecmisID

inner join Egitimler as e on e.OzgecmisID=o.ID
inner join BolumAdi as bo on e.BolumID=bo.ID
group by s.ID, s.SirketAdi, k.Isim, k.Soyisim, o.Durum, h.Konum, o.TelNo