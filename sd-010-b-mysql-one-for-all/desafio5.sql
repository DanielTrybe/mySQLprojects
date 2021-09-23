create view top_2_hits_do_momento as
SELECT canc.musicas as cancao, count(seg.cancao_ID) as reproducoes FROM SpotifyClone.historicoreproducao AS seg
inner join SpotifyClone.cancao as canc on seg.cancao_ID = canc.cancao_ID
group by `cancao`
having `reproducoes` > 1
