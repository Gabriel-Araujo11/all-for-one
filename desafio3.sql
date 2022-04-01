SELECT usr.user_name AS usuario,  

COUNT(historyy.artist_id) AS qtde_musicas_ouvidas,
ROUND(SUM(music.duration) / 60, 2) AS total_minutos

FROM SpotifyClone.users AS usr

JOIN history_rep AS historyy
ON usr.user_name = historyy.artist_id

JOIN songs AS music
ON music.id_sond = historyy.song_id

GROUP BY usr.user_name ORDER BY usr.user_name;