SELECT album_name, album_release_date FROM album
	WHERE album_release_date BETWEEN '2018-01-01' AND '2018-12-31';

/*Если бы в таблице год был integer, то

SELECT album_name, album_release_date FROM album
	WHERE album_release_date IN 2018;

*/

SELECT track_name, duration FROM track
	ORDER BY duration DESC
	LIMIT 1;

SELECT track_name FROM track
	WHERE duration >= 3.30;

SELECT collection_name FROM collection
	WHERE collection_release_year BETWEEN 2018 AND 2020;

SELECT name FROM artist
	WHERE name NOT LIKE '% %';

SELECT track_name FROM track
	WHERE track_name iLIKE '%me%';