#Creación de la Base de Datos del reproductor de musica
create database musica;
use musica;

#Visualización de tablas existentes
show tables;


-- Tabla: Usuario
drop table if exists usuario;
create table usuario (
    id_usuario int primary key auto_increment,
    nombre_usuario varchar(50) not null,
    email varchar(50) not null,
    contraseña varchar(50) not null,
    fecha_registro datetime,
    foto_url varchar(255)
);

-- Tabla: Artista
drop table if exists artista;
create table artista (
    id_artista int primary key auto_increment,
    nombre varchar(50) not null,
    pais_origen varchar(50),
    activo_desde int,
    genero_principal varchar(50),
    biografia text,
    redes_sociales varchar(100),
    foto_url varchar(255)
);

-- Tabla: Álbum
drop table if exists album;
create table album (
    id_album int primary key auto_increment,
    titulo varchar(100) not null,
    fecha_lanzamiento varchar(100),
    foto_url varchar(255),
    id_artista int,
    foreign key (id_artista) references artista(id_artista)
);
drop table album;
drop table cancion;
drop table playlist_cancion;
drop table reproduccion;

-- Tabla: Canción
drop table if exists cancion;
create table cancion (
    id_cancion int primary key auto_increment,
    titulo varchar(100) not null,
    duracion int,
    id_album float,
    foreign key (id_album) references album(id_album)
);

-- Tabla: Playlist
drop table if exists playlist;
create table playlist (
    id_playlist int primary key auto_increment,
    nombre varchar(100) not null,
    id_usuario int,
    fecha_creacion datetime,
    privacidad varchar(20),
    foreign key (id_usuario) references usuario(id_usuario)
);

-- Tabla intermedia: Playlist_Cancion
drop table if exists playlist_cancion;
create table playlist_cancion (
    id_playlist int,
    id_cancion int,
    orden int,
    primary key (id_playlist, id_cancion),
    foreign key (id_playlist) references playlist(id_playlist),
    foreign key (id_cancion) references cancion(id_cancion)
);

-- Tabla: Reproducción
drop table if exists reproduccion;
create table reproduccion (
    id_reproduccion int primary key auto_increment,
    id_usuario int,
    id_cancion int,
    fecha_hora datetime,
    duracion_escuchada int,
    foreign key (id_usuario) references usuario(id_usuario),
    foreign key (id_cancion) references cancion(id_cancion)
);

#Creación de registros dentro de las tablas
insert into usuario (nombre_usuario, email, contraseña, fecha_registro, foto_url) values
('Rubs Esquivias', 'ruben.esquiviassalazar@outlook.com', 'rub13', '2022-11-13', 'https://img.com/ana.jpg'),
('Ana Music', 'ana@example.com', '123456', '2023-01-10', 'https://img.com/ana.jpg'),
('CarlosR', 'carlos@example.com', 'abcdef', '2023-05-15', 'https://img.com/carlos.jpg'),
('Majo123', 'majo@example.com', 'clave789', '2022-11-20', 'https://img.com/majo.jpg'),
('DJTony', 'tony@example.com', 'pass1234', '2024-03-03', 'https://img.com/tony.jpg'),
('SaraBeat', 'sara@example.com', 'qwerty', '2023-08-12', 'https://img.com/sara.jpg'),
('LeoBass', 'leo@example.com', 'bajo123', '2022-12-01', 'https://img.com/leo.jpg'),
('Valen_Vibes', 'valen@example.com', 'passval', '2023-06-25', 'https://img.com/valen.jpg'),
('Isabel Rock', 'isa@example.com', 'rocker', '2023-07-10', 'https://img.com/isa.jpg'),
('Tom_Beat', 'tom@example.com', 'beat321', '2023-04-17', 'https://img.com/tom.jpg'),
('ClaraJazz', 'clara@example.com', 'jazzy', '2024-01-01', 'https://img.com/clara.jpg');
select * from usuario;
drop table usuario;

