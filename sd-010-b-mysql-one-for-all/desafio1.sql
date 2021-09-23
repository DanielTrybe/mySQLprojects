DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE IF NOT EXISTS SpotifyClone;
USE SpotifyClone;

CREATE TABLE artistas(
artista_ID INT,
primary key(artista_ID),
artista VARCHAR(100)
) engine = InnoDB;

CREATE TABLE plano(
plano_ID INT primary key,
plano VARCHAR(100),
valor_plano decimal(3, 2)
) engine = InnoDB;

CREATE TABLE albuns(
album_id INT primary key,
artista_ID INT NOT NULL,
foreign key(artista_ID) references artistas(artista_ID),
album VARCHAR(100)
) engine = InnoDB;  

CREATE TABLE cancao(
cancao_ID INT primary key,
album_id INT NOT NULL,
foreign key(album_id) references albuns(album_id),
musicas VARCHAR(100)
) engine = InnoDB;

CREATE TABLE usuarios(
usuario_id INT primary key,
usuario VARCHAR(100),
idade INT NOT NULL,
plano_ID INT NOT NULL,
foreign key(plano_ID) references plano(plano_ID)
) engine = InnoDB;

CREATE TABLE historicoreproducao(
usuario_id INT NOT NULL,
foreign key(usuario_id) references usuarios(usuario_id),
cancao_ID INT NOT NULL,
foreign key(cancao_ID) references cancao(cancao_ID),
primary key(usuario_id, cancao_ID)
) engine = InnoDB;

CREATE TABLE seguindo_artistas(
usuario_id INT NOT NULL,
foreign key(usuario_id) references usuarios(usuario_id),
artista_ID INT NOT NULL,
foreign key(artista_ID) references artistas(artista_ID),
primary key(usuario_id, artista_ID)
) engine = InnoDB;

INSERT INTO artistas (artista_ID, artista)
VALUES
('1', 'Walter Phoenix'),
('2', 'Peter Strong'),
('3', 'Lance Day'),
('4', 'Freedie Shannon');

INSERT INTO albuns (album_id, artista_ID, album)
VALUES
('1', '1', 'Envious'),
('2', '1', 'Exuberant'),
('3', '2', 'Hallowed Steam'),
('4', '3', 'Incandescent'),
('5', '4', 'Temporary Culture');

INSERT INTO cancao (cancao_ID, album_id, musicas)
VALUES
('1', '1', 'Soul For Us'),
('2', '1', 'Dance With Her Own'),
('3', '1', 'Reflections Of Magic'),
('4', '2', 'Troubles Of My Inner Fire'),
('5', '2', 'Time Fireworks'),
('6', '3', 'Magic Circus'),
('7', '3', 'Honey, So Do I'),
('8', '3', "Sweetie, Let's Go Wild"),
('9', '3', 'She Knows'),
('10', '4', 'Fantasy For Me'),
('11', '4', 'Celebration Of More'),
('12', '4', 'Rock His Everything'),
('13', '4', 'Home Forever'),
('14', '4', 'Diamond Power'),
('15', '4', "Honey, Let's Be Silly"),
('16', '5', 'Thang Of Thunder'),
('17', '5', 'Words Of Her Life'),
('18', '5', 'Without My Streets');

INSERT INTO plano (plano_ID, plano, valor_plano)
VALUES
('1', 'gratuito', 0.00),
('2', 'familiar', 7.99),
('3', 'universitário', 5.99);

INSERT INTO usuarios (usuario_id, usuario, idade, plano_id)
VALUES
('1', 'Thati', '23', '1'),
('2', 'Cintia', '35', '2'),
('3', 'Bill', '20', '3'),
('4', 'Roger', '45', '1');

INSERT INTO historicoreproducao (usuario_id, cancao_ID)
VALUES
('1', '1'),
('1', '6'),
('1', '14'),
('1', '16'),
('2', '13'),
('2', '17'),
('2', '3'),
('2', '15'),
('3', '4'),
('3', '16'),
('3', '6'),
('4', '2'),
('4', '18'),
('4', '11');

INSERT INTO seguindo_artistas (usuario_id, artista_ID)
VALUES
('1', '1'),
('1', '4'),
('1', '3'),
('2', '1'),
('2', '3'),
('3', '2'),
('3', '1'),
('4', '4');
