create table if not exists MusicalGenres(
	Id Serial primary key,
	Title varchar(40) not null
);

create table if not exists Artists(
	Id Serial primary key,
	GenresId int not null references MusicalGenres(Id),
	Name varchar(40) not null
);

create table if not exists GenrseArtist(
	Id serial primary key,
	GenreId int not null references MusicalGenres(Id),
	ArtistId int not null references Artists(Id)
);

create table if not exists Albums(
 	Id serial primary key,
 	ArtistId int not null references Artists(Id),
 	Title varchar(40) not null,
 	YearRelease int not null
);

create table if not exists Tracks(
	Id serial primary key,
	AlbumId int not null references Albums(Id),
	Title varchar(40) not null,
	Duration varchar(10) not null
); 

create table if not exists AlbumsArtists(
	Id serial primary key,
	AlbumsId int not null references Albums(Id),
	ArtistId int not null references Artists(Id)
);

create table if not exists Playlists(
	Id serial primary key,
	Title text not null,
	YearRelease int not null
);

create table if not exists PlaylistTrack(
	PlaylistId int not null references Playlists(Id),
	TrackId int not null references Tracks(Id),
	constraint pk primary key (PlaylistId,TrackId)
);