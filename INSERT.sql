INSERT into Singers(name)
VALUES ('Muse');

INSERT into Singers(name)
VALUES ('Rammstein');

INSERT into Singers(name)
values ('Shakira');

INSERT into Singers(name)
values ('Christina Aguilera');

insert into Genres(name) 
values ('rock');

insert into Genres(name)
values ('pop');

insert into Genres(name)
values ('metal');

insert into Albums(name, release_year)
values ('Rosenrot', 2005 );

insert into Albums(name, release_year )
values ('Anywhere but here', 2015);

insert into Albums(name, release_year)
values ('She wolf', 2009);

insert into Collections(name, release_year)
values ('Live 8', 2019);

insert into Collections(name, release_year)
values ('Remixes', 2020);

insert into Collections(name, release_year)
values ('Made in Germany', 2011);

insert into Collections(name, release_year)
values ('Finding Neverland', 2015);

insert into Tracks(name, duration, album_id)
values ('Benzin', 3,45, 20);

insert into Tracks(name, duration, album_id)
values ('Rosenrot', 3,54, 20);

insert into Tracks(name, duration, album_id)
values ('Anywhere but here', 3,39, 21);

insert into Tracks(name, duration, album_id)
values ('She wolf', 3,20, 22);

insert into Tracks(name, duration, album_id)
values ('Whenever, wherever', 3,30, 22);

insert into Tracks(name, duration, album_id)
values ('Waka waka', 3,17, 22);

INSERT into GenresSingers (singer_id, genre_id)
values (3, 2);

INSERT into GenresSingers (singer_id, genre_id)
values (4, 1);

INSERT into GenresSingers (singer_id, genre_id)
values (2, 3);

INSERT into GenresSingers (singer_id, genre_id)
values (1, 2);

INSERT into SingersAlbums (singer_id, album_id)
values (3, 20);

INSERT into SingersAlbums (singer_id, album_id)
values (4, 21);

INSERT into SingersAlbums (singer_id, album_id)
values (2, 20);

INSERT into SingersAlbums (singer_id, album_id)
values (1, 22);

INSERT into TracksCollections (track_id, collection_id)
values (3, 4);

INSERT into TracksCollections (track_id, collection_id)
values (4, 2);

INSERT into TracksCollections (track_id, collection_id)
values (6, 1);

INSERT into TracksCollections (track_id, collection_id)
values (1, 3);