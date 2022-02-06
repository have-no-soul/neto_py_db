create table if not exists genre (
	id serial primary key,
	genre_name varchar(60) not null unique
);

create table if not exists artist (
	id serial primary key,
	name varchar(60) not null
);


create table if not exists artist_genre(
	id serial primary key,
	genre_id integer not null references genre(id),
	artist_id integer not null references artist(id)
);

create table if not exists album (
	id serial primary key,
	album_name varchar(60) not null,
	album_release_date date not null
);

create table if not exists album_artist (
	id  serial primary key,
	artist_id integer not null references artist(id),
	album_id integer not null references album(id)
);

create table if not exists track (
	id serial primary key,
	track_name varchar(60) not null,
	duration numeric(3,2) not null,
	album_id integer references album(id) 
);

create table if not exists collection(
	id serial primary key,
	collection_name varchar(60) not null,
	collection_release_year integer  not null
);

create table if not exists collection_track_album(
	id serial primary key,
	collection_id integer not null references collection(id),
	album_id integer not null references album(id),
	track_id integer not null references track(id)
);