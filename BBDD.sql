DROP DATABASE IF EXISTS Juego;
CREATE DATABASE Juego;

USE Juego;

CREATE TABLE Jugador (
	id INT NOT NULL,
	nombre VARCHAR(60),
	contraseña VARCHAR(60),
	PRIMARY KEY(id)
)Engine=InnoDB;

CREATE TABLE Partida (
	id INT NOT NULL,
	fecha VARCHAR(60),
	duracion INT,
	ganador VARCHAR(60),
	puntos INT,
	PRIMARY KEY(id)
)Engine=InnoDB;

CREATE TABLE Historial (
	idJ INT NOT NULL,
	idP INT NOT NULL,
	puntos INT,
	FOREIGN KEY (idJ) REFERENCES Jugador(id),
	FOREIGN KEY (idP) REFERENCES Partida(id)
)Engine=InnoDB;

INSERT INTO Jugador VALUES(1,'Oscar','123a');
INSERT INTO Jugador VALUES(2,'Lluc','1234ab');
INSERT INTO Jugador VALUES(3,'Pau','12345abc');
INSERT INTO Jugador VALUES(4,'Maria','123456abcd');
INSERT INTO Jugador VALUES(5,'Juan','1234567abcde');

INSERT INTO Partida VALUES(1,'29/09/2021 17:30',120,'Maria',60);
INSERT INTO Partida VALUES(2,'30/09/2021 18:30',90,'Juan',57);
INSERT INTO Partida VALUES(3,'01/10/2021 17:00',105,'Oscar',42);

INSERT INTO Historial VALUES(4,1,60);
INSERT INTO Historial VALUES(5,2,57);
INSERT INTO Historial VALUES(1,3,42);
INSERT INTO Historial VALUES(2,1,53);
INSERT INTO Historial VALUES(1,1,46);
INSERT INTO Historial VALUES(3,2,48);
INSERT INTO Historial VALUES(3,3,37);
INSERT INTO Historial VALUES(2,1,56);
INSERT INTO Historial VALUES(5,2,54);
INSERT INTO Historial VALUES(2,2,49);
INSERT INTO Historial VALUES(3,3,40);
INSERT INTO Historial VALUES(4,3,29);

