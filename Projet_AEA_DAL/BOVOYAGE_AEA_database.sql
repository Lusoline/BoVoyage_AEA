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

/*==================================================================================================================================================== */
/****** Object:  Table [dbo].[Continent]    Script De la table CONTINENT ******/
/*==================================================================================================================================================== */

USE [BOVOYAGE_AEA]
GO

CREATE TABLE [dbo].[Continent](
	[ContinentID] [bigint] IDENTITY(1,1) NOT NULL,						     /*      PEUT ETRE ON PEUT METTRE  int             */
	[LibelleContinent] [nvarchar](50) NOT NULL,								 /****** PEUT ETRE ON PEUT METTRE NVARCHAR 20 ******/
 CONSTRAINT [PK_Continent] PRIMARY KEY CLUSTERED 
(
	[ContinentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/*==================================================================================================================================================== */
/****** Object:  Table [dbo].[Pays]    Script De la table PAYS ******/
/*==================================================================================================================================================== */

USE [BOVOYAGE_AEA]
GO

CREATE TABLE [dbo].[Pays](
	[PaysID] [bigint] IDENTITY(1,1) NOT NULL,								/*      PEUT ETRE ON PEUT METTRE  int             */
	[LibellePays] [nvarchar](50) NULL,										/****** PEUT ETRE ON PEUT METTRE NVARCHAR 20 ******/
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

/*==================================================================================================================================================== */
/****** Object:  Table [dbo].[Region]    Script De la table REGION ******/
/*==================================================================================================================================================== */

USE [BOVOYAGE_AEA]
GO

CREATE TABLE [dbo].[Region](
	[RegionID] [bigint] IDENTITY(1,1) NOT NULL,								 /*      PEUT ETRE ON PEUT METTRE  int             */		
	[LibelleRegion] [nvarchar](50) NULL,									 /****** PEUT ETRE ON PEUT METTRE NVARCHAR 20 ******/
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

/*==================================================================================================================================================== */
/****** Object:  Table [dbo].[Voyage]    Script De la table VOYAGE ******/
/*==================================================================================================================================================== */

USE [BOVOYAGE_AEA]
GO

CREATE TABLE [dbo].[Voyage](
	[VoyageID] [bigint] IDENTITY(1,1) NOT NULL,
	[LibelleVoyage] [nvarchar](50) NULL,
	[DescriptifVoyage] [nvarchar](200) NULL,            /****** ATTENTION SI ON REMPLACE 200 PAR MAX il faut rajouter TEXTIMAGE_ON [PRIMARY] ******/   
	[DateDepartVoyage] [date] NOT NULL,					/******     [datetime2](7) NULL, [date] NOT NULL ******/
	[DateRetourVoyage] [date] NOT NULL,                 
	[DisponibiliteVoyage] [bigint] NULL,                /******                  Bool , bigint           ******/
	[PrixVoyage] [float] NULL,							/****** ATTENTION CE CHAMPS N'A PAS ETE VALIDE   ******/
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

/*==================================================================================================================================================== */
/****** Object:  Table [dbo].[Client]    Script De la table CLIENT ******/
/*==================================================================================================================================================== */

USE [BOVOYAGE_AEA]
GO

CREATE TABLE [dbo].[Client](
	[ClientID] [bigint] IDENTITY(1,1) NOT NULL,
	[CiviliteClient] [nvarchar](10) NOT NULL,								
	[NomClient] [nvarchar](50) NOT NULL,
	[PrenomClient] [nvarchar](50) NOT NULL,
	[DateNaissanceClient] [date] NOT NULL,
	[EmailClient] [nvarchar](50) NOT NULL,
	[TelephoneClient] [nvarchar](20) NOT NULL,        /****** les numeros etrangers sont plus longs que 10 caracteres ******/
	[VilleClient] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/*==================================================================================================================================================== */
/****** Object:  Table [dbo].[CarteBancaire]    Script De la table CARTE BANCAIRE ******/
/*==================================================================================================================================================== */

USE [BOVOYAGE_AEA]
GO

CREATE TABLE [dbo].[CarteBancaire](
	[CarteBancaireID] [bigint] IDENTITY(1,1) NOT NULL,
	[NomCB] [nvarchar](50) NOT NULL,
	[NumCB] [nvarchar](16) NOT NULL,
	[DateExpCB] [date] NOT NULL,
	[CryptoCB] [nvarchar](3) NOT NULL,						
 CONSTRAINT [PK_CarteBancaire] PRIMARY KEY CLUSTERED 
(
	[CarteBancaireID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/*==================================================================================================================================================== */
/****** Object:  Table [dbo].[Dossier]    Script De la table DOSSIER ******/
/*==================================================================================================================================================== */

USE [BOVOYAGE_AEA]
GO

CREATE TABLE [dbo].[Dossier](
	[DossierID] [bigint] IDENTITY(1,1) NOT NULL,
	[NbVoyageurDossier] [int] NOT NULL,
	[NumCB] [nvarchar](16) NOT NULL,						
	[EmailClient] [nvarchar](50) NOT NULL,      /****** champs obligatoire pour la dependance des tables ******/
	[VoyageID] [bigint] NULL,
	[CarteBancaireID] [bigint] NULL,
	[MdPClient] [nvarchar](6) NOT NULL,			/***  Ce champs est genere au moment de la creation d'une ligne dossier ***/
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

/*==================================================================================================================================================== */
/****** Object:  Table [dbo].[Voyageur]    Script De la table VOYAGEUR ******/
/*==================================================================================================================================================== */

USE [BOVOYAGE_AEA]
GO

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

USE [BOVOYAGE_AEA]
GO

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

/*==================================================================================================================================================== */
/****** Object:  Table [dbo].[CampagneClient]    Script De la table CAMPAGNE-CLIENT ******/
/*==================================================================================================================================================== */

USE [BOVOYAGE_AEA]
GO

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

/*==================================================================================================================================================== */
/****** Object:  PROCEDURES STOCKEES                                                                                                              ******/
/*==================================================================================================================================================== */

/*==================================================================================================================================================== */
/****** Object:  PROCEDURE STOCKEE LISTE DES CONTINENTS                                                                                           ******/
/*==================================================================================================================================================== */
/****** Sans parametres:  La procedure retourne la LISTE DES CONTINENTS                                                                           ******/
/****** Avec parametres:                                                                                                                          ******/
/****** @ContinentID (entier): retourne la LISTE DES CONTINENTS dont l'indentifiant du continent est passe en parametre                           ******/
/****** @LibelleContinent(chaine de caractere):  retourne la LISTE DES CONTINENTS dont le nom du continent est passe en parametre			      ******/
/*==================================================================================================================================================== */

USE [BOVOYAGE_AEA]
GO

CREATE PROC [dbo].[GetListeContinents]
 @ContinentID bigint = 0,
 @LibelleContinent nvarchar(50) = NULL

AS
-- Liste des continents
SELECT
	* -- Retourne tous les champs : c.ContinentID, c.LibelleContinent
from 
	[dbo].[Continent] c 
	Where (@ContinentID = 0 OR @ContinentID = c.ContinentID) AND (@LibelleContinent is NULL OR @LibelleContinent = c.LibelleContinent)
GO

/*==================================================================================================================================================== */
/****** Object:  PROCEDURE STOCKEE LISTE DES PAYS                                                                                                 ******/
/*==================================================================================================================================================== */
/****** Sans parametres:  La procedure retourne la LISTE DES PAYS													                              ******/
/****** Avec parametres:                                                                                                                          ******/
/****** @ContinentID (entier): retourne la LISTE DES PAYS dont l'indentifiant du continent est passe en parametre	                              ******/																							  ******/
/****** @LibelleContinent(chaine de caractere):  retourne la LISTE DES PAYS dont le nom du continent est passe en parametre	                      ******/				
/****** @PaysID (entier): retourne la LISTE DES PAYS dont l'indentifiant du pays est passe en parametre	                                          ******/
/****** @LibellePays(chaine de caractere):  retourne la LISTE DES PAYS dont le nom du pays est passe en parametre	                              ******/	
/*==================================================================================================================================================== */

USE [BOVOYAGE_AEA]
GO

CREATE PROC GetListePays               
 @ContinentID bigint = 0,
 @LibelleContinent nvarchar(50) = NULL,
 @PaysID bigint = 0,
 @LibellePays nvarchar(50) = NULL

AS 
-- Liste des Pays
SELECT
	p.*   --p.PaysID, p.LibellePays
FROM
	Pays p
	inner join Continent c on p.ContinentID = c.ContinentID
WHERE 
	(@ContinentID = 0 OR @ContinentID = c.ContinentID ) AND (@LibelleContinent IS NULL OR @LibelleContinent = c.LibelleContinent)
AND (@PaysID = 0 OR @PaysID = p.PaysID ) AND (@LibellePays IS NULL OR @LibellePays = p.LibellePays )
GO

/*==================================================================================================================================================== */
/****** Object:  PROCEDURE STOCKEE LISTE DES REGIONS																							  ******/
/*==================================================================================================================================================== */
/****** Sans parametres:  La procedure retourne la LISTE DES REGIONS													                          ******/
/****** Avec parametres:                                                                                                                          ******/
/****** @ContinentID (entier): retourne la LISTE DES REGIONS dont l'indentifiant du continent est passe en parametre	                          ******/																							  ******/
/****** @LibelleContinent(chaine de caractere):  retourne la LISTE DES REGIONS dont le nom du continent est passe en parametre	                  ******/				
/****** @PaysID (entier): retourne la LISTE DES REGIONS dont l'indentifiant du pays est passe en parametre	                                      ******/
/****** @LibellePays(chaine de caractere):  retourne la LISTE DES REGIONS dont le nom du pays est passe en parametre	                          ******/
/****** @RegionID (entier): retourne la LISTE DES REGIONS dont l'indentifiant de la region est passe en parametre	                              ******/																							  ******/
/****** @LibelleRegion(chaine de caractere):  retourne la LISTE DES REGIONS dont le nom de la region est passe en parametre	                      ******/
/*==================================================================================================================================================== */

USE [BOVOYAGE_AEA]
GO

CREATE PROC GetListeRegion
 @ContinentID bigint = 0,
 @LibelleContinent nvarchar(50) = NULL,
 @PaysID bigint = 0,
 @LibellePays nvarchar(50) = NULL,
 @RegionID bigint = 0, 
 @LibelleRegion nvarchar(50) = NULL

AS 
-- Liste des regions
SELECT
	r.*-- r.RegionID, r.LibelleRegion
FROM
	Region r
	inner join Pays p on p.PaysID = r.PaysID
	inner join Continent c on c.ContinentID = p.ContinentID
WHERE 
	(@ContinentID = 0 OR @ContinentID = c.ContinentID) AND (@LibelleContinent IS NULL OR @LibelleContinent = c.LibelleContinent)
AND (@PaysID = 0 OR @PaysID = p.PaysID) AND (@LibellePays IS NULL OR @LibellePays = p.LibellePays)
AND (@RegionID = 0 OR @RegionID = r.RegionID ) AND (@LibelleRegion IS NULL OR @LibelleRegion = r.LibelleRegion)
GO

/*==================================================================================================================================================== */
/****** Object:  PROCEDURE STOCKEE LISTE DES VOYAGES                                                                                              ******/
/*==================================================================================================================================================== */
/****** Sans parametres:  La procedure retourne la LISTE DES VOYAGES													                          ******/
/****** Avec parametres:                                                                                                                          ******/
/****** @ContinentID (entier): retourne la LISTE DES VOYAGES dont l'indentifiant du continent est passe en parametre	                          ******/																							  ******/
/****** @LibelleContinent(chaine de caractere):  retourne la LISTE DES VOYAGES dont le nom du continent est passe en parametre	                  ******/				
/****** @PaysID (entier): retourne la LISTE DES VOYAGES dont l'indentifiant du pays est passe en parametre	                                      ******/
/****** @LibellePays(chaine de caractere):  retourne la LISTE DES VOYAGES dont le nom du pays est passe en parametre	                          ******/
/****** @RegionID (entier): retourne la LISTE DES VOYAGES dont l'indentifiant de la region est passe en parametre	                              ******/																							  ******/
/****** @LibelleRegion(chaine de caractere):  retourne la LISTE DES VOYAGES dont le nom de la region est passe en parametre	                      ******/
/****** @VoyageID (entier): retourne la LISTE DES VOYAGES dont l'indentifiant du voyage est passe en parametre	                                  ******/																							  ******/
/****** @LibelleVoyage(chaine de caractere):  retourne la LISTE DES VOYAGES dont le nom du voyage est passe en parametre	                      ******/
/*==================================================================================================================================================== */

USE [BOVOYAGE_AEA]
GO

CREATE PROC GetListeVoyage
 @ContinentID bigint = 0,								
 @LibelleContinent nvarchar(50) = NULL,
 @PaysID int = 0,
 @LibellePays nvarchar(50) = NULL,
 @RegionID int = 0, 
 @LibelleRegion nvarchar(50) = NULL,
 @VoyageID int = 0, 
 @LibelleVoyage nvarchar(50) = NULL

AS 
-- Liste des voyages
if @PaysID = 0 set @RegionID = 0

SELECT
			v.*--	v.VoyageID, v.LibelleVoyage, v.DescriptifVoyage,v.DateDepartVoyage,v.DateRetourVoyage,v.DisponibiliteVoyage,v.PrixVoyage
FROM
	Voyage v
	inner join Region r on r.RegionID = v.RegionID
	inner join Pays p on p.PaysID = r.PaysID
	inner join Continent c on c.ContinentID = p.ContinentID
WHERE	
	(@ContinentID = 0 OR @ContinentID = c.ContinentID) AND (@LibelleContinent IS NULL OR @LibelleContinent = c.LibelleContinent)
AND (@PaysID = 0 OR @PaysID = p.PaysID) AND (@LibellePays IS NULL OR @LibellePays = p.LibellePays)
AND (@RegionID = 0 OR @RegionID = r.RegionID ) AND (@LibelleRegion IS NULL OR @LibelleRegion = r.LibelleRegion)
AND (@VoyageID = 0 OR @VoyageID = v.VoyageID ) AND (@LibelleVoyage IS NULL OR @LibelleVoyage = v.LibelleVoyage)
GO

/*==================================================================================================================================================== */
/****** Object:  PROCEDURE STOCKEE LISTE DES CLIENTS ******/
/*==================================================================================================================================================== */
/****** Sans parametres:  La procedure retourne la LISTE DES CLIENTS													                          ******/
/****** Avec parametres:                                                                                                                          ******/
/****** @ClientID (entier): retourne la LISTE DES CLIENTS dont l'indentifiant du client est passe en parametre	                                  ******/																							  ******/
/****** @CiviliteClient(chaine de caractere):  retourne la LISTE DES CLIENTS dont la civilite du client est passe en parametre   Mr,Mlle,Mme      ******/				
/****** @NomClient (chaine de caractere): retourne la LISTE DES CLIENTS dont le nom est passe en parametre	                                      ******/
/****** @PrenomClient(chaine de caractere):  retourne la LISTE DES CLIENTS dont le prenom est passe en parametre	                              ******/
/****** @DateNaissanceClient (date): retourne la LISTE DES CLIENTS dont la date de naissance est passe en parametre AAAA-MM-JJ                    ******/																							  ******/
/****** @TelephoneClient(chaine de caractere):  retourne la LISTE DES CLIENTS dont le telephone est passe en parametre	                          ******/
/****** @VilleClient (chaine de caractere): retourne la LISTE DES CLIENTS dont la Ville est passe en parametre	                                  ******/																							  ******/
/*==================================================================================================================================================== */

USE [BOVOYAGE_AEA]
GO

CREATE PROC GetListeClient
	@ClientID bigint = 0 ,
	@CiviliteClient nvarchar(10) = NULL,								
	@NomClient nvarchar(50) = NULL,
	@PrenomClient nvarchar(50) = NULL,
	@DateNaissanceClient date = NULL,
	@TelephoneClient nvarchar(20) = NULL,        /****** les numeros etranger sont plus long que 10 caracteres ******/
	@VilleClient nvarchar(50) = NULL

AS 
-- Liste des clients
SELECT
			c.*--	c.ClientID, c.CiviliteClient, c.NomClient,c.PrenomClient,c.DateNaissanceClient,c.TelephoneClient,c.VilleClient
FROM
	Client c
WHERE	
	(@ClientID = 0 OR @ClientID = c.ClientID)
AND	(@CiviliteClient IS NULL OR @CiviliteClient = c.CiviliteClient)
AND	(@NomClient IS NULL OR @NomClient = c.NomClient)
AND	(@PrenomClient IS NULL OR @PrenomClient = c.PrenomClient)
AND	(@DateNaissanceClient IS NULL OR @DateNaissanceClient = c.DateNaissanceClient)
AND	(@TelephoneClient IS NULL OR @TelephoneClient = c.TelephoneClient)
AND	(@VilleClient IS NULL OR @VilleClient = c.VilleClient)
GO

/*==================================================================================================================================================== */
/****** Object:  PROCEDURE STOCKEE LISTE DES CAMPAGNES                                                                                            ******/
/*==================================================================================================================================================== */
/****** Sans parametres:  La procedure retourne la LISTE DES CAMPAGNES													                          ******/
/****** Avec parametres:                                                                                                                          ******/
/****** @CampagneID (entier): retourne la LISTE DES CAMPAGNES dont l'indentifiant de la Campagne est passe en parametre	                          ******/																							  ******/
/****** @LibelleCampagne(chaine de caractere):  retourne la LISTE DES CAMPAGNES dont le libelle de la Campagne est passe en parametre             ******/				
/****** @DateDebutCampagne (date): retourne la LISTE DES CAMPAGNES dont la date de debut de la Campagne est passe en parametre AAAA-MM-JJ         ******/
/****** @DateFinCampagne (date): retourne la LISTE DES CAMPAGNES dont la date de fin de la Campagne est passe en parametre AAAA-MM-JJ             ******/
/*==================================================================================================================================================== */

USE [BOVOYAGE_AEA]
GO

CREATE PROC GetListeCampagnes
	@CampagneID bigint = 0 ,
	@LibelleCampagne nvarchar(50) = NULL,
	@DateDebutCampagne date = NULL,					
	@DateFinCampagne date = NULL                  
AS 
-- Liste des campagnes
SELECT
			ca.*--	ca.@CampagneID, ca.@LibelleCampagne, ca.@DateDebutCampagne,ca.@DateFinCampagne,ca.DescriptifCampagne
FROM
	Campagne ca
WHERE	
	(@CampagneID = 0 OR @CampagneID = ca.CampagneID)
AND	(@LibelleCampagne IS NULL OR @LibelleCampagne = ca.LibelleCampagne)
AND	(@DateDebutCampagne IS NULL OR @DateDebutCampagne = ca.DateDebutCampagne)
AND	(@DateFinCampagne IS NULL OR @DateFinCampagne = ca.DateFinCampagne)
GO

/*==================================================================================================================================================== */
/****** FIN DE SCRIPT DATABASE - N'OUBLIER PAS DE LANCER LE SCRIPT BOVOYAGE_AEA_DATA.sql ******/
/*==================================================================================================================================================== */