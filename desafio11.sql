SELECT

s.name_song AS nome_musica,

CASE

WHEN s.name_song LIKE '%Streets' THEN REPLACE(s.name_song, 'Streets', 'Code Review')

WHEN s.name_song LIKE '%Her Own' THEN REPLACE(s.name_song, 'Her Own', 'Trybe')

WHEN s.name_song LIKE '%Inner Fire' THEN REPLACE(s.name_song, 'Inner Fire', 'Project')

WHEN s.name_song LIKE '%Silly' THEN REPLACE(s.name_song, 'Silly', 'Nice')

WHEN s.name_song LIKE '%Circus' THEN REPLACE(s.name_song, 'Circus', 'Pull Request')

ELSE s.name_song

END AS novo_nome

FROM SpotifyClone.songs AS s

WHERE 
s.name_song LIKE '%Streets' OR
s.name_song LIKE '%Her Own'OR
s.name_song LIKE '%Inner Fire'OR
s.name_song LIKE '%Silly' OR
s.name_song LIKE '%Circus'

ORDER BY nome_musica;