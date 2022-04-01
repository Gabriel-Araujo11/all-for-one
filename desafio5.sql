SELECT

musics.name_song AS cancao,
COUNT(historyy.song_id) AS reproducoes

FROM SpotifyClone.songs AS musics

INNER JOIN SpotifyClone.history_rep AS historyy ON musics.id_song = historyy.song_id

GROUP BY
musics.name_song

ORDER BY
reproducoes DESC,
cancao

LIMIT
2;