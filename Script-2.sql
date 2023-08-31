create table if not exists MusicalGenres(
	Id Serial primary key,
	Title varchar(40) unique not null
);

create table if not exists Artists(
	Id Serial primary key,
	Name varchar(40) unique not null
);

create table if not exists GenresArtist(
	Id serial primary key,
	GenreId int not null references MusicalGenres(Id),
	ArtistId int not null references Artists(Id)
);

create table if not exists Albums(
 	Id serial primary key,
 	Title varchar(40) unique not null,
 	YearRelease int not null check(YearRelease > 1950)
);

create table if not exists Tracks(
	Id serial primary key,
	AlbumId int not null references Albums(Id),
	Title varchar(40) unique not null, 
	Duration int not null check(Duration > 30)
); 

create table if not exists AlbumsArtists(
	Id serial primary key,
	AlbumsId int not null references Albums(Id),
	ArtistId int not null references Artists(Id)
);

create table if not exists Playlists(
	Id serial primary key,
	Title text unique not null,
	YearRelease int not null check(YearRelease > 1950)
);

create table if not exists PlaylistTrack(
	PlaylistId int not null references Playlists(Id),
	TrackId int not null references Tracks(Id),
	constraint pk primary key (PlaylistId,TrackId)
);