SELECT 

artistss.name_artist AS artista,
albuns.name_album AS album,
COUNT(seguindo.artist_id) AS seguidores

FROM SpotifyClone.artists AS artistss

JOIN SpotifyClone.albuns AS albuns
ON artistss.artist_id = albuns.artist_id

JOIN SpotifyClone.follow_artist AS seguindo
ON seguindo.artist_id = albuns.artist_id

GROUP BY album, artistss.name_artist
ORDER BY seguidores DESC, artista, album;