create view historico_reproducao_usuarios as
select  usu.usuario as usuario, canc.musicas as nome from SpotifyClone.historicoreproducao as hist
inner join SpotifyClone.usuarios as usu on usu.usuario_id = hist.usuario_id
inner join SpotifyClone.cancao as canc on canc.cancao_ID = hist.cancao_ID
order by usu.usuario asc, canc.musicas;
