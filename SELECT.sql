select title, duration from tracks
where duration = (select MAX(duration) from tracks);

select title, duration from tracks
where duration > 210;

select title from playlists
where yearrelease between 2018 and 2020;

select name from artists
where name not like '% %';

select title from tracks 
where title like '%my%'
or title like '%мой%'
or title like '%моя%';

select genreid , count(artistid) from genresartist
group by genreid ;

select a.title, count(t.title) from albums a
join tracks t on a.id = t.albumid 
where yearrelease between 2019 and 2020
group by a.title;

select a.title, avg(t.duration)  from albums a
join tracks t on a.id = t.albumid 
group by a.title;

select ar.name from albumsartists alar
join albums al on al.id = alar.albumsid 
right join artists ar on ar.id = alar.artistid
where not (al.yearrelease=2020) or not (al.yearrelease is not null)
group by ar.name;

select p.title from playlists p 
join playlisttrack pt on p.id = pt.playlistid  
join tracks t on pt.trackid = t.id 
join albums a on t.albumid =a.id 
join albumsartists alar on alar.albumsid =a.id 
join artists ar on alar.artistid =ar.id 
where ar.id = 4;

select al.title from genresartist g 
join musicalgenres m on m.id =g.genreid
join artists ar on g.artistid =ar.id 
join albumsartists alar on alar.artistid = ar.id 
join albums al on al.id =alar.albumsid 
group by al.title 
having count(g.genreid) > 1;

select t.title  from tracks t 
left join playlisttrack p on p.trackid =t.id
where not(p.playlistid is not null);

select a.name from artists a 
join albumsartists alar on a.id = alar.artistid 
join albums al on al.id= alar.albumsid 
join tracks t on t.albumid =al.id 
where t.duration = (select min(duration) from tracks t);

select a.title from albums a 
join tracks t on a.id =t.albumid 
group by a.title
having count(*)=(
	select min(count) from (
		select al.title, count(tr.title) from albums al
		join tracks tr on al.id=tr.albumid 
		group by al.title) as cnt);

