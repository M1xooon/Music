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

select 