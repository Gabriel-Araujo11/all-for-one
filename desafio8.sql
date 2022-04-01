SELECT 
artistss.name_artist AS artista,
albumm.name_album AS album
FROM SpotifyClone.artists AS artistss
JOIN SpotifyClone.albuns AS albumm
ON artistss.artist_id = albumm.artist_id
HAVING artista = 'Walter Phoenix';