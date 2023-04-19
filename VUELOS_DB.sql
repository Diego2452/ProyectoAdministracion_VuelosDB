---------------------------------------------------------------
------ BASE DE DATOS - VUELOS -- PROYECTO ADMINISTRACION ------
---------------------------------------------------------------
-- Creacion de tabla Paises
CREATE TABLE Paises (
ID_Paises INT NOT NULL PRIMARY KEY,
Nombre_Pais VARCHAR(50)
);

---------------------------------------------------------------
-- Creacion de tabla Aerolineas
CREATE TABLE Aerolineas (
ID_Aerolineas INT NOT NULL PRIMARY KEY,
Nombre_Aerolinea VARCHAR(50),
ID_Pais INT NOT NULL,
FOREIGN KEY (ID_Pais) REFERENCES Paises(ID_Paises)
);

---------------------------------------------------------------
-- Creacion de tabla Aeropuertos
CREATE TABLE Aeropuertos (
ID_Aeropuertos INT NOT NULL PRIMARY KEY,
Nombre_Aeropuerto VARCHAR(50),
Ciudad_Aeropuerto VARCHAR(50),
ID_Ciudad INT NOT NULL,
FOREIGN KEY (ID_Ciudad) REFERENCES Ciudades(ID_Ciudades)
);

---------------------------------------------------------------
-- Creacion de tabla Ciudades
CREATE TABLE Ciudades (
ID_Ciudades INT NOT NULL PRIMARY KEY,
Nombre_Ciudad VARCHAR(50),
ID_Pais INT NOT NULL,
FOREIGN KEY (ID_Pais) REFERENCES Paises(ID_Paises)
);

---------------------------------------------------------------
-- Creacion de tabla Domicilios
CREATE TABLE Domicilios (
ID_Domicilios INT NOT NULL PRIMARY KEY,
Nombre_Domicilio VARCHAR(100),
Codigo_Postal VARCHAR(10),
ID_Ciudad INT NOT NULL,
FOREIGN KEY (ID_Ciudad) REFERENCES Ciudades(ID_Ciudades)
);

---------------------------------------------------------------
-- Creacion de tabla Horarios
CREATE TABLE Horarios (
ID_Horarios INT NOT NULL PRIMARY KEY,
Horarios VARCHAR(50),
Dia_Semana VARCHAR(20)
);

---------------------------------------------------------------
-- Creacion de tabla Aviones
CREATE TABLE Aviones (
ID_Aviones INT NOT NULL PRIMARY KEY,
ID_Vuelos INT NOT NULL,
Nombre_Avion VARCHAR(50),
Capacidad_Total INT,
ID_Aerolinea INT NOT NULL,
FOREIGN KEY (ID_Vuelos) REFERENCES Vuelos(ID_Vuelos),
FOREIGN KEY (ID_Aerolinea) REFERENCES Aerolineas(ID_Aerolineas)
);

---------------------------------------------------------------
-- Creacion de tabla Pilotos
CREATE TABLE Pilotos (
ID_Pilotos INT NOT NULL PRIMARY KEY,
Nombre_Piloto VARCHAR(50),
Apellido_Piloto VARCHAR(50),
Tipo_Licencia VARCHAR(20),
ID_Avion INT NOT NULL,
ID_Aerolinea INT NOT NULL,
FOREIGN KEY (ID_Avion) REFERENCES Aviones(ID_Aviones),
FOREIGN KEY (ID_Aerolinea) REFERENCES Aerolineas(ID_Aerolineas)
);

---------------------------------------------------------------
-- Creacion de tabla Pasajeros
CREATE TABLE Pasajeros (
ID_Pasajeros INT NOT NULL PRIMARY KEY,
ID_Domicilio INT NOT NULL,
Nombre VARCHAR(50)
Apellidos VARCHAR(50)
Sexo VARCHAR(10),
Edad INT,
Tipo_Cliente VARCHAR(20),
ID_Pasaporte VARCHAR(20),
ID_Nacionalidad INT NOT NULL,
FOREIGN KEY (ID_Domicilio) REFERENCES Domicilios(ID_Domicilios),
FOREIGN KEY (ID_Nacionalidad) REFERENCES Paises(ID_Paises)
);

---------------------------------------------------------------
-- Creacion de tabla Equipaje
CREATE TABLE Equipaje (
ID_Equipaje INT NOT NULL PRIMARY KEY,
Peso DECIMAL(10,2),
Descripcion VARCHAR(100),
ID_Pasajero INT NOT NULL,
FOREIGN KEY (ID_Pasajero) REFERENCES Pasajeros(ID_Pasajeros)
);

---------------------------------------------------------------
-- Creacion de tabla Personal
CREATE TABLE Personal (
ID_Personal INT NOT NULL PRIMARY KEY,
Nombre_Personal VARCHAR(50),
Edad INT,
Cargo VARCHAR(50),
ID_Aerolinea INT NOT NULL,
FOREIGN KEY (ID_Aerolinea) REFERENCES Aerolineas(ID_Aerolineas)
);

---------------------------------------------------------------
-- Creacion de tabla Vuelos
CREATE TABLE Vuelos (
ID_Vuelos INT NOT NULL PRIMARY KEY,
Fecha DATE,
Hora VARCHAR(10),
ID_Aerolinea INT NOT NULL,
ID_Aeropuerto_Origen INT NOT NULL,
ID_Aeropuerto_Destino INT NOT NULL,
FOREIGN KEY (ID_Aerolinea) REFERENCES Aerolineas(ID_Aerolineas),
FOREIGN KEY (ID_Aeropuerto_Origen) REFERENCES Aeropuertos(ID_Aeropuertos),
FOREIGN KEY (ID_Aeropuerto_Destino) REFERENCES Aeropuertos(ID_Aeropuertos)
);

---------------------------------------------------------------

