create procedure MulakatDurumProcedure AS
select s.SirketAdi,mu.MulakatDurumu,k.Isim + ' '+k.Soyisim AS IsimSoyisim,ilan.PozisyonAdi
from SirketBilgileri as s
inner join MulakatListesi as m on s.ID=m.SirketID
inner join Mulakatlar as mu on m.MulakatDurumID=mu.ID
inner join Ozgecmis as o on m.OzgecmisID=o.ID
inner join KullaniciUyelik as k on k.ID=o.KullaniciID
inner join IsIlanlari as ilan on ilan.ID=m.IsIlanID
