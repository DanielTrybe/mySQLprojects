create view perfil_artistas as
select max(art.artista) as artista, alb.album as album, count(seg.usuario_id) as seguidores from SpotifyClone.albuns as alb
inner join SpotifyClone.artistas as art on alb.artista_ID = art.artista_ID
inner join SpotifyClone.seguindo_artistas as seg on seg.artista_ID = art.artista_ID
group by `album`
order by seguidores DESC, artista ASC, album ASC;