insert into artista (nombre, pais_origen, activo_desde, genero_principal, biografia, redes_sociales, foto_url) values
('The Beatles', 'England', 1960, 'Rock', 'El cuarteto de Liverpool', '@thebeatles', 'https://img.com/beatles.jpg'),
('Green Day', 'USA', 1987, 'Punk Rock', 'Banda pionera del punk rock moderno.', '@greenday', 'https://img.com/greenday.jpg'),
('Muse', 'England', 1994, 'Alternative Rock', 'Conocidos por su sonido épico y experimental.', '@muse', 'https://img.com/muse.jpg'),
('Foster the People', 'USA', 2009, 'Indie Pop', 'Famosos por su hit "Pumped Up Kicks".', '@fosterthepeople', 'https://img.com/fosterthepeople.jpg'),
('BTS', 'South Korea', 2013, 'K-Pop', 'Grupo surcoreano que ha dominado la escena global.', '@bts_bighit', 'https://img.com/bts.jpg'),
('Shakira', 'Colombia', 1990, 'Pop/Latin', 'Cantante y compositora colombiana de fama mundial.', '@shakira', 'https://img.com/shakira.jpg'),
('Daft Punk', 'France', 1993, 'Electronic', 'Dúo francés pionero en la música electrónica.', '@daftpunk', 'https://img.com/daftpunk.jpg'),
('AC/DC', 'Australia', 1973, 'Hard Rock', 'Banda legendaria del hard rock australiano.', '@acdc', 'https://img.com/acdc.jpg'),
('Juanes', 'Colombia', 1997, 'Rock Latino', 'Cantautor colombiano reconocido internacionalmente.', '@juanes', 'https://img.com/juanes.jpg'),
('Coldplay', 'England', 1996, 'Alternative Rock', 'Banda británica conocida por sus melodías emotivas.', '@coldplay', 'https://img.com/coldplay.jpg'),
('Maná', 'Mexico', 1986, 'Rock Latino', 'Grupo mexicano con gran trayectoria y éxito internacional.', '@manamexico', 'https://img.com/mana.jpg'),
('Zoé', 'Mexico', 1994, 'Rock Alternativo', 'Banda mexicana con gran influencia en el rock en español.', '@zoeoficial', 'https://img.com/zoe.jpg');
select * from artista;
drop table artista;

insert into album (titulo, fecha_lanzamiento, foto_url, id_artista) values
('Please Please Me', '1963-03-22', 'https://img.com/pleasepleaseme.jpg', 1),
('Dookie', '1994-02-01', 'https://img.com/dookie.jpg', 2),
('Absolution', '2003-09-15', 'https://img.com/absolution.jpg', 3),
('Torches', '2011-05-23', 'https://img.com/torches.jpg', 4),
('Dark & Wild', '2014-08-20', 'https://img.com/darkandwild.jpg', 5);
select * from album;
drop table album;

insert into cancion (titulo, duracion, id_album) values
('I Saw Her Standing There', '175', 1),
('Love Me Do', '142', 1),
('Twist and Shout', '153', 1),
('Basket Case', '181', 2),
('Longview', '239', 2),
('When I Come Around', '178', 2),
('Time Is Running Out', '236', 3),
('Hysteria', '227', 3),
('Sing for Absolution', '256', 3),
('Pumped Up Kicks', '239', 4),
('Helena Beat', '249', 4),
('Houdini', '256', 4),
('Danger', '226', 5),
('War of Hormone', '207', 5),
('Let Me Know', '230', 5);
select * from cancion;
drop table cancion;

insert into playlist (nombre, id_usuario, fecha_creacion, privacidad) values
('Favoritas de Rubs', 1, '2023-06-01', 'privada'),
('Rock Energético', 2, '2023-06-10', 'pública'),
('Relax', 3, '2023-07-01', 'privada'),
('Jazz para estudiar', 4, '2023-07-11', 'privada'),
('Pop Hits 2023', 5, '2023-08-05', 'pública'),
('Cumbia Total', 6, '2023-08-10', 'privada'),
('Viaje Galáctico', 7, '2023-09-02', 'pública'),
('Lo mejor del año', 8, '2023-09-10', 'pública'),
('Ritmos Latinos', 9, '2023-09-25', 'privada'),
('Lo-fi para trabajar', 10, '2023-10-01', 'privada');
select * from playlist;
drop table playlist;