-- Insercion a la tabla Paises
INSERT INTO Paises (ID_Paises, Nombre_Pais) VALUES
(1, 'Estados Unidos');
INSERT INTO Paises (ID_Paises, Nombre_Pais) VALUES
(2, 'México');
INSERT INTO Paises (ID_Paises, Nombre_Pais) VALUES
(3, 'Argentina');
INSERT INTO Paises (ID_Paises, Nombre_Pais) VALUES
(4, 'España');
INSERT INTO Paises (ID_Paises, Nombre_Pais) VALUES
(5, 'Japón');
INSERT INTO Paises (ID_Paises, Nombre_Pais) VALUES
(6, 'Francia');
INSERT INTO Paises (ID_Paises, Nombre_Pais) VALUES
(7, 'Alemania');
INSERT INTO Paises (ID_Paises, Nombre_Pais) VALUES
(8, 'Italia');
INSERT INTO Paises (ID_Paises, Nombre_Pais) VALUES
(9, 'China');
INSERT INTO Paises (ID_Paises, Nombre_Pais) VALUES
(11, 'Canadá');
INSERT INTO Paises (ID_Paises, Nombre_Pais) VALUES
(12, 'Brasil');
INSERT INTO Paises (ID_Paises, Nombre_Pais) VALUES
(13, 'Chile');
INSERT INTO Paises (ID_Paises, Nombre_Pais) VALUES
(14, 'Ecuador');
INSERT INTO Paises (ID_Paises, Nombre_Pais) VALUES
(15, 'Perú');
INSERT INTO Paises (ID_Paises, Nombre_Pais) VALUES
(16, 'Colombia');
INSERT INTO Paises (ID_Paises, Nombre_Pais) VALUES
(17, 'Uruguay');
INSERT INTO Paises (ID_Paises, Nombre_Pais) VALUES
(18, 'Venezuela');
INSERT INTO Paises (ID_Paises, Nombre_Pais) VALUES
(19, 'Panamá');
INSERT INTO Paises (ID_Paises, Nombre_Pais) VALUES
(20, 'Cuba');

-- Insercion a la tabla Aerolineas
INSERT INTO Aerolineas (ID_Aerolineas, Nombre_Aerolinea, ID_Pais) VALUES
(1, 'Delta Air Lines', 1);
INSERT INTO Aerolineas (ID_Aerolineas, Nombre_Aerolinea, ID_Pais) VALUES
(2, 'Aeroméxico', 2);
INSERT INTO Aerolineas (ID_Aerolineas, Nombre_Aerolinea, ID_Pais) VALUES
(3, 'Aerolíneas Argentinas', 3);
INSERT INTO Aerolineas (ID_Aerolineas, Nombre_Aerolinea, ID_Pais) VALUES
(4, 'Iberia', 4);
INSERT INTO Aerolineas (ID_Aerolineas, Nombre_Aerolinea, ID_Pais) VALUES
(5, 'Japan Airlines', 5);
INSERT INTO Aerolineas (ID_Aerolineas, Nombre_Aerolinea, ID_Pais) VALUES
(6, 'Air France', 4);
INSERT INTO Aerolineas (ID_Aerolineas, Nombre_Aerolinea, ID_Pais) VALUES
(7, 'Emirates', 6);
INSERT INTO Aerolineas (ID_Aerolineas, Nombre_Aerolinea, ID_Pais) VALUES
(8, 'British Airways', 7);
INSERT INTO Aerolineas (ID_Aerolineas, Nombre_Aerolinea, ID_Pais) VALUES
(9, 'Lufthansa', 8);
INSERT INTO Aerolineas (ID_Aerolineas, Nombre_Aerolinea, ID_Pais) VALUES
(10, 'Qatar Airways', 9);
INSERT INTO Aerolineas (ID_Aerolineas, Nombre_Aerolinea, ID_Pais) VALUES
(11, 'American Airlines', 1);
INSERT INTO Aerolineas (ID_Aerolineas, Nombre_Aerolinea, ID_Pais) VALUES
(12, 'United Airlines', 1);
INSERT INTO Aerolineas (ID_Aerolineas, Nombre_Aerolinea, ID_Pais) VALUES
(13, 'Interjet', 2);
INSERT INTO Aerolineas (ID_Aerolineas, Nombre_Aerolinea, ID_Pais) VALUES
(14, 'LATAM Airlines', 3);
INSERT INTO Aerolineas (ID_Aerolineas, Nombre_Aerolinea, ID_Pais) VALUES
(15, 'KLM Royal Dutch Airlines', 10);
INSERT INTO Aerolineas (ID_Aerolineas, Nombre_Aerolinea, ID_Pais) VALUES
(16, 'Turkish Airlines', 11);
INSERT INTO Aerolineas (ID_Aerolineas, Nombre_Aerolinea, ID_Pais) VALUES
(17, 'Singapore Airlines', 12);
INSERT INTO Aerolineas (ID_Aerolineas, Nombre_Aerolinea, ID_Pais) VALUES
(18, 'Cathay Pacific', 13);
INSERT INTO Aerolineas (ID_Aerolineas, Nombre_Aerolinea, ID_Pais) VALUES
(19, 'Air Canada', 14);
INSERT INTO Aerolineas (ID_Aerolineas, Nombre_Aerolinea, ID_Pais) VALUES
(20, 'Qantas Airways', 15);

-- Insercion a la tabla Aeropuertos
INSERT INTO Aeropuertos (ID_Aeropuertos, Nombre_Aeropuerto, Ciudad_Aeropuerto, ID_Ciudad) VALUES
(1, 'Aeropuerto Internacional John F. Kennedy', 'Nueva York', 1);
INSERT INTO Aeropuertos (ID_Aeropuertos, Nombre_Aeropuerto, Ciudad_Aeropuerto, ID_Ciudad) VALUES
(2, 'Aeropuerto Internacional de la Ciudad de México', 'Ciudad de México', 2);
INSERT INTO Aeropuertos (ID_Aeropuertos, Nombre_Aeropuerto, Ciudad_Aeropuerto, ID_Ciudad) VALUES
(3, 'Aeropuerto Internacional Ministro Pistarini', 'Buenos Aires', 3);
INSERT INTO Aeropuertos (ID_Aeropuertos, Nombre_Aeropuerto, Ciudad_Aeropuerto, ID_Ciudad) VALUES
(4, 'Aeropuerto Adolfo Suárez Madrid-Barajas', 'Madrid', 4);

