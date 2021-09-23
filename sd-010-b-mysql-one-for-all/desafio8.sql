DELIMITER $$
create trigger trigger_usuario_delete
before delete on SpotifyClone.usuarios
for each row
BEGIN
DELETE FROM SpotifyClone.seguindo_artistas
WHERE OLD.usuario_id = SpotifyClone.seguindo_artistas.usuario_id;
DELETE FROM SpotifyClone.historicoreproducao
WHERE OLD.usuario_id = SpotifyClone.historicoreproducao.usuario_id;
END $$
DELIMITER $$;
-- agradecimentos ao Dennis Rossati pela ajuda
