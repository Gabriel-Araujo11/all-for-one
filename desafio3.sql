SELECT usrr.user_name AS usuario,  
COUNT(historyy.user_id) AS qtde_musicas_ouvidas,

ROUND(SUM(music.duration) / 60, 2) AS total_minutos
FROM SpotifyClone.users AS usrr

JOIN history_rep AS historyy
ON usrr.user_id = historyy.user_id

JOIN songs AS music
ON music.id_song = historyy.song_id

GROUP BY usrr.user_id ORDER BY usrr.user_name;