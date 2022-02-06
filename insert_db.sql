INSERT into 
	artist(id, name)
VALUES
	(1, 'Oxxxymiron'),
	(2, 'Сергей Шнуров'),
	(3, 'Markul'),
    (4, 'Eminem'),
    (5, 'Slame'),
    (6, 'Дора'),
    (7, 'Zivert'),
    (8, 'Dr. Dre');
    
INSERT INTO
	genre(id, genre_name)
VALUES
    (1, 'Rap'),
    (2, 'Pop'),
    (3, 'Rock'),
    (4, 'Cute Rock'),
    (5, 'Jazz');
    
INSERT INTO
	album(id, album_name, album_release_date)
VALUES
    (1, 'Красота и Уродство', '2021-12-01'),
    (2, 'Чума!', '2021-05-29'),
    (3, 'Great Depression', '2018-10-16'),
    (4, 'The Eminem Show', '2002-05-28'),
    (5, 'Избранное', '2018-06-28'),
    (6, 'Боже, храни кьют-рок', '2020-12-18'),
    (7, 'Vinyl #2', '2021-10-08'),
    (8, 'Compton', '2015-08-07');
    
INSERT INTO
	track(id, track_name, duration, album_id)
VALUES
    (1, 'Хоп-механика', 2.18, 1),
    (2, 'Африканские бусы', 2.26, 1),
    (3, 'Чума!', 0.58, 2),
    (4, 'Свадьба - это  не поминки', 1.30, 2),
    (5, 'Худший друг', 3.03, 3),
    (6, 'Серпантин', 3.06, 3),
    (7, 'Till I Collapse', 4.57, 4),
    (8, 'Without Me', 4.50, 4),
    (9, 'Плевать', 3.19, 5),
    (10, 'Мечты', 3.43, 5),
    (11, 'Втюрилась', 2.03, 6),
    (12, 'Осень пьяная', 2.51, 6),
    (13, 'Forever Young', 3.00, 7),
    (14, 'ЯТЛ', 3.43, 7),
    (15, 'Genocide', 4.26, 8),
    (16, 'Medicine Man', 4.14, 8);
    
INSERT INTO
	collection(id, collection_name, collection_release_year)
VALUES
    (1, 'collection_1', 2021),
    (2, 'collection_2', 2020),
    (3, 'collection_3', 2019),
    (4, 'collection_4', 2018),
    (5, 'collection_5', 2017),
    (6, 'collection_6', 2016),
    (7, 'collection_7', 2015),
    (8, 'collection_8', 2014);


INSERT INTO
    album_artist(id, artist_id, album_id)
VALUES
    (1, 1, 1),
    (2, 2, 2),
    (3, 3, 3),
    (4, 4, 4),
    (5, 5, 5),
    (6, 6, 6),
    (7, 7, 7),
    (8, 8, 8);

INSERT INTO
    artist_genre(id, genre_id, artist_id)
VALUES
    (1, 1, 1),
    (2, 3, 2),
    (3, 1, 3),
    (4, 1, 4),
    (5, 1, 5),
    (6, 4, 6),
    (7, 2, 7),
    (8, 1, 8);

INSERT INTO
    collection_track_album(id, collection_id, album_id, track_id)
VALUES
    (1, 3, 1, 1),
    (2, 3, 1, 2),
    (3, 3, 4, 8),
    (4, 1, 4, 7);