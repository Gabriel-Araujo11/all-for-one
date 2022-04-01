SELECT usrr.user_name AS usuario,
CASE
    WHEN MAX(YEAR(historyy.history_reps)) >= 2021  THEN 'Usuário ativo'
    ELSE 'Usuário inativo'
    END AS condicao_usuario
FROM SpotifyClone.users AS usrr
JOIN SpotifyClone.history_rep AS historyy
ON usrr.user_id = historyy.user_id
GROUP BY usrr.user_id
ORDER BY usrr.user_name;