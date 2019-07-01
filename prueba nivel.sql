CREATE SCHEMA practicalote_articulos;
USE practica;


CREATE TABLE `Tipo_Articulo` (
	`id_tipo` int NOT NULL AUTO_INCREMENT,
	`nombre_tipo` varchar(255),
PRIMARY KEY (`id_tipo`)
);

CREATE TABLE `Familia` (
  `id_familia` int NOT NULL AUTO_INCREMENT,
  `nombre_familia` varchar(255),
PRIMARY KEY(`id_familia`)
);

CREATE TABLE `Lote_Articulos` (
  `id_lote` int NOT NULL AUTO_INCREMENT,
  `fecha_creacion` datetime,
  `descripcion` varchar(255),
PRIMARY KEY (`id_lote`)
  );

CREATE TABLE `Articulos` (  
	`id_lote` int  AUTO_INCREMENT,
	`id_familia` int default null ,
	`id_tipo` int default null,
	`nombre` varchar(255),
INDEX (`id_tipo`),
FOREIGN KEY (`id_tipo`) REFERENCES `Tipo_Articulo`(`id_tipo`),
INDEX (`id_familia`),
FOREIGN KEY (`id_familia`) REFERENCES `Familia`(`id_familia`),
INDEX (`id_lote`),
FOREIGN KEY (`id_lote`) REFERENCES `Lote_Articulos`(`id_lote`)
);


INSERT INTO `Tipo_Articulo` VALUES (default,'Grapadora');
INSERT INTO `Tipo_Articulo` VALUES (default,'Boli');
INSERT INTO `Tipo_Articulo` VALUES (default,'Fregona');
INSERT INTO `Tipo_Articulo` VALUES (default,'Escoba');
INSERT INTO `Tipo_Articulo` VALUES (default,'Destornillador');
INSERT INTO `Tipo_Articulo` VALUES (default,'Martillo');

select * from (Tipo_Articulo);

INSERT INTO `Familia` VALUES (default,'Taller');
INSERT INTO `Familia` VALUES (default,'Limpieza');
INSERT INTO `Familia` VALUES (default,'Oficina');


INSERT INTO `Lote_Articulos` VALUES (default,'2019-12-12','Lote Oficina');
INSERT INTO `Lote_Articulos` VALUES (default,'2019-12-12','Lote Limpieza');
INSERT INTO `Lote_Articulos` VALUES (default,'2019-12-12','Lote Taller');
INSERT INTO `Lote_Articulos` VALUES (default,'2019-12-12','estoeshastaveintesaludos');

INSERT INTO `Articulos` VALUES (1,3,1,'Grapadora');
INSERT INTO `Articulos` VALUES (1,3,2,'Boli');
INSERT INTO `Articulos` VALUES (2,2,3,'Fregona');
INSERT INTO `Articulos` VALUES (2,2,4,'Escoba');
INSERT INTO `Articulos` VALUES (3,1,5,'Destornillador');
INSERT INTO `Articulos` VALUES (3,1,6,'Martillo');
