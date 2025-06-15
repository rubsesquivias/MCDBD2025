#Creación de la Base de Datos del reproductor de musica
create database musica;
use musica;

#Visualización de tablas existentes
show tables;

#Tabla de Usuario
drop table if exists usuario;
create table usuario(
	id int primary key auto_increment,
	nombre varchar(50) not null,
	email varchar(50) not null,
	pass varchar(15) not null,
	fecha datetime
);

#Tabla de Artista
create table artista(
	id int primary key auto_increment,
	nombre varchar(50) not null,
	pais varchar(50) not null,
	activo bool,
	genero varchar(50),
	biografia text,
	redes varchar(50)
);

#Tabla de Album
create table album(
	id int primary key auto_increment,
	nombre varchar(50) not null,
	lanzamiento int
);

#Tabla de Canción
create table cancion(
	id int primary key auto_increment,
	titulo varchar(50) not null,
	duracion int
);

#Tabla de Playlist
create table playlist(
	id int primary key auto_increment,
	nombre varchar(100) not null,
	creacion datetime,
	privacidad bool
);

#Creación de registros dentro de las tablas
insert into artista (nombre, pais) values
	('The Beatles', 'England'),
	('Green Day', 'USA'),
	('Muse', 'England'),
	('The Warning', 'Mexico'),
	('Foster The People', 'USA');

select * from artista;

insert into usuario (nombre, email, pass) values
	('Ruben Esquivias', 'ruben.esquiviassalazar@outlook.com', '123'),
	('Fernando Perez', 'fernando@gmail.com', '456'),
	('Veronica Ruiz', 'vero@outlook.com', 'password');

select * from usuario;