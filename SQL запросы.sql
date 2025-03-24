create TABLE if not exists Singers(
	Singer(id) serial primary KEY,
	name(nickname) varchar(35) not null
);

CREATE TABLE if not exists Genres(
	Genre(id) serial primary KEY,
	name varchar(20) not null
);

CREATE TABLE IF NOT EXISTS Tracks(
	Track(id) serial primary key,
	name varchar(30) not null,
	duration: integer check(duration>0)
);


CREATE TABLE IF NOT EXISTS Albums(
	Album(id) serial primary key references Tracks(album_id),
	name varchar(50) not null,
	release_year date check(release_year>1880)
);


CREATE TABLE IF NOT EXISTS Collections(
	Collection(id) serial primary key,
	name varchar(50) not null,
	release_year date check(release_year>1950)
);


CREATE TABLE IF NOT EXISTS GenresSingers(
	singer_id integer not null references Singers(Singer(id)),
	genre_id integer not null references Genres(Genre(id)),
	constraint pk primary key (singer_id, genre_id)
);


CREATE TABLE IF NOT EXISTS SingersAlbums(
	singer_id integer not null references Singers(Singer(id)),
	album_id integer not null references Albums(Album(id)),
	constraint pk primary key (singer_id, album_id)
);

CREATE TABLE IF NOT EXISTS TracksCollections (
	track_id integer not null references Tracks(Track(id)),
	collection_id integer not null references Collections(Collection(id)),
	constraint pk primary key (track_id, collection_id)
);