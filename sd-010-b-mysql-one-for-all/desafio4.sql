create view top_3_artistas as
SELECT art.artista as artista, count(seg.usuario_id) as seguidores FROM SpotifyClone.seguindo_artistas AS seg
inner join SpotifyClone.artistas as art on seg.artista_ID = art.artista_ID
group by `artista`
having `seguidores` > 1
order by `seguidores` desc, `artista`;
