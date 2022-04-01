SELECT 

songss.name_song AS nome,
COUNT(planss.plan_type) AS reproducoes

FROM SpotifyClone.users AS urss

INNER JOIN SpotifyClone.plan AS planss
ON urss.plan_id = planss.plan_id

INNER JOIN SpotifyClone.history_rep AS historyy
ON urss.user_id = historyy.user_id

INNER JOIN SpotifyClone.songs AS songss
ON historyy.song_id = songss.id_song

WHERE planss.plan_type = 'gratuito' OR planss.plan_type = 'pessoal'

GROUP BY nome
ORDER BY nome;