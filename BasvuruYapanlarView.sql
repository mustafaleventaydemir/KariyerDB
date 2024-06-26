Create VIEW BasvuruYapanlar AS
select i.PozisyonAdi,i.IsTanimi,k.Isim + ' ' + k.Soyisim as IsimSoyisim,s.SektorAdi,sbil.SirketAdi
from IsIlanlari as i
inner join Basvuranlar as b on i.ID=b.IsIlanID
inner join Ozgecmis as o on b.OzgecmisID=o.ID
inner join KullaniciUyelik as k on o.KullaniciID=k.ID
inner join IsIlaniSektor as il on i.ID=il.IsIlanID
inner join Sektorler as s on il.SektorID=s.ID
inner join SirketSektor as sir on sir.SektorID=s.ID
inner join SirketBilgileri as sbil on sir.SirketID=sbil.ID