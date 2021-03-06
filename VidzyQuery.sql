----------------------------------------
--    Creación de la Base de Datos    --
----------------------------------------
CREATE DATABASE Vidzy;

---------------------------------
--    Usar la Base de Datos    --
---------------------------------
USE Vidzy;

/*-----------------------------------------
Tabla de Genres
	-- Restricción de Nulabilidad
	-- Restricción de Chequeo de Valores
	-- Restricción de Unicidad
	-- Llave Primaria
------------------------------------------*/
CREATE TABLE Genres
(
  --Creamos la Restricción en la misma definicón de la Columna
  [Id] tinyint CONSTRAINT PK_Genres PRIMARY KEY CLUSTERED, 
  [Name] varchar(50) NOT NULL,							
);


/*-----------------------------------------
Tabla de Videos
	-- Llave Foránea
	   -- Acciones sobre la Relación
------------------------------------------*/
CREATE TABLE Videos
(
	[Id] int IDENTITY (1,1) PRIMARY KEY,
    [Name] varchar(255) NOT NULL,			
	[ReleaseDate] datetime NOT NULL,
	[GenresId] tinyint FOREIGN KEY REFERENCES Genres (Id)
                   ON UPDATE CASCADE
                   ON DELETE CASCADE,
	[Classification] tinyint NOT NULL CONSTRAINT [DF_Videos_Classification] DEFAULT (1),

);

/*-----------------------------------------
Tabla de Videos
	-- Llave Foránea
	   -- Acciones sobre la Relación
------------------------------------------*/
CREATE PROCEDURE [dbo].[spAddVideo]
(
	@Name varchar(255),
	@ReleaseDate datetime,
	@Genre varchar(255),
	@Classification tinyint
)
AS

	DECLARE @GenresId tinyint
	SET @GenresId = (SELECT Id FROM Genres WHERE Name = @Genre)

	INSERT INTO Videos (Name, ReleaseDate, GenresId, Classification)
	VALUES (@Name, @ReleaseDate, @Genre, @Classification)

/*-----------------------------------------
Insert Tabla de Genres
	-- Llave Foránea
	   -- Acciones sobre la Relación
------------------------------------------*/

INSERT INTO Genres  (Id, Name)
VALUES				(1, 'Comedy'), 
					(2, 'Action'), 
					(3, 'Horror'), 
					(4, 'Thriller'), 
					(5, 'Family'), 
					(6, 'Romance')




	--  ALTER TABLE [Vidzy].[dbo].[Videos]
--	ADD CONSTRAINT FK_Genres_Videos FOREIGN KEY (GenreId) 
--									REFERENCES [Vidzy].[dbo].[Genres] (id)
--										ON UPDATE CASCADE
--										ON DELETE SET NULL;
--Drop Table  VideoGenres;
