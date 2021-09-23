/* select count(*) as cancoes from spotifyclone.cancao as canc;
select count(*) as artistas from spotifyclone.artistas as art;
select count(*) as albuns from spotifyclone.albuns as alb;
*/
create view estatisticas_musicais as
select Max(canc.cancao_ID) as cancoes,
Max(art.artista_ID) as artistas,
Max(alb.album_id) as albuns
from SpotifyClone.albuns AS alb
inner JOIN SpotifyClone.artistas AS art
inner JOIN SpotifyClone.cancao AS canc;
-- consultei https://stackoverflow.com/questions/28228133/sql-count-multiple-columns e tive ajuda do Dennis Rosati para entender melhor
