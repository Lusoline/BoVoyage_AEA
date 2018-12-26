USE [master]
GO

/*==================================================================================================================================================== */
/****** Object:  Database [BOVOYAGE_AEA]    Script De la DATABASE ******/
/*==================================================================================================================================================== */

CREATE DATABASE [BOVOYAGE_AEA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BOVOYAGE_AEA', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\BOVOYAGE_AEA.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BOVOYAGE_AEA_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\BOVOYAGE_AEA_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

USE [BOVOYAGE_AEA]
GO

/*==================================================================================================================================================== */
/****** Object:  Table [dbo].[Continent]    Script De la table CONTINENT ******/
/*==================================================================================================================================================== */

CREATE TABLE [dbo].[Continent](
	[ContinentID] [bigint] IDENTITY(1,1) NOT NULL,
	[LibelleContinent] [nvarchar](50) NOT NULL,        /****** PEUT ETRE ON PEUT METTRE NVARCHAR 20 ******/
 CONSTRAINT [PK_Continent] PRIMARY KEY CLUSTERED 
(
	[ContinentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [BOVOYAGE_AEA]
GO

/*==================================================================================================================================================== */
/****** Object:  Table [dbo].[Pays]    Script De la table PAYS ******/
/*==================================================================================================================================================== */

CREATE TABLE [dbo].[Pays](
	[PaysID] [bigint] IDENTITY(1,1) NOT NULL,
	[NomP] [nvarchar](50) NULL,							/****** PEUT ETRE ON PEUT METTRE NVARCHAR 20 ******/
	[ContinentID] [bigint] NOT NULL,
 CONSTRAINT [PK_Pays] PRIMARY KEY CLUSTERED 
(
	[PaysID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Pays]  WITH CHECK ADD  CONSTRAINT [FK_Pays_Continent] FOREIGN KEY([ContinentID])
REFERENCES [dbo].[Continent] ([ContinentID])
GO

ALTER TABLE [dbo].[Pays] CHECK CONSTRAINT [FK_Pays_Continent]
GO

USE [BOVOYAGE_AEA]
GO

/*==================================================================================================================================================== */
/****** Object:  Table [dbo].[Region]    Script De la table REGION ******/
/*==================================================================================================================================================== */

CREATE TABLE [dbo].[Region](
	[RegionID] [bigint] IDENTITY(1,1) NOT NULL,
	[NomR] [nvarchar](20) NULL,
	[PaysID] [bigint] NOT NULL,
 CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED 
(
	[RegionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Region]  WITH CHECK ADD  CONSTRAINT [FK_Region_Pays] FOREIGN KEY([PaysID])
REFERENCES [dbo].[Pays] ([PaysID])
GO

ALTER TABLE [dbo].[Region] CHECK CONSTRAINT [FK_Region_Pays]
GO

USE [BOVOYAGE_AEA]
GO

/*==================================================================================================================================================== */
/****** Object:  Table [dbo].[Voyage]    Script De la table VOYAGE ******/
/*==================================================================================================================================================== */

CREATE TABLE [dbo].[Voyage](
	[VoyageID] [bigint] IDENTITY(1,1) NOT NULL,
	[LibelleVoyage] [nvarchar](50) NULL,
	[DescriptifVoyage] [nvarchar](200) NULL,            /****** ATTENTION SI ON REMPLACE 200 PAR MAX il faut rajouter TEXTIMAGE_ON [PRIMARY] ******/   
	[DateDepartVoyage] [date] NOT NULL,					/****** [datetime2](7) NULL, [date] NOT NULL ******/
	[DateRetourVoyage] [date] NOT NULL,                 /****** ATTENTION CE CHAMPS N'A PAS ETE VALIDE  ????******/
	[DisponibiliteVoyage] [bigint] NULL,                /****** ATTENTION CE CHAMPS N'A PAS ETE VALIDE Bool ou bigint ????******/
	[PrixVoyage] [float] NULL,							/****** ATTENTION CE CHAMPS N'A PAS ETE VALIDE ******/
	[RegionID] [bigint] NOT NULL,
 CONSTRAINT [PK_Voyage] PRIMARY KEY CLUSTERED 
(
	[VoyageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] --TEXTIMAGE_ON [PRIMARY]  --Voir commentaire plus haut
GO

ALTER TABLE [dbo].[Voyage]  WITH CHECK ADD  CONSTRAINT [FK_Voyage_Region] FOREIGN KEY([RegionID])
REFERENCES [dbo].[Region] ([RegionID])
GO

ALTER TABLE [dbo].[Voyage] CHECK CONSTRAINT [FK_Voyage_Region]
GO

USE [BOVOYAGE_AEA]
GO

/*==================================================================================================================================================== */
/****** Object:  Table [dbo].[Client]    Script De la table CLIENT ******/
/*==================================================================================================================================================== */

CREATE TABLE [dbo].[Client](
	[ClientID] [bigint] IDENTITY(1,1) NOT NULL,
	[CiviliteClient] [nvarchar](10) NOT NULL,								
	[NomClient] [nvarchar](50) NOT NULL,
	[PrenomClient] [nvarchar](50) NOT NULL,
	[DateNaissanceClient] [date] NOT NULL,
	[EmailClient] [nvarchar](50) NOT NULL,
	[TelephoneClient] [int] NOT NULL,
	[VilleClient] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [BOVOYAGE_AEA]
GO

/*==================================================================================================================================================== */
/****** Object:  Table [dbo].[CarteBancaire]    Script De la table CARTE BANCAIRE ******/
/*==================================================================================================================================================== */

CREATE TABLE [dbo].[CarteBancaire](
	[CarteBancaireID] [bigint] IDENTITY(1,1) NOT NULL,
	[NomCB] [nvarchar](50) NOT NULL,
	[NumCB] [int] NOT NULL,
	[DateExpCB] [date] NOT NULL,
	[CryptoCB] [char](4) NOT NULL,						/****** [char](4), [nvarchar](4) NOT NULL ******/
 CONSTRAINT [PK_CarteBancaire] PRIMARY KEY CLUSTERED 
(
	[CarteBancaireID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [BOVOYAGE_AEA]
GO

/*==================================================================================================================================================== */
/****** Object:  Table [dbo].[Dossier]    Script De la table DOSSIER ******/
/*==================================================================================================================================================== */

CREATE TABLE [dbo].[Dossier](
	[DossierID] [bigint] IDENTITY(1,1) NOT NULL,
	[NbVoyageurDossier] [int] NOT NULL,
	[NumCB] [int] NOT NULL,						/****** [char](16) n'a pas été choisi par l'equipe ******/
	[EmailClient] [nvarchar](50) NOT NULL,      /****** champs obligatoire pour la dependance des tables ******/
	[VoyageID] [bigint] NULL,
	[CarteBancaireID] [bigint] NULL,
	[ClientID] [bigint] NULL,
 CONSTRAINT [PK_Dossier] PRIMARY KEY CLUSTERED 
(
	[DossierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Dossier]  WITH CHECK ADD  CONSTRAINT [FK_Dossier_CarteBancaire] FOREIGN KEY([CarteBancaireID])
REFERENCES [dbo].[CarteBancaire] ([CarteBancaireID])
GO

ALTER TABLE [dbo].[Dossier] CHECK CONSTRAINT [FK_Dossier_CarteBancaire]
GO

ALTER TABLE [dbo].[Dossier]  WITH CHECK ADD  CONSTRAINT [FK_Dossier_Client] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Client] ([ClientID])
GO

ALTER TABLE [dbo].[Dossier] CHECK CONSTRAINT [FK_Dossier_Client]
GO

ALTER TABLE [dbo].[Dossier]  WITH CHECK ADD  CONSTRAINT [FK_Dossier_Voyage] FOREIGN KEY([VoyageID])
REFERENCES [dbo].[Voyage] ([VoyageID])
GO

ALTER TABLE [dbo].[Dossier] CHECK CONSTRAINT [FK_Dossier_Voyage]
GO

USE [BOVOYAGE_AEA]
GO

/*==================================================================================================================================================== */
/****** Object:  Table [dbo].[Voyageur]    Script De la table VOYAGEUR ******/
/*==================================================================================================================================================== */

CREATE TABLE [dbo].[Voyageur](
	[VoyageurID] [bigint] IDENTITY(1,1) NOT NULL,
	[NomVoyageur] [nvarchar](50) NOT NULL,
	[PrenomVoyageur] [nvarchar](50) NOT NULL,
	[DateNaissanceVoyageur] [date] NOT NULL,
	[DossierID] [bigint] NOT NULL,
 CONSTRAINT [PK_Voyageur] PRIMARY KEY CLUSTERED 
(
	[VoyageurID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Voyageur]  WITH CHECK ADD  CONSTRAINT [FK_Voyageur_Dossier] FOREIGN KEY([DossierID])
REFERENCES [dbo].[Dossier] ([DossierID])
GO

ALTER TABLE [dbo].[Voyageur] CHECK CONSTRAINT [FK_Voyageur_Dossier]
GO
/*==================================================================================================================================================== */
/****** Object:  Table [dbo].[Campagne]    Script De la table CAMPAGNE ******/
/*==================================================================================================================================================== */

CREATE TABLE [dbo].[Campagne](
	[CampagneID] [bigint] IDENTITY(1,1) NOT NULL,
	[LibelleCampagne] [nvarchar](50) NULL,
	[DateDebutCampagne] [date] NOT NULL,					/****** [datetime2](7) NULL, [date] NOT NULL ******/
	[DateFinCampagne] [date] NOT NULL,                  /****** ATTENTION CE CHAMPS N'A PAS ETE VALIDE  ????******/
	[DescriptifCampagne] [nvarchar](200) NULL,       
 CONSTRAINT [PK_Campagne] PRIMARY KEY CLUSTERED 
(
	[CampagneID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [BOVOYAGE_AEA]
GO

/*==================================================================================================================================================== */
/****** Object:  Table [dbo].[CampagneClient]    Script De la table CAMPAGNE-CLIENT ******/
/*==================================================================================================================================================== */

CREATE TABLE [dbo].[CampagneClient](
	[CampagneClientID] [bigint] IDENTITY(1,1) NOT NULL,
	[CampagneID] [bigint] NOT NULL,
	[ClientID] [bigint] NOT NULL,
 CONSTRAINT [PK_CampagneClient] PRIMARY KEY CLUSTERED 
(
	[CampagneClientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[CampagneClient]  WITH CHECK ADD  CONSTRAINT [FK_CampagneClient_Campagne] FOREIGN KEY([CampagneID])
REFERENCES [dbo].[Campagne] ([CampagneID])
GO

ALTER TABLE [dbo].[CampagneClient] CHECK CONSTRAINT [FK_CampagneClient_Campagne]
GO

ALTER TABLE [dbo].[CampagneClient] WITH CHECK ADD  CONSTRAINT [FK_CampagneClient_Client] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Client] ([ClientID])
GO

ALTER TABLE [dbo].[CampagneClient] CHECK CONSTRAINT [FK_CampagneClient_Client]
GO

USE [BOVOYAGE_AEA]
GO


/*==================================================================================================================================================== */
/****** Object:  PROCEDURES STOCKEES ******/
/*==================================================================================================================================================== */
/*==================================================================================================================================================== */
/****** Object:  PROCEDURE STOCKEE LISTE DES CONTINENTS ******/
/*==================================================================================================================================================== */


CREATE PROC GetListeContinents
AS
-- Liste des continents
SELECT
	c.ContinentID, c.LibelleContinent
from 
	Continent c 
Go

/*==================================================================================================================================================== */
/****** Object:  PROCEDURE STOCKEE LISTE DES PAYS ******/
/*==================================================================================================================================================== */

CREATE PROC GetListePays(@choixContinentID int = NULL)               /* Pour le moment on doit rentrer un id en parametre, todo optinisera plus tard*/
AS 
-- Liste des Pays en fonction du choix de continent
SELECT
	p.*   --p.PaysID, p.PaysLibellé
FROM
	Pays p
	inner join Continent c on p.ContinentID = c.ContinentID
WHERE 
	@choixContinentID = c.ContinentID
GO

/*==================================================================================================================================================== */
/****** Object:  PROCEDURE STOCKEE LISTE DES REGIONS ******/
/*==================================================================================================================================================== */

CREATE PROC GetListeRegion(@choixPaysID int, @choixContinentID int)       /* Pour le moment on doit rentrer un id en parametre, todo optinisera plus tard*/
AS 
-- Liste des régions en fonction du pays choisi
SELECT
	r.*-- r.RegionID, r.LibelleRegion
FROM
	Region r
	inner join Pays p on p.PaysID = r.PaysID
	inner join Continent c on c.ContinentID = p.ContinentID
WHERE 
	(c.ContinentID = @choixContinentID) AND (@choixPaysID = 0 OR p.PaysID = @choixPaysID )
GO



/*==================================================================================================================================================== */
/****** Object:  PROCEDURE STOCKEE LISTE DES VOYAGES ******/
/*==================================================================================================================================================== */


CREATE PROC GetListeVoyage(@choixContinentID int, @choixPaysID int, @choixRegionID int)
AS 
-- Liste des voyages en fonction de la région choisie.
if @choixPaysID = 0 set @choixRegionID=0
SELECT
			v.*--	v.VoyageID, v.LibelleVoyage, v.DescriptionV
FROM
	Voyage v
	inner join Region r on r.RegionID = v.RegionID
	inner join Pays p on p.PaysID = r.PaysID
	inner join Continent c on c.ContinentID = p.ContinentID
WHERE	
	(@choixRegionID = 0  OR @choixRegionID = r.RegionID ) AND (@choixPaysID = 0 OR @choixPaysID = p.PaysID ) AND (@choixContinentID = c.ContinentID)

GO



/*==================================================================================================================================================== */
/****** FIN DE SCRIPT DATABASE - N'OUBLIER PAS DE LANCER LE SCRIPT BOVOYAGE_AEA_DATA.sql ******/
/*==================================================================================================================================================== */


















/*==================================================================================================================================================== */
/****** FIN DE SCRIPT DATABASE - N'OUBLIER PAS DE LANCER LE SCRIPT DATA.sql ******/
/*==================================================================================================================================================== */

