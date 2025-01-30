DELIMITER //
drop table if exists tablon_fichero cascade;
drop table if exists fichero cascade;
drop table if exists tablon cascade;
drop table if exists usuario cascade;

//

create table usuario(
                        id integer,
                        mail varchar(255)
);
//
create table fichero(
                        id integer,
                        nombre varchar(100),
                        contenido varchar(255)
);
//
create table tablon(
                       id integer,
                       nombre varchar(100),
                       fecha_creacion date,
                       id_usuario integer
);
//
create table tablon_fichero(
                               id_tablon integer,
                               id_fichero integer
)
//
alter table usuario add constraint pk_usuario primary key (id);
alter table tablon add constraint pk_tablon primary key (id);
alter table fichero add constraint pk_fichero primary key(id);
alter table tablon_fichero add constraint pk_tablon_fichero primary key(id_tablon,id_fichero);
//
alter table tablon add constraint fk_tablon_usuario foreign key (id_usuario) references usuario(id);
alter table tablon_fichero add constraint fk_tablon_fichero_fichero foreign key(id_fichero) references fichero(id);
alter table tablon_fichero add constraint fk_tablon_fichero_tablon foreign key(id_tablon) references tablon(id);
//

insert into fichero values (1,'foto.jpg','asadfsdfhasasddafsaasjasdfkjhasdkjfhkajshdfkajsdhfkjasd');
INSERT INTO fichero values (2,'foto.jpg','asdfjklhcxdjsfka');
INSERT INTO fichero values (3,'imagen.png','asdfghjklxcvbnm');
INSERT INTO fichero values (4,'video.mp4','asdfghjklqwertyuiop');
INSERT INTO fichero values (5,'documento.pdf','asdfghjklpoiuytrewq');
INSERT INTO fichero values (6,'hoja de cálculo.xls','asdfghjkluiopasdfgh');
INSERT INTO fichero values (7,'presentación.ppt','asdfghjklasdfghjkl');
INSERT INTO fichero values (8,'audio.mp3','asdfghjklasdfghjkl');
INSERT INTO fichero values (9,'vídeo.avi','asdfghjklasdfghjkl');
INSERT INTO fichero values (10,'imagen GIF.gif','asdfghjklasdfghjkl');
INSERT INTO fichero values (11,'fichero.txt','asdfghjklaaasdfghjkl');


//