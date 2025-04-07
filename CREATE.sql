CREATE TABLE IF NOT EXISTS Singers(
 	id SERIAL PRIMARY KEY,
	name VARCHAR(35) NOT NULL
);

CREATE TABLE IF NOT EXISTS Genres(
	id SERIAL PRIMARY KEY,
	name VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS Tracks(
    id SERIAL PRIMARY KEY, 
	name VARCHAR(30) NOT NULL,
	album_id INTEGER NOT NULL REFERENCES Albums(id),
	duration numeric CHECK(duration>0)
);

CREATE TABLE IF NOT EXISTS Albums(
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	release_year INTEGER CHECK(release_year > 1880)
);

CREATE TABLE IF NOT EXISTS Collections(
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	release_year INTEGER CHECK(release_year>1950)
);


CREATE TABLE IF NOT EXISTS GenresSingers(
	singer_id SERIAL NOT NULL REFERENCES Singers(id),
	genre_id SERIAL NOT NULL REFERENCES Genres(id),
	CONSTRAINT k primary key (singer_id, genre_id)
);


CREATE TABLE IF NOT EXISTS SingersAlbums(
	singer_id integer not null REFERENCES Singers(id),
	album_id integer not null REFERENCES Albums(id),
	CONSTRAINT pk PRIMARY KEY (singer_id, album_id)
);

CREATE TABLE IF NOT EXISTS TracksCollections(
	track_id INTEGER NOT NULL REFERENCES Tracks(id),
	collection_id INTEGER NOT NULL REFERENCES Collections(id),
	CONSTRAINT lk PRIMARY KEY (track_id, collection_id)
);