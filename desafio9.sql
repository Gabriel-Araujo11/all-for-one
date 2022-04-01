SELECT 

COUNT(historyy.user_id) AS quantidade_musicas_no_historico

FROM SpotifyClone.history_rep AS historyy

JOIN SpotifyClone.users AS usrr
ON usrr.user_id = historyy.user_id

GROUP BY usrr.user_id
HAVING usrr.user_id = 'Bill';