-- Insercion a la tabla Ciudades
INSERT INTO Ciudades (ID_Ciudades, Nombre_Ciudad, ID_Pais) VALUES
(1, 'Nueva York', 1);
INSERT INTO Ciudades (ID_Ciudades, Nombre_Ciudad, ID_Pais) VALUES
(2, 'Ciudad de México', 2);
INSERT INTO Ciudades (ID_Ciudades, Nombre_Ciudad, ID_Pais) VALUES
(3, 'Buenos Aires', 3);
INSERT INTO Ciudades (ID_Ciudades, Nombre_Ciudad, ID_Pais) VALUES
(4, 'Madrid', 4);
INSERT INTO Ciudades (ID_Ciudades, Nombre_Ciudad, ID_Pais) VALUES
(5, 'Tokio', 5);
INSERT INTO Ciudades (ID_Ciudades, Nombre_Ciudad, ID_Pais) VALUES
(6, 'Los Angeles', 1);
INSERT INTO Ciudades (ID_Ciudades, Nombre_Ciudad, ID_Pais) VALUES
(7, 'Cancún', 2);
INSERT INTO Ciudades (ID_Ciudades, Nombre_Ciudad, ID_Pais) VALUES
(8, 'Córdoba', 3);
INSERT INTO Ciudades (ID_Ciudades, Nombre_Ciudad, ID_Pais) VALUES
(9, 'Barcelona', 4);
INSERT INTO Ciudades (ID_Ciudades, Nombre_Ciudad, ID_Pais) VALUES
(10, 'Osaka', 5);
INSERT INTO Ciudades (ID_Ciudades, Nombre_Ciudad, ID_Pais) VALUES
(11, 'Chicago', 1);
INSERT INTO Ciudades (ID_Ciudades, Nombre_Ciudad, ID_Pais) VALUES
(12, 'Guadalajara', 2);
INSERT INTO Ciudades (ID_Ciudades, Nombre_Ciudad, ID_Pais) VALUES
(13, 'Rosario', 3);
INSERT INTO Ciudades (ID_Ciudades, Nombre_Ciudad, ID_Pais) VALUES
(14, 'Sevilla', 4);
INSERT INTO Ciudades (ID_Ciudades, Nombre_Ciudad, ID_Pais) VALUES
(15, 'Kyoto', 5);
INSERT INTO Ciudades (ID_Ciudades, Nombre_Ciudad, ID_Pais) VALUES
(16, 'San Francisco', 1);
INSERT INTO Ciudades (ID_Ciudades, Nombre_Ciudad, ID_Pais) VALUES
(17, 'Tijuana', 2);
INSERT INTO Ciudades (ID_Ciudades, Nombre_Ciudad, ID_Pais) VALUES
(18, 'Mendoza', 3);
INSERT INTO Ciudades (ID_Ciudades, Nombre_Ciudad, ID_Pais) VALUES
(19, 'Valencia', 4);
INSERT INTO Ciudades (ID_Ciudades, Nombre_Ciudad, ID_Pais) VALUES
(20, 'Fukuoka', 5);

-- Insercion a la tabla Domicilios
INSERT INTO Domicilios (ID_Domicilios, Nombre_Domicilio, Codigo_Postal, ID_Ciudad) VALUES
(1, 'Calle Gran Vía 123', '28013', 1);
INSERT INTO Domicilios (ID_Domicilios, Nombre_Domicilio, Codigo_Postal, ID_Ciudad) VALUES
(2, 'Calle Princesa 45', '28008', 1);
INSERT INTO Domicilios (ID_Domicilios, Nombre_Domicilio, Codigo_Postal, ID_Ciudad) VALUES
(3, 'Calle Mayor 67', '28013', 1);
INSERT INTO Domicilios (ID_Domicilios, Nombre_Domicilio, Codigo_Postal, ID_Ciudad) VALUES
(4, 'Calle Alcalá 89', '28009', 1);
INSERT INTO Domicilios (ID_Domicilios, Nombre_Domicilio, Codigo_Postal, ID_Ciudad) VALUES
(5, 'Av. Insurgentes Sur 100', '06760', 2);
INSERT INTO Domicilios (ID_Domicilios, Nombre_Domicilio, Codigo_Postal, ID_Ciudad) VALUES
(6, 'Av. Revolución 1600', '01090', 2);
INSERT INTO Domicilios (ID_Domicilios, Nombre_Domicilio, Codigo_Postal, ID_Ciudad) VALUES
(7, 'Av. Córdoba 100', '1055', 3);
INSERT INTO Domicilios (ID_Domicilios, Nombre_Domicilio, Codigo_Postal, ID_Ciudad) VALUES
(8, 'Calle Sarmiento 2134', '1044', 3);
INSERT INTO Domicilios (ID_Domicilios, Nombre_Domicilio, Codigo_Postal, ID_Ciudad) VALUES
(9, 'Calle de la Granja 12', '28003', 4);
INSERT INTO Domicilios (ID_Domicilios, Nombre_Domicilio, Codigo_Postal, ID_Ciudad) VALUES
(10, 'Avenida Insurgentes Sur 1360', '03920', 2);

-- Insercion a la tabla Horarios
INSERT INTO Horarios (ID_Horarios, Horarios, Dia_Semana) VALUES
(1, '10:00 - 20:00', 'Lunes');
INSERT INTO Horarios (ID_Horarios, Horarios, Dia_Semana) VALUES
(2, '10:00 - 20:00', 'Martes');
INSERT INTO Horarios (ID_Horarios, Horarios, Dia_Semana) VALUES
(3, '10:00 - 20:00', 'Miércoles');
INSERT INTO Horarios (ID_Horarios, Horarios, Dia_Semana) VALUES
(4, '10:00 - 22:00', 'Jueves');
INSERT INTO Horarios (ID_Horarios, Horarios, Dia_Semana) VALUES
(5, '10:00 - 22:00', 'Viernes');
INSERT INTO Horarios (ID_Horarios, Horarios, Dia_Semana) VALUES
(6, '10:00 - 22:00', 'Sábado');
INSERT INTO Horarios (ID_Horarios, Horarios, Dia_Semana) VALUES
(7, '11:00 - 20:00', 'Domingo');

