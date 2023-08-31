create table if not exists MusicalGenres(
	Id Serial primary key,
	Title varchar(40) not null
);

create table if not exists Artists(
	Id Serial primary key,
	IdGenres int not null references MusicalGenres(Id),
	Name varchar(40) not null
);

create table if not exists Albums(
 	Id serial primary key,
 	IdArtists int not null references Artists(Id),
 	Title varchar(40) not null,
 	YearRelease int not null
);

create table if not exists Tracks(
	Id serial primary key,
	IdAlbum int not null references Albums(Id),
	Title varchar(40) not null,
	Duration varchar(10) not null
); 