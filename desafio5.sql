SELECT
    cancoes.name_song,
    COUNT(reproducoes.song_id) as reproducoes
FROM
    SpotifyClone.songs as cancoes
    INNER JOIN SpotifyClone.history_rep as reproducoes ON cancoes.id_song = reproducoes.song_id
GROUP BY
    cancoes.id_song
ORDER BY
    reproducoes DESC,
    cancoes.name_song
LIMIT
    2;