-- Insercion a la tabla Aviones
INSERT INTO Aviones (ID_Aviones, ID_Vuelos, Nombre_Avion, Capacidad_Total, ID_Aerolinea) VALUES
(1, 1, 'Boeing 747', 416, 1);
INSERT INTO Aviones (ID_Aviones, ID_Vuelos, Nombre_Avion, Capacidad_Total, ID_Aerolinea) VALUES
(2, 2, 'Airbus A320', 180, 3);
INSERT INTO Aviones (ID_Aviones, ID_Vuelos, Nombre_Avion, Capacidad_Total, ID_Aerolinea) VALUES
(3, 3, 'Boeing 737', 189, 1);
INSERT INTO Aviones (ID_Aviones, ID_Vuelos, Nombre_Avion, Capacidad_Total, ID_Aerolinea) VALUES
(4, 4, 'Airbus A380', 853, 4);
INSERT INTO Aviones (ID_Aviones, ID_Vuelos, Nombre_Avion, Capacidad_Total, ID_Aerolinea) VALUES
(5, 5, 'Boeing 777', 396, 7);
INSERT INTO Aviones (ID_Aviones, ID_Vuelos, Nombre_Avion, Capacidad_Total, ID_Aerolinea) VALUES
(6, 6, 'Airbus A350', 440, 2);
INSERT INTO Aviones (ID_Aviones, ID_Vuelos, Nombre_Avion, Capacidad_Total, ID_Aerolinea) VALUES
(7, 7, 'Boeing 787', 330, 5);
INSERT INTO Aviones (ID_Aviones, ID_Vuelos, Nombre_Avion, Capacidad_Total, ID_Aerolinea) VALUES
(8, 8, 'Embraer E190', 114, 2);
INSERT INTO Aviones (ID_Aviones, ID_Vuelos, Nombre_Avion, Capacidad_Total, ID_Aerolinea) VALUES
(9, 9, 'Boeing 737 MAX', 200, 9);
INSERT INTO Aviones (ID_Aviones, ID_Vuelos, Nombre_Avion, Capacidad_Total, ID_Aerolinea) VALUES
(10, 10, 'Airbus A319', 124, 10);
INSERT INTO Aviones (ID_Aviones, ID_Vuelos, Nombre_Avion, Capacidad_Total, ID_Aerolinea) VALUES
(11, 11, 'Boeing 737', 189, 3);
INSERT INTO Aviones (ID_Aviones, ID_Vuelos, Nombre_Avion, Capacidad_Total, ID_Aerolinea) VALUES
(12, 12, 'Airbus A330', 293, 4);
INSERT INTO Aviones (ID_Aviones, ID_Vuelos, Nombre_Avion, Capacidad_Total, ID_Aerolinea) VALUES
(13, 13, 'Boeing 757', 239, 1);
INSERT INTO Aviones (ID_Aviones, ID_Vuelos, Nombre_Avion, Capacidad_Total, ID_Aerolinea) VALUES
(14, 14, 'Airbus A321', 220, 2);
INSERT INTO Aviones (ID_Aviones, ID_Vuelos, Nombre_Avion, Capacidad_Total, ID_Aerolinea) VALUES
(15, 15, 'Boeing 767', 375, 5);
INSERT INTO Aviones (ID_Aviones, ID_Vuelos, Nombre_Avion, Capacidad_Total, ID_Aerolinea) VALUES
(16, 16, 'Airbus A319', 124, 7);
INSERT INTO Aviones (ID_Aviones, ID_Vuelos, Nombre_Avion, Capacidad_Total, ID_Aerolinea) VALUES
(17, 17, 'Boeing 777X', 426, 1);
INSERT INTO Aviones (ID_Aviones, ID_Vuelos, Nombre_Avion, Capacidad_Total, ID_Aerolinea) VALUES
(18, 18, 'Airbus A340', 380, 3);
INSERT INTO Aviones (ID_Aviones, ID_Vuelos, Nombre_Avion, Capacidad_Total, ID_Aerolinea) VALUES
(19, 19, 'Boeing 747-8', 467, 4);
INSERT INTO Aviones (ID_Aviones, ID_Vuelos, Nombre_Avion, Capacidad_Total, ID_Aerolinea) VALUES
(20, 20, 'Airbus A380', 853, 6);

-- Insercion a la tabla Pilotos
INSERT INTO Pilotos (ID_Pilotos, Nombre_Piloto, Apellido_Piloto, Tipo_Licencia, ID_Avion, ID_Aerolinea) VALUES
(1, 'Juan', 'Pérez', 'Comercial', 1, 1);
INSERT INTO Pilotos (ID_Pilotos, Nombre_Piloto, Apellido_Piloto, Tipo_Licencia, ID_Avion, ID_Aerolinea) VALUES
(2, 'María', 'García', 'Privada', 2, 2);
INSERT INTO Pilotos (ID_Pilotos, Nombre_Piloto, Apellido_Piloto, Tipo_Licencia, ID_Avion, ID_Aerolinea) VALUES
(3, 'Pedro', 'Martínez', 'Comercial', 3, 1);
INSERT INTO Pilotos (ID_Pilotos, Nombre_Piloto, Apellido_Piloto, Tipo_Licencia, ID_Avion, ID_Aerolinea) VALUES
(4, 'Luis', 'Gómez', 'Comercial', 2, 2);
INSERT INTO Pilotos (ID_Pilotos, Nombre_Piloto, Apellido_Piloto, Tipo_Licencia, ID_Avion, ID_Aerolinea) VALUES
(5, 'Ana', 'Hernández', 'Privada', 3, 3);
INSERT INTO Pilotos (ID_Pilotos, Nombre_Piloto, Apellido_Piloto, Tipo_Licencia, ID_Avion, ID_Aerolinea) VALUES
(6, 'José', 'López', 'Comercial', 1, 2);
INSERT INTO Pilotos (ID_Pilotos, Nombre_Piloto, Apellido_Piloto, Tipo_Licencia, ID_Avion, ID_Aerolinea) VALUES
(7, 'Carla', 'Díaz', 'Privada', 2, 1);
INSERT INTO Pilotos (ID_Pilotos, Nombre_Piloto, Apellido_Piloto, Tipo_Licencia, ID_Avion, ID_Aerolinea) VALUES
(8, 'Jorge', 'González', 'Comercial', 3, 2);
INSERT INTO Pilotos (ID_Pilotos, Nombre_Piloto, Apellido_Piloto, Tipo_Licencia, ID_Avion, ID_Aerolinea) VALUES
(9, 'Marta', 'Martín', 'Privada', 1, 3);
INSERT INTO Pilotos (ID_Pilotos, Nombre_Piloto, Apellido_Piloto, Tipo_Licencia, ID_Avion, ID_Aerolinea) VALUES
(10, 'Roberto', 'Sánchez', 'Comercial', 2, 1);

-- Insercion a la tabla Pasajeros
INSERT INTO Pasajeros (ID_Pasajeros, ID_Domicilio, Nombre, Apellidos, Sexo, Edad, Tipo_Cliente, ID_Pasaporte, ID_Nacionalidad) VALUES
(1, 1, 'Maria', 'Gonzalez', 'Femenino', 30, 'VIP', 'A123456', 1);
INSERT INTO Pasajeros (ID_Pasajeros, ID_Domicilio, Nombre, Apellidos, Sexo, Edad, Tipo_Cliente, ID_Pasaporte, ID_Nacionalidad) VALUES
(2, 2, 'Juan', 'Pérez', 'Masculino', 45, 'Regular', 'B789012', 2);
INSERT INTO Pasajeros (ID_Pasajeros, ID_Domicilio, Nombre, Apellidos, Sexo, Edad, Tipo_Cliente, ID_Pasaporte, ID_Nacionalidad) VALUES
(3, 3, 'Ana', 'García', 'Femenino', 25, 'Regular', 'C345678', 3);
INSERT INTO Pasajeros (ID_Pasajeros, ID_Domicilio, Nombre, Apellidos, Sexo, Edad, Tipo_Cliente, ID_Pasaporte, ID_Nacionalidad) VALUES
(4, 1, 'Carlos', 'Rodriguez', 'Masculino', 28, 'Regular', 'D901234', 1);
INSERT INTO Pasajeros (ID_Pasajeros, ID_Domicilio, Nombre, Apellidos, Sexo, Edad, Tipo_Cliente, ID_Pasaporte, ID_Nacionalidad) VALUES
(5, 4, 'Sofía', 'Martínez', 'Femenino', 35, 'VIP', 'E567890', 2);
INSERT INTO Pasajeros (ID_Pasajeros, ID_Domicilio, Nombre, Apellidos, Sexo, Edad, Tipo_Cliente, ID_Pasaporte, ID_Nacionalidad) VALUES
(6, 5, 'Pedro', 'Lopez', 'Masculino', 22, 'Regular', 'F123456', 3);
INSERT INTO Pasajeros (ID_Pasajeros, ID_Domicilio, Nombre, Apellidos, Sexo, Edad, Tipo_Cliente, ID_Pasaporte, ID_Nacionalidad) VALUES
(7, 2, 'Luisa', 'Fernandez', 'Femenino', 50, 'VIP', 'G789012', 4);
INSERT INTO Pasajeros (ID_Pasajeros, ID_Domicilio, Nombre, Apellidos, Sexo, Edad, Tipo_Cliente, ID_Pasaporte, ID_Nacionalidad) VALUES
(8, 3, 'Antonio', 'Sanchez', 'Masculino', 40, 'Regular', 'H345678', 5);
INSERT INTO Pasajeros (ID_Pasajeros, ID_Domicilio, Nombre, Apellidos, Sexo, Edad, Tipo_Cliente, ID_Pasaporte, ID_Nacionalidad) VALUES
(9, 4, 'Marta', 'Ruiz', 'Femenino', 31, 'VIP', 'I901234', 1);
INSERT INTO Pasajeros (ID_Pasajeros, ID_Domicilio, Nombre, Apellidos, Sexo, Edad, Tipo_Cliente, ID_Pasaporte, ID_Nacionalidad) VALUES
(10, 1, 'José', 'Gutierrez', 'Masculino', 55, 'Regular', 'J567890', 2);
INSERT INTO Pasajeros (ID_Pasajeros, ID_Domicilio, Nombre, Apellidos, Sexo, Edad, Tipo_Cliente, ID_Pasaporte, ID_Nacionalidad) VALUES
(11, 2, 'Isabel', 'Díaz', 'Femenino', 29, 'Regular', 'K123456', 3);
INSERT INTO Pasajeros (ID_Pasajeros, ID_Domicilio, Nombre, Apellidos, Sexo, Edad, Tipo_Cliente, ID_Pasaporte, ID_Nacionalidad) VALUES
(12, 3, 'Javier', 'Romero', 'Masculino', 48, 'VIP', 'L789012', 4);
INSERT INTO Pasajeros (ID_Pasajeros, ID_Domicilio, Nombre, Apellidos, Sexo, Edad, Tipo_Cliente, ID_Pasaporte, ID_Nacionalidad) VALUES
(13, 7, 'Jorge', 'Mendoza', 'Masculino', 32, 'Regular', 'M123789', 4);
INSERT INTO Pasajeros (ID_Pasajeros, ID_Domicilio, Nombre, Apellidos, Sexo, Edad, Tipo_Cliente, ID_Pasaporte, ID_Nacionalidad) VALUES
(14, 8, 'Paola', 'Gutierrez', 'Femenino', 27, 'VIP', 'N234567', 5);
INSERT INTO Pasajeros (ID_Pasajeros, ID_Domicilio, Nombre, Apellidos, Sexo, Edad, Tipo_Cliente, ID_Pasaporte, ID_Nacionalidad) VALUES
(15, 9, 'Sergio', 'Pérez', 'Masculino', 35, 'Regular', 'O345678', 2);
INSERT INTO Pasajeros (ID_Pasajeros, ID_Domicilio, Nombre, Apellidos, Sexo, Edad, Tipo_Cliente, ID_Pasaporte, ID_Nacionalidad) VALUES
(16, 10, 'Diana', 'González', 'Femenino', 29, 'Regular', 'P456789', 3);
INSERT INTO Pasajeros (ID_Pasajeros, ID_Domicilio, Nombre, Apellidos, Sexo, Edad, Tipo_Cliente, ID_Pasaporte, ID_Nacionalidad) VALUES
(17, 11, 'Roberto', 'Sánchez', 'Masculino', 40, 'VIP', 'Q567890', 4);
INSERT INTO Pasajeros (ID_Pasajeros, ID_Domicilio, Nombre, Apellidos, Sexo, Edad, Tipo_Cliente, ID_Pasaporte, ID_Nacionalidad) VALUES
(18, 4, 'Pedro', 'Lopez', 'Masculino', 32, 'VIP', 'D901234', 4);
INSERT INTO Pasajeros (ID_Pasajeros, ID_Domicilio, Nombre, Apellidos, Sexo, Edad, Tipo_Cliente, ID_Pasaporte, ID_Nacionalidad) VALUES
(19, 5, 'Sara', 'Martinez', 'Femenino', 27, 'Regular', 'E567890', 5);
INSERT INTO Pasajeros (ID_Pasajeros, ID_Domicilio, Nombre, Apellidos, Sexo, Edad, Tipo_Cliente, ID_Pasaporte, ID_Nacionalidad) VALUES
(20, 1, 'Miguel', 'Ruiz', 'Masculino', 50, 'VIP', 'F123456', 6);
INSERT INTO Pasajeros (ID_Pasajeros, ID_Domicilio, Nombre, Apellidos, Sexo, Edad, Tipo_Cliente, ID_Pasaporte, ID_Nacionalidad) VALUES
(21, 6, 'Gloria', 'Cruz', 'Femenino', 42, 'VIP', 'X123456', 1);
INSERT INTO Pasajeros (ID_Pasajeros, ID_Domicilio, Nombre, Apellidos, Sexo, Edad, Tipo_Cliente, ID_Pasaporte, ID_Nacionalidad) VALUES
(22, 7, 'Ricardo', 'Vega', 'Masculino', 50, 'Regular', 'Y123789', 2);
INSERT INTO Pasajeros (ID_Pasajeros, ID_Domicilio, Nombre, Apellidos, Sexo, Edad, Tipo_Cliente, ID_Pasaporte, ID_Nacionalidad) VALUES
(23, 1, 'Juliana', 'Paredes', 'Femenino', 24, 'Regular', 'Z789012', 3);
INSERT INTO Pasajeros (ID_Pasajeros, ID_Domicilio, Nombre, Apellidos, Sexo, Edad, Tipo_Cliente, ID_Pasaporte, ID_Nacionalidad) VALUES
(24, 4, 'Diego', 'Rojas', 'Masculino', 35, 'Regular', 'A456123', 4);
INSERT INTO Pasajeros (ID_Pasajeros, ID_Domicilio, Nombre, Apellidos, Sexo, Edad, Tipo_Cliente, ID_Pasaporte, ID_Nacionalidad) VALUES
(25, 5, 'Valeria', 'Ramos', 'Femenino', 31, 'VIP', 'B789456', 5);
INSERT INTO Pasajeros (ID_Pasajeros, ID_Domicilio, Nombre, Apellidos, Sexo, Edad, Tipo_Cliente, ID_Pasaporte, ID_Nacionalidad) VALUES
(26, 2, 'Fernando', 'Santos', 'Masculino', 44, 'VIP', 'C123789', 1);
INSERT INTO Pasajeros (ID_Pasajeros, ID_Domicilio, Nombre, Apellidos, Sexo, Edad, Tipo_Cliente, ID_Pasaporte, ID_Nacionalidad) VALUES
(27, 3, 'Lucía', 'Castro', 'Femenino', 28, 'Regular', 'D789123', 2);
INSERT INTO Pasajeros (ID_Pasajeros, ID_Domicilio, Nombre, Apellidos, Sexo, Edad, Tipo_Cliente, ID_Pasaporte, ID_Nacionalidad) VALUES
(28, 1, 'David', 'Guerra', 'Masculino', 37, 'Regular', 'E123789', 3);
INSERT INTO Pasajeros (ID_Pasajeros, ID_Domicilio, Nombre, Apellidos, Sexo, Edad, Tipo_Cliente, ID_Pasaporte, ID_Nacionalidad) VALUES
(29, 7, 'Amanda', 'Mora', 'Femenino', 27, 'VIP', 'F789123', 4);
INSERT INTO Pasajeros (ID_Pasajeros, ID_Domicilio, Nombre, Apellidos, Sexo, Edad, Tipo_Cliente, ID_Pasaporte, ID_Nacionalidad) VALUES
(30, 4, 'Francisco', 'Velasquez', 'Masculino', 55, 'Regular', 'G123456', 5);
INSERT INTO Pasajeros (ID_Pasajeros, ID_Domicilio, Nombre, Apellidos, Sexo, Edad, Tipo_Cliente, ID_Pasaporte, ID_Nacionalidad) VALUES 
(31, 4, 'Maria', 'Lopez', 'Femenino', 27, 'VIP', 'T123456', 1);
INSERT INTO Pasajeros (ID_Pasajeros, ID_Domicilio, Nombre, Apellidos, Sexo, Edad, Tipo_Cliente, ID_Pasaporte, ID_Nacionalidad) VALUES 
(32, 5, 'Felipe', 'Ramirez', 'Masculino', 40, 'Regular', 'U789012', 2);
INSERT INTO Pasajeros (ID_Pasajeros, ID_Domicilio, Nombre, Apellidos, Sexo, Edad, Tipo_Cliente, ID_Pasaporte, ID_Nacionalidad) VALUES 
(33, 6, 'Lorena', 'Hernandez', 'Femenino', 31, 'VIP', 'V345678', 3);
INSERT INTO Pasajeros (ID_Pasajeros, ID_Domicilio, Nombre, Apellidos, Sexo, Edad, Tipo_Cliente, ID_Pasaporte, ID_Nacionalidad) VALUES 
(34, 7, 'Gabriel', 'Flores', 'Masculino', 29, 'Regular', 'W901234', 4);
INSERT INTO Pasajeros (ID_Pasajeros, ID_Domicilio, Nombre, Apellidos, Sexo, Edad, Tipo_Cliente, ID_Pasaporte, ID_Nacionalidad) VALUES 
(35, 1, 'Ana', 'Gutierrez', 'Femenino', 24, 'VIP', 'X567890', 5);
INSERT INTO Pasajeros (ID_Pasajeros, ID_Domicilio, Nombre, Apellidos, Sexo, Edad, Tipo_Cliente, ID_Pasaporte, ID_Nacionalidad) VALUES
(36, 2, 'Ricardo', 'Ponce', 'Masculino', 33, 'Regular', 'Y123456', 1);
INSERT INTO Pasajeros (ID_Pasajeros, ID_Domicilio, Nombre, Apellidos, Sexo, Edad, Tipo_Cliente, ID_Pasaporte, ID_Nacionalidad) VALUES
(37, 3, 'Sara', 'Fuentes', 'Femenino', 28, 'VIP', 'Z789012', 2);
INSERT INTO Pasajeros (ID_Pasajeros, ID_Domicilio, Nombre, Apellidos, Sexo, Edad, Tipo_Cliente, ID_Pasaporte, ID_Nacionalidad) VALUES 
(38, 4, 'Emilio', 'Velasco', 'Masculino', 36, 'Regular', 'AA345678', 3);
INSERT INTO Pasajeros (ID_Pasajeros, ID_Domicilio, Nombre, Apellidos, Sexo, Edad, Tipo_Cliente, ID_Pasaporte, ID_Nacionalidad) VALUES 
(39, 5, 'Laura', 'Guzman', 'Femenino', 43, 'VIP', 'AB901234', 4);
INSERT INTO Pasajeros (ID_Pasajeros, ID_Domicilio, Nombre, Apellidos, Sexo, Edad, Tipo_Cliente, ID_Pasaporte, ID_Nacionalidad) VALUES 
(40, 6, 'Joaquin', 'Montoya', 'Masculino', 50, 'Regular', 'AC567890', 5);

-- Insercion a la tabla Equipaje
INSERT INTO Equipaje (ID_Equipaje, Peso, Descripcion, ID_Pasajero) VALUES
(1, 20.5, 'Maleta grande', 1);
INSERT INTO Equipaje (ID_Equipaje, Peso, Descripcion, ID_Pasajero) VALUES
(2, 10.2, 'Maleta mediana', 2);
INSERT INTO Equipaje (ID_Equipaje, Peso, Descripcion, ID_Pasajero) VALUES
(3, 5.7, 'Mochila pequeña', 3);
INSERT INTO Equipaje (ID_Equipaje, Peso, Descripcion, ID_Pasajero) VALUES
(4, 150.8, 'Contenedor con Materiales', 1);
INSERT INTO Equipaje (ID_Equipaje, Peso, Descripcion, ID_Pasajero) VALUES
(5, 7.3, 'Maleta mediana', 2);
INSERT INTO Equipaje (ID_Equipaje, Peso, Descripcion, ID_Pasajero) VALUES
(6, 4.2, 'Bolsa de mano', 3);
INSERT INTO Equipaje (ID_Equipaje, Peso, Descripcion, ID_Pasajero) VALUES
(7, 26.6, 'Transporte de Mascotas', 1);
INSERT INTO Equipaje (ID_Equipaje, Peso, Descripcion, ID_Pasajero) VALUES
(8, 12.1, 'Maleta pequeña', 2);
INSERT INTO Equipaje (ID_Equipaje, Peso, Descripcion, ID_Pasajero) VALUES
(9, 6.5, 'Bolsa de deporte', 3);
INSERT INTO Equipaje (ID_Equipaje, Peso, Descripcion, ID_Pasajero) VALUES
(10, 9.4, 'Maleta mediana', 1);

