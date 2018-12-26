use BOVOYAGE_AEA
go

/*Insert du contenu de la table Continent*/

insert into Continent (LibelleContinent) values ('Afrique')
insert into Continent (LibelleContinent) values ('Amérique')
insert into Continent (LibelleContinent) values ('Asie')
insert into Continent (LibelleContinent) values ('Europe')
insert into Continent (LibelleContinent) values ('Océanie')

/*Insert du contenu de la table Pays*/

Insert into Pays (NomP,ContinentID) values ('Afrique du sud',1)
Insert into Pays (NomP,ContinentID) values ('Ethiopie',1)
Insert into Pays (NomP,ContinentID) values ('USA',2)
Insert into Pays (NomP,ContinentID) values ('Bresil',2)

/*Insert du contenu de la table Région*/

insert into Region (NomR, PaysID) values ('Gauteng', 1)
insert into Region (NomR, PaysID) values ('Northern Cap', 1)
insert into Region (NomR, PaysID) values ('Afar', 2)
insert into Region (NomR, PaysID) values ('Addis Abeba', 2)
insert into Region (NomR, PaysID) values ('Michigan', 3)
insert into Region (NomR, PaysID) values ('Mississipi', 3)
insert into Region (NomR, PaysID) values ('Amazonas', 4)
insert into Region (NomR, PaysID) values ('Mato Grosso', 4)

/*Insert du contenu de la table Voyage*/

insert into Voyage (LibelleVoyage, DescriptifVoyage, DateDepartVoyage, DateRetourVoyage, DisponibiliteVoyage, PrixVoyage, RegionID) values ('Pretoria', 'Visitez le parc naturelde Pretoria et perdez vous dans les botanical garden.', CONVERT(datetime2(7),'30/12/2018',103), CONVERT(datetime2(7),'03/01/2019',103), 6, 1200, 1)
insert into Voyage (LibelleVoyage, DescriptifVoyage, DateDepartVoyage, DateRetourVoyage, DisponibiliteVoyage, PrixVoyage, RegionID) values ('Soweto', 'Découvrez le Musée Apartheid ainsi que le gold reef city.', CONVERT(datetime2(7),'24/01/2019',103),  CONVERT(datetime2(7),'31/01/2019',103), 12, 1050.50, 1)
insert into Voyage (LibelleVoyage, DescriptifVoyage, DateDepartVoyage, DateRetourVoyage, DisponibiliteVoyage, PrixVoyage, RegionID) values ('Désert de Kalahari', 'Participez à un de nos differents safari organisés et rencontrez les habitants bushmen.', CONVERT(datetime2(7),'02/04/2020',103), CONVERT(datetime2(7),'10/04/2020',103), 3, 2500, 2)
insert into Voyage (LibelleVoyage, DescriptifVoyage, DateDepartVoyage, DateRetourVoyage, DisponibiliteVoyage, PrixVoyage, RegionID) values ('Désert de Namib', 'Traversz le parc national namib et émerveillez vous devant les couleurs des plus hautes dunes du monde au levé du soleil.', CONVERT(datetime2(7),'23/05/2019',103), CONVERT(datetime2(7),'26/05/2019',103), 8, 2399, 2)
insert into Voyage (LibelleVoyage, DescriptifVoyage, DateDepartVoyage, DateRetourVoyage, DisponibiliteVoyage, PrixVoyage, RegionID) values ('Aura', 'Visitez un village typique et découvrez de la nourriture traditionnelle.', CONVERT(datetime2(7),'15/06/2019',103), CONVERT(datetime2(7),'26/06/2019',103), 5, 850, 3)
insert into Voyage (LibelleVoyage, DescriptifVoyage, DateDepartVoyage, DateRetourVoyage, DisponibiliteVoyage, PrixVoyage, RegionID) values ('Mille', 'Participez à nos activitées sportives au bords de la rivière Mille.', CONVERT(datetime2(7),'12/09/2021',103), CONVERT(datetime2(7),'12/10/2021',103), 9, 799, 3)
insert into Voyage (LibelleVoyage, DescriptifVoyage, DateDepartVoyage, DateRetourVoyage, DisponibiliteVoyage, PrixVoyage, RegionID) values ('Arada', 'Visitez addis-abeba et perdez vous dans le musée national Ethiopien.', CONVERT(datetime2(7),'20/10/2020',103), CONVERT(datetime2(7),'30/10/2020',103), 2, 1399, 4)
insert into Voyage (LibelleVoyage, DescriptifVoyage, DateDepartVoyage, DateRetourVoyage, DisponibiliteVoyage, PrixVoyage, RegionID) values ('Bole', 'Prélassez vos dans les spas de nos hotels haut de gamme et allez à la découverte du grand marché Africain de la ville.', CONVERT(datetime2(7),'22/09/2020',103), CONVERT(datetime2(7),'05/10/2020',103), 1, 1299.99, 4)
insert into Voyage (LibelleVoyage, DescriptifVoyage, DateDepartVoyage, DateRetourVoyage, DisponibiliteVoyage, PrixVoyage, RegionID) values ('Eagle', 'Découvrez la vie des minniers dans "les anciennes mines tour" et profitez du calme et de la tranquillité du monastère des bizntins catholiques.', CONVERT(datetime2(7),'05/11/2019',103), CONVERT(datetime2(7),'12/11/2019',103), 10, 4999, 5)
insert into Voyage (LibelleVoyage, DescriptifVoyage, DateDepartVoyage, DateRetourVoyage, DisponibiliteVoyage, PrixVoyage, RegionID) values ('Jackson', 'Visite du siège de naissance du partie republicain US, des usines de corsets et de la first baptist church.', CONVERT(datetime2(7),'31/12/2018',103), CONVERT(datetime2(7),'05/02/2019',103), 16, 3499, 5)
