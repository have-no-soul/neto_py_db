SELECT genre.genre_name, COUNT(artist_genre.artist_id) FROM genre
LEFT JOIN artist_genre ON genre.id = artist_genre.genre_id
GROUP BY genre_name;

SELECT COUNT(track.id) FROM album
JOIN track ON album.id = track.album_id
WHERE album.album_release_date BETWEEN '2019-01-01' AND '2020-12-31';

SELECT album.album_name, AVG(track.duration) FROM album
JOIN track ON album.id = track.album_id
GROUP BY album_name;

SELECT artist.name FROM artist
JOIN album_artist ON artist.id = album_artist.artist_id
JOIN album ON album_artist.album_id = album.id
WHERE album.album_release_date NOT BETWEEN '2020-01-01' AND '2020-12-31';

SELECT DISTINCT collection.collection_name
    FROM collection
    JOIN collection_track_album ON collection.id = collection_track_album.collection_id
    JOIN track ON collection_track_album.track_id = track.id
    JOIN album ON track.album_id = album.id
    JOIN album_artist ON album.id = album_artist.album_id
    JOIN artist ON album_artist.artist_id = artist.id
    WHERE artist.name LIKE 'Oxxxymiron';

SELECT album.album_name
    FROM album
    JOIN album_artist ON album.id = album_artist.album_id
    JOIN artist ON album_artist.artist_id = artist.id
    JOIN artist_genre ON artist.id = artist_genre.artist_id
    JOIN genre ON genre.id = artist_genre.genre_id
    GROUP BY album.album_name
    HAVING COUNT(DISTINCT artist_genre.genre_id) > 1;

SELECT track.track_name
	FROM track
	JOIN collection_track_album ON track.id = collection_track_album.track_id
	WHERE collection_track_album.collection_id IS NULL;

SELECT artist.name, track.duration
	FROM track
	JOIN album ON album.id = track.album_id
	JOIN album_artist ON album_artist.album_id = album.id
	JOIN artist ON artist.id = album_artist.artist_id
	GROUP BY artist.name, track.duration
	HAVING track.duration = (SELECT MIN(duration) FROM track)
	ORDER BY artist.name;

SELECT DISTINCT album.album_name, COUNT(track.id)
FROM album
JOIN track ON track.album_id = album.id
GROUP BY album.album_name
having COUNT(track.id) = (
	SELECT COUNT(track.id)
    FROM album
    JOIN track ON album.id = track.album_id
    GROUP BY album.album_name
    ORDER BY COUNT(track.id)
    limit 1);