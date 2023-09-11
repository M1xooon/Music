insert into musicalgenres(title)
values('Pop');

insert into musicalgenres(title)
values('Rap');

insert into musicalgenres(title)
values('Detroit');

insert into artists(name)
values('OgBuda');

insert into artists(name)
values('Obladaet');

insert into artists(name)
values('163 ONMYNECK');

insert into artists(name)
values('Pinq');

insert into artists(name)
values('Mayot');

insert into genresartist(GenreId,ArtistId)
values (1, 1);

insert into genresartist(GenreId,ArtistId)
values (1, 4);

insert into genresartist(GenreId,ArtistId)
values (1, 5);

insert into genresartist(GenreId,ArtistId)
values (2, 1);

insert into genresartist(GenreId,ArtistId)
values (2, 2);

insert into genresartist(GenreId,ArtistId)
values (2, 4);

insert into genresartist(GenreId,ArtistId)
values (3, 1);

insert into genresartist(GenreId,ArtistId)
values (3, 2);

insert into genresartist(GenreId,ArtistId)
values (3, 3);

insert into albums(Title, YearRelease)
values('ОБА', 2023);

insert into albums(Title, YearRelease)
values('Скучаю, Но Работаю', 2023);

insert into albums(Title, YearRelease)
values('Луна сегодня красивая, правда?', 2023);

insert into albums(Title, YearRelease)
values('GHETTO GARDEN', 2020);

insert into albumsartists(albumsid, artistid) 
values (4, 1);

insert into albumsartists(albumsid, artistid) 
values (4, 5);

insert into albumsartists(albumsid, artistid) 
values (1, 1);

insert into albumsartists(albumsid, artistid) 
values (1, 5);

insert into albumsartists(albumsid, artistid) 
values (2, 1);

insert into albumsartists(albumsid, artistid) 
values (2, 5);

insert into albumsartists(albumsid, artistid) 
values (3, 4);

insert into tracks(albumid,title,duration)
values (4, 'Джинсы', 197);

insert into tracks(albumid,title,duration)
values (4, 'Лилия', 107);

insert into tracks(albumid,title,duration)
values (1, 'внутри', 213);

insert into tracks(albumid,title,duration)
values (1, 'сможем ли мы', 136);

insert into tracks(albumid,title,duration)
values (1, 'моя', 132);

insert into tracks(albumid,title,duration)
values (2, 'Касание', 152);

insert into tracks(albumid,title,duration)
values (2, 'Мучаешь', 203);

insert into tracks(albumid,title,duration)
values (3, 'Свети', 104);

insert into tracks(albumid,title,duration)
values (3, 'Луна', 96);

insert into playlists(title,yearrelease)
values ('Танцевать', 2019);

insert into playlists(title,yearrelease)
values ('Подпевать', 2020);

insert into playlists(title,yearrelease)
values ('Грустить', 2023);

insert into playlists(title,yearrelease)
values ('Под прогулку', 2022);

insert into playlisttrack(playlistid,trackid)
values (1,2);

insert into playlisttrack(playlistid,trackid)
values (1,3);

insert into playlisttrack(playlistid,trackid)
values (2,1);

insert into playlisttrack(playlistid,trackid)
values (2,6);

insert into playlisttrack(playlistid,trackid)
values (3,4);

insert into playlisttrack(playlistid,trackid)
values (3,5);

insert into playlisttrack(playlistid,trackid)
values (4,1);

insert into playlisttrack(playlistid,trackid)
values (4,2);

insert into playlisttrack(playlistid,trackid)
values (4,3);

insert into playlisttrack(playlistid,trackid)
values (4,6);