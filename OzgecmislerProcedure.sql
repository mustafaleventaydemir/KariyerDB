create procedure Ozgecmisler as 
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