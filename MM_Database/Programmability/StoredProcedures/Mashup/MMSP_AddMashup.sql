-- A CORRIGER SUR LES AJOUTS DE NOMS DE PISTE !!!


CREATE PROCEDURE [dbo].[MMSP_AddMashup]
@Title NVARCHAR(80),
@PathFile NVARCHAR(384),
@Length INT , 
@ArtistNames NVARCHAR(100),
@TracksNames NVARCHAR(100),
@MasherName NVARCHAR(100),
@Tag NVARCHAR(100) OUTPUT
AS

BEGIN

-- Vérification des paramètres

IF @Title IS NULL
BEGIN
RAISERROR('Le titre du mashup est requis.', 16, 1)
RETURN
END

IF @PathFile IS NULL
BEGIN
RAISERROR('Le chemin accès au fichier du mashup est requis.', 16, 1)
RETURN
END

IF @Length IS NULL
BEGIN
RAISERROR('La durée du mashup est requise.', 16, 1)
RETURN
END

IF @ArtistNames IS NULL
BEGIN
RAISERROR('Les noms des artistes sont requis.', 16, 1)
RETURN
END

IF @TracksNames IS NULL
BEGIN
RAISERROR('Les titres des pistes sont requis.', 16, 1)
RETURN
END

IF @MasherName IS NULL
BEGIN
RAISERROR('Le nom du masher est requis.', 16, 1)
RETURN
END


-- Génération du tag

SET @Tag = '_A_' + REPLACE(@ArtistNames, ',', '_') + '_T_' + REPLACE(@TracksNames, ',', '_') + '_M_' + REPLACE(@MasherName, ',', '_')


-- Vérification de l'existence des titres de pistes

IF EXISTS (
SELECT COUNT(*)
FROM [dbo].[Track]
WHERE Title IN (@TracksNames)
)
BEGIN

-- Insertion du mashup dans la base de données

INSERT INTO [dbo].[Mashup]
(
Title,
PathFile,
Length,
ArtistsNames,
TracksNames,
MasherName,
Tag
)
VALUES
(
@Title,
@PathFile,
@Length,
@ArtistNames,
@TracksNames,
@MasherName,
@Tag
)

END

END
