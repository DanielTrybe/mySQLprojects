DELIMITER $$
create procedure albuns_do_artista (in artistadigitado VARCHAR(50))
BEGIN
select art.artista AS artista, alb.album AS album from SpotifyClone.artistas AS art
inner join SpotifyClone.albuns as alb on art.artista_ID = alb.artista_ID
where art.artista = artistadigitado;
END $$
DELIMITER $$;
-- grato a ajuda do Dennis