-- Insercion a la tabla Personal
INSERT INTO Personal (ID_Personal, Nombre_Personal, Edad, Cargo, ID_Aerolinea) VALUES
(1, 'Luisa Ramirez', 28, 'Asistente de Vuelo', 2);
INSERT INTO Personal (ID_Personal, Nombre_Personal, Edad, Cargo, ID_Aerolinea) VALUES
(2, 'Mario Diaz', 42, 'Encargado de Mantenimiento', 3);
INSERT INTO Personal (ID_Personal, Nombre_Personal, Edad, Cargo, ID_Aerolinea) VALUES
(3, 'Ana González', 25, 'Asistente de Vuelo', 1);
INSERT INTO Personal (ID_Personal, Nombre_Personal, Edad, Cargo, ID_Aerolinea) VALUES
(4, 'Juan Pérez', 35, 'Encargado de Mantenimiento', 2);
INSERT INTO Personal (ID_Personal, Nombre_Personal, Edad, Cargo, ID_Aerolinea) VALUES
(5, 'Carla Torres', 28, 'Control de Pistas', 1);
INSERT INTO Personal (ID_Personal, Nombre_Personal, Edad, Cargo, ID_Aerolinea) VALUES
(6, 'José García', 42, 'Asistente de Vuelo', 3);
INSERT INTO Personal (ID_Personal, Nombre_Personal, Edad, Cargo, ID_Aerolinea) VALUES
(7, 'María Flores', 30, 'Mantenimiento de Aviones', 1);
INSERT INTO Personal (ID_Personal, Nombre_Personal, Edad, Cargo, ID_Aerolinea) VALUES
(8, 'Luis González', 48, 'Control de Pistas', 3);
INSERT INTO Personal (ID_Personal, Nombre_Personal, Edad, Cargo, ID_Aerolinea) VALUES
(9, 'Jorge Castro', 36, 'Asistente de Vuelo', 2);
INSERT INTO Personal (ID_Personal, Nombre_Personal, Edad, Cargo, ID_Aerolinea) VALUES
(10, 'Gabriela Pérez', 29, 'Mantenimiento de Aviones', 2);
INSERT INTO Personal (ID_Personal, Nombre_Personal, Edad, Cargo, ID_Aerolinea) VALUES
(11, 'Miguel Rodríguez', 39, 'Control de Pistas', 2);
INSERT INTO Personal (ID_Personal, Nombre_Personal, Edad, Cargo, ID_Aerolinea) VALUES
(12, 'Laura García', 26, 'Asistente de Vuelo', 1);
INSERT INTO Personal (ID_Personal, Nombre_Personal, Edad, Cargo, ID_Aerolinea) VALUES
(13, 'Fernando Morales', 45, 'Mantenimiento de Aviones', 3);
INSERT INTO Personal (ID_Personal, Nombre_Personal, Edad, Cargo, ID_Aerolinea) VALUES
(14, 'Alejandra Ramírez', 33, 'Supervisor de Servicios al Pasajero', 1);
INSERT INTO Personal (ID_Personal, Nombre_Personal, Edad, Cargo, ID_Aerolinea) VALUES
(15, 'David Castro', 40, 'Supervisor de Seguridad', 3);
INSERT INTO Personal (ID_Personal, Nombre_Personal, Edad, Cargo, ID_Aerolinea) VALUES
(16, 'Sofía Torres', 27, 'Asistente de Vuelo', 2);
INSERT INTO Personal (ID_Personal, Nombre_Personal, Edad, Cargo, ID_Aerolinea) VALUES
(17, 'Pedro Hernández', 45, 'Mantenimiento de Aviones', 3);
INSERT INTO Personal (ID_Personal, Nombre_Personal, Edad, Cargo, ID_Aerolinea) VALUES
(18, 'Carolina Sánchez', 32, 'Asistente de Vuelo', 1);
INSERT INTO Personal (ID_Personal, Nombre_Personal, Edad, Cargo, ID_Aerolinea) VALUES
(19, 'José Luis García', 50, 'Encargado de Mantenimiento', 2);
INSERT INTO Personal (ID_Personal, Nombre_Personal, Edad, Cargo, ID_Aerolinea) VALUES
(20, 'Sara Martínez', 29, 'Control de Pistas', 1);

-- Insercion a la tabla Vuelos
INSERT INTO Vuelos (ID_Vuelos, Fecha, Hora, ID_Aerolinea, ID_Aeropuerto_Origen, ID_Aeropuerto_Destino) VALUES
(1, '2023-04-18', '14:30', 1, 1, 2);
INSERT INTO Vuelos (ID_Vuelos, Fecha, Hora, ID_Aerolinea, ID_Aeropuerto_Origen, ID_Aeropuerto_Destino) VALUES
(2, '2023-04-19', '09:00', 2, 2, 3);
INSERT INTO Vuelos (ID_Vuelos, Fecha, Hora, ID_Aerolinea, ID_Aeropuerto_Origen, ID_Aeropuerto_Destino) VALUES
(3, '2023-04-20', '20:15', 3, 3, 1);
INSERT INTO Vuelos (ID_Vuelos, Fecha, Hora, ID_Aerolinea, ID_Aeropuerto_Origen, ID_Aeropuerto_Destino) VALUES
(4, '2023-04-21', '13:45', 1, 2, 3);
INSERT INTO Vuelos (ID_Vuelos, Fecha, Hora, ID_Aerolinea, ID_Aeropuerto_Origen, ID_Aeropuerto_Destino) VALUES
(5, '2023-04-22', '16:20', 2, 3, 1);
INSERT INTO Vuelos (ID_Vuelos, Fecha, Hora, ID_Aerolinea, ID_Aeropuerto_Origen, ID_Aeropuerto_Destino) VALUES
(6, '2023-04-23', '08:15', 3, 1, 2);
INSERT INTO Vuelos (ID_Vuelos, Fecha, Hora, ID_Aerolinea, ID_Aeropuerto_Origen, ID_Aeropuerto_Destino) VALUES
(7, '2023-04-24', '11:30', 1, 3, 2);
INSERT INTO Vuelos (ID_Vuelos, Fecha, Hora, ID_Aerolinea, ID_Aeropuerto_Origen, ID_Aeropuerto_Destino) VALUES
(8, '2023-04-25', '17:00', 2, 2, 1);
INSERT INTO Vuelos (ID_Vuelos, Fecha, Hora, ID_Aerolinea, ID_Aeropuerto_Origen, ID_Aeropuerto_Destino) VALUES
(9, '2023-04-26', '22:15', 3, 1, 3);
INSERT INTO Vuelos (ID_Vuelos, Fecha, Hora, ID_Aerolinea, ID_Aeropuerto_Origen, ID_Aeropuerto_Destino) VALUES
(10, '2023-04-27', '06:30', 1, 2, 1);
INSERT INTO Vuelos (ID_Vuelos, Fecha, Hora, ID_Aerolinea, ID_Aeropuerto_Origen, ID_Aeropuerto_Destino) VALUES
(11, '2023-04-28', '14:30', 2, 3, 2);
INSERT INTO Vuelos (ID_Vuelos, Fecha, Hora, ID_Aerolinea, ID_Aeropuerto_Origen, ID_Aeropuerto_Destino) VALUES
(12, '2023-04-29', '09:00', 3, 1, 3);
INSERT INTO Vuelos (ID_Vuelos, Fecha, Hora, ID_Aerolinea, ID_Aeropuerto_Origen, ID_Aeropuerto_Destino) VALUES
(13, '2023-04-30', '20:15', 1, 2, 1);
INSERT INTO Vuelos (ID_Vuelos, Fecha, Hora, ID_Aerolinea, ID_Aeropuerto_Origen, ID_Aeropuerto_Destino) VALUES
(14, '2023-05-01', '13:45', 2, 3, 2);
INSERT INTO Vuelos (ID_Vuelos, Fecha, Hora, ID_Aerolinea, ID_Aeropuerto_Origen, ID_Aeropuerto_Destino) VALUES
(15, '2023-05-02', '16:20', 3, 1, 3);
INSERT INTO Vuelos (ID_Vuelos, Fecha, Hora, ID_Aerolinea, ID_Aeropuerto_Origen, ID_Aeropuerto_Destino) VALUES
(16, '2023-05-03', '08:15', 1, 3, 2);
INSERT INTO Vuelos (ID_Vuelos, Fecha, Hora, ID_Aerolinea, ID_Aeropuerto_Origen, ID_Aeropuerto_Destino) VALUES
(17, '2023-05-04', '11:30', 2, 2, 1);
INSERT INTO Vuelos (ID_Vuelos, Fecha, Hora, ID_Aerolinea, ID_Aeropuerto_Origen, ID_Aeropuerto_Destino) VALUES
(18, '2023-05-05', '17:00', 3, 1, 3);
INSERT INTO Vuelos (ID_Vuelos, Fecha, Hora, ID_Aerolinea, ID_Aeropuerto_Origen, ID_Aeropuerto_Destino) VALUES
(19, '2023-05-06', '22:15', 1, 2, 1);
INSERT INTO Vuelos (ID_Vuelos, Fecha, Hora, ID_Aerolinea, ID_Aeropuerto_Origen, ID_Aeropuerto_Destino) VALUES
(20, '2023-05-07', '06:30', 2, 3, 2);