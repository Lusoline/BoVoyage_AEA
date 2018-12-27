use BOVOYAGE_AEA
go

/*==================================================================================================================================================== */
/****** Object:  INSERT BOVOYAGE_AEA_DATA.SQL ******/
/*==================================================================================================================================================== */
/*==================================================================================================================================================== */
/****** Object:  INSERTIONS DE CONTENU DANS LA TABLE CONTINENT ******/
/*==================================================================================================================================================== */

insert into Continent (LibelleContinent) values ('Afrique')
insert into Continent (LibelleContinent) values ('Amérique')
insert into Continent (LibelleContinent) values ('Asie')
insert into Continent (LibelleContinent) values ('Europe')
insert into Continent (LibelleContinent) values ('Océanie')

/*==================================================================================================================================================== */
/****** Object:  INSERTIONS DE CONTENU DANS LA TABLE PAYS ******/
/*==================================================================================================================================================== */

Insert into Pays (LibellePays,ContinentID) values ('Afrique du sud',1)
Insert into Pays (LibellePays,ContinentID) values ('Ethiopie',1)
Insert into Pays (LibellePays,ContinentID) values ('USA',2)
Insert into Pays (LibellePays,ContinentID) values ('Bresil',2)
Insert into Pays (LibellePays,ContinentID) values ('Japon',3)
Insert into Pays (LibellePays,ContinentID) values ('Indonésie',3)
Insert into Pays (LibellePays,ContinentID) values ('Croatie',4)
Insert into Pays (LibellePays,ContinentID) values ('Italie',4)
Insert into Pays (LibellePays,ContinentID) values ('Australie',5)
Insert into Pays (LibellePays,ContinentID) values ('Nouvelle zélande',5)
go

/*==================================================================================================================================================== */
/****** Object:  INSERTIONS DE CONTENU DANS LA TABLE REGION ******/
/*==================================================================================================================================================== */

insert into Region (LibelleRegion, PaysID) values ('Gauteng', 1)
insert into Region (LibelleRegion, PaysID) values ('Northern Cap', 1)
insert into Region (LibelleRegion, PaysID) values ('Afar', 2)
insert into Region (LibelleRegion, PaysID) values ('Addis Abeba', 2)
insert into Region (LibelleRegion, PaysID) values ('Michigan', 3)
insert into Region (LibelleRegion, PaysID) values ('Mississipi', 3)
insert into Region (LibelleRegion, PaysID) values ('Amazonas', 4)
insert into Region (LibelleRegion, PaysID) values ('Mato Grosso', 4)
insert into Region (LibelleRegion, PaysID) values ('Hokkaido', 5)
insert into Region (LibelleRegion, PaysID) values ('Kyushu', 5)
insert into Region (LibelleRegion, PaysID) values ('Bali', 6)
insert into Region (LibelleRegion, PaysID) values ('Bornéo', 6)
insert into Region (LibelleRegion, PaysID) values ('Lika', 7)
insert into Region (LibelleRegion, PaysID) values ('Slavonie', 7)
insert into Region (LibelleRegion, PaysID) values ('Calabre', 8)
insert into Region (LibelleRegion, PaysID) values ('Latium', 8)
insert into Region (LibelleRegion, PaysID) values ('Tasmanie', 9)
insert into Region (LibelleRegion, PaysID) values ('Victoria', 9)
insert into Region (LibelleRegion, PaysID) values ('Aukland', 10)
insert into Region (LibelleRegion, PaysID) values ('Taranaki', 10)
go

/*==================================================================================================================================================== */
/****** Object:  INSERTIONS DE CONTENU DANS LA TABLE VOYAGE ******/
/*==================================================================================================================================================== */

insert into Voyage (LibelleVoyage, DescriptifVoyage, DateDepartVoyage, DateRetourVoyage, DisponibiliteVoyage, PrixVoyage, RegionID) values ('Pretoria'           , 'Visitez le parc naturelde Pretoria et perdez vous dans les botanical garden.'																	, CONVERT(datetime2(7),'30/12/2018',103), CONVERT(datetime2(7),'30/12/2019',103), 6, 1200	  , 1)      /* http://magictravelstours.com/wp-content/uploads/2017/01/P-2-800.jpg'	)																																																	*/																																																	
insert into Voyage (LibelleVoyage, DescriptifVoyage, DateDepartVoyage, DateRetourVoyage, DisponibiliteVoyage, PrixVoyage, RegionID) values ('Soweto'             , 'Découvrez le Musée Apartheid ainsi que le gold reef city.'																						, CONVERT(datetime2(7),'24/01/2019',103), CONVERT(datetime2(7),'24/01/2020',103), 12, 1050.50 , 1)      /* http://magictravelstours.com/wp-content/uploads/2017/01/S-2-800.jpg')																																																	*/
insert into Voyage (LibelleVoyage, DescriptifVoyage, DateDepartVoyage, DateRetourVoyage, DisponibiliteVoyage, PrixVoyage, RegionID) values ('Désert de Kalahari' , 'Participez à un de nos differents safari organisés et rencontrez les habitants bushmen.'														, CONVERT(datetime2(7),'02/04/2020',103), CONVERT(datetime2(7),'02/04/2021',103), 3, 2500     , 2)      /* https://www.exclusivetours.com/uploaded/product/main_img/800/titulka_5.jpg')																																																*/
insert into Voyage (LibelleVoyage, DescriptifVoyage, DateDepartVoyage, DateRetourVoyage, DisponibiliteVoyage, PrixVoyage, RegionID) values ('Désert de Namib'    , 'Traversez le parc national namib et émerveillez vous devant les couleurs des plus hautes dunes du monde au levé du soleil.'						, CONVERT(datetime2(7),'23/05/2019',103), CONVERT(datetime2(7),'23/05/2020',103), 8, 2399     , 2)      /* http://www.wallpaperdinding.co.id/image-product/img11909-1480992410.jpeg')																																																*/
insert into Voyage (LibelleVoyage, DescriptifVoyage, DateDepartVoyage, DateRetourVoyage, DisponibiliteVoyage, PrixVoyage, RegionID) values ('Aura'               , 'Visitez un village typique et découvrez de la nourriture traditionnelle.'																		, CONVERT(datetime2(7),'15/06/2019',103), CONVERT(datetime2(7),'15/06/2020',103), 5, 850      , 3)      /* https://cdn.static01.nicematin.com/media/npo/large/2018/05/maxmatinnews413067.jpg')																																														*/
insert into Voyage (LibelleVoyage, DescriptifVoyage, DateDepartVoyage, DateRetourVoyage, DisponibiliteVoyage, PrixVoyage, RegionID) values ('Mille'              , 'Participez à nos activitées sportives au bords de la rivière Mille.'																			, CONVERT(datetime2(7),'12/09/2021',103), CONVERT(datetime2(7),'12/09/2022',103), 9, 799      , 3)      /* https://www.52we.com/_resize/ck1z1/800%7C400%7Ccrop/etangs-vus-davion7.jpg')																																																*/
insert into Voyage (LibelleVoyage, DescriptifVoyage, DateDepartVoyage, DateRetourVoyage, DisponibiliteVoyage, PrixVoyage, RegionID) values ('Arada'              , 'Visitez addis-abeba et perdez vous dans le musée national Ethiopien.'																			, CONVERT(datetime2(7),'20/10/2020',103), CONVERT(datetime2(7),'20/10/2021',103), 2, 1399     , 4)      /* http://storage.news.nowmedia.co.za/medialibrary/Article/128126/Why-Africa-should-embrace-Botswana-s-conservation-model-800x400.jpg')																																		*/
insert into Voyage (LibelleVoyage, DescriptifVoyage, DateDepartVoyage, DateRetourVoyage, DisponibiliteVoyage, PrixVoyage, RegionID) values ('Bole'               , 'Prélassez vos dans les spas de nos hotels haut de gamme et allez à la découverte du grand marché Africain de la ville.'							, CONVERT(datetime2(7),'22/09/2020',103), CONVERT(datetime2(7),'22/09/2021',103), 1, 1299.99  , 4)      /* https://www.sporcle.com/blog/wp-content/uploads/2017/12/1-11.jpg')																																																		*/
insert into Voyage (LibelleVoyage, DescriptifVoyage, DateDepartVoyage, DateRetourVoyage, DisponibiliteVoyage, PrixVoyage, RegionID) values ('Eagle'              , 'Découvrez la vie des minniers dans "les anciennes mines tour" et profitez du calme et de la tranquillité du monastère des bizntins catholiques.', CONVERT(datetime2(7),'05/11/2019',103), CONVERT(datetime2(7),'05/11/2020',103), 10, 4999    , 5)      /* https://www.src.sk.ca/sites/default/files/styles/large_wide/public/image/gallery/Nicholson%202015-102.jpg?itok=J43H5MlE')																																				*/
insert into Voyage (LibelleVoyage, DescriptifVoyage, DateDepartVoyage, DateRetourVoyage, DisponibiliteVoyage, PrixVoyage, RegionID) values ('Jackson'            , 'Visite du siège de naissance du partie republicain US, des usines de corsets et de la first baptist church.'			                        , CONVERT(datetime2(7),'31/12/2018',103), CONVERT(datetime2(7),'31/12/2019',103), 16, 3499    , 5)      /* http://www.amwcontracting.com/wp-content/uploads/2016/03/jacksonville-2-e1466383236343.jpg?quality=100.3016041119501')																																					*/
insert into Voyage (LibelleVoyage, DescriptifVoyage, DateDepartVoyage, DateRetourVoyage, DisponibiliteVoyage, PrixVoyage, RegionID) values ('Oakland'            , 'Découvrez cossar state park et perdez vous dans la reserve de trout valley quail.'										                        , CONVERT(datetime2(7),'11/03/2019',103), CONVERT(datetime2(7),'11/03/2020',103), 25, 2660    , 6)      /* http://smartdealtrip.com/wp-content/uploads/2016/12/san-francisco-10jpg-4-800x400.jpg')																																													*/
insert into Voyage (LibelleVoyage, DescriptifVoyage, DateDepartVoyage, DateRetourVoyage, DisponibiliteVoyage, PrixVoyage, RegionID) values ('Walnut Grove'       , 'Visite des decors de la série la petite maison dans la prairie ainsi que des vastes plantations de coton.'                                      , CONVERT(datetime2(7),'16/02/2020',103), CONVERT(datetime2(7),'16/02/2021',103), 40, 2540    , 6)      /* https://inhabitat.com/inhabitots/wp-content/blogs.dir/24/files/2013/07/Little-House-dollhouse-800x400.jpg')																																								*/
insert into Voyage (LibelleVoyage, DescriptifVoyage, DateDepartVoyage, DateRetourVoyage, DisponibiliteVoyage, PrixVoyage, RegionID) values ('Borba'              , '(florianopolis)  Profitez des immenses plages de sable fin de joaquina beach, et participez à une initiation parapente.'                        , CONVERT(datetime2(7),'07/01/2022',103), CONVERT(datetime2(7),'07/01/2023',103), 30, 4000    , 7)      /* https://familytraveller.com/wp-content/uploads/2017/04/Playa-de-los-Cocedores-crop-1.jpg')																																												*/
insert into Voyage (LibelleVoyage, DescriptifVoyage, DateDepartVoyage, DateRetourVoyage, DisponibiliteVoyage, PrixVoyage, RegionID) values ('Coari'              , 'Emerveillez vous devant les chutes des gorges du diable et observez plus de 150 especes dont les toucans et les aras.'	                        , CONVERT(datetime2(7),'04/04/2021',103), CONVERT(datetime2(7),'04/04/2022',103), 15, 4299.99 , 7)      /* https://www.mamaisonsurledos.com/wp-content/uploads/bb-plugin/cache/iguazu-argentine-panorama.jpg')																																										*/
insert into Voyage (LibelleVoyage, DescriptifVoyage, DateDepartVoyage, DateRetourVoyage, DisponibiliteVoyage, PrixVoyage, RegionID) values ('Caceres'            , 'Visites des nombreux museums et cathedrales de la ville.'																                        , CONVERT(datetime2(7),'16/02/2019',103), CONVERT(datetime2(7),'16/02/2020',103), 8, 3399     , 8)      /* https://www.laguiadeviaje.com/wp-content/uploads/2014/12/Rue-de-la-Montagne-Bruselas-Qu%C3%A9-ver-800x400.jpg')																																							*/
insert into Voyage (LibelleVoyage, DescriptifVoyage, DateDepartVoyage, DateRetourVoyage, DisponibiliteVoyage, PrixVoyage, RegionID) values ('Sinop'              , 'Découvrez une architecture coloniale portugaise et le musée des arts deco.'												                        , CONVERT(datetime2(7),'13/12/2020',103), CONVERT(datetime2(7),'13/12/2021',103), 2, 2899.99  , 8)      /* http://zigadazuca.com.br/wp-content/uploads/2014/06/7001.jpg')																																																			*/
insert into Voyage (LibelleVoyage, DescriptifVoyage, DateDepartVoyage, DateRetourVoyage, DisponibiliteVoyage, PrixVoyage, RegionID) values ('Hiyama'             , 'Visite du yamato museum, nikokyo park et du hakka-ji temple.'															                        , CONVERT(datetime2(7),'26/08/2019',103), CONVERT(datetime2(7),'26/08/2020',103), 150, 6599   , 9)      /* http://www.ritztours.com//Upfile/Pic/Package6565175a-45d3-43f4-9c6f-d627a7c499f1.jpg')																																													*/
insert into Voyage (LibelleVoyage, DescriptifVoyage, DateDepartVoyage, DateRetourVoyage, DisponibiliteVoyage, PrixVoyage, RegionID) values ('Oshima'             , 'Goutez à nos delicieux mets traditionnels et participez au saké tour.'													                        , CONVERT(datetime2(7),'24/07/2020',103), CONVERT(datetime2(7),'24/07/2021',103), 15, 1500    , 9)      /* https://a0.cdn.japantravel.com/photo/36193-167116/800x400!/breakfast-with-ichiju-sansai-167116.jpg')																																										*/
insert into Voyage (LibelleVoyage, DescriptifVoyage, DateDepartVoyage, DateRetourVoyage, DisponibiliteVoyage, PrixVoyage, RegionID) values ('Fukuoka'            , 'Visite de sanctuaires, temples et de la hakata station (batiments architecturaux)'                                                              , CONVERT(datetime2(7),'10/10/2019',103), CONVERT(datetime2(7),'10/10/2020',103), 35, 1750    , 10)     /* http://www.whiteandluxure.com/images/Laos/Highlights-of-Laos.jpg')																																																		*/
insert into Voyage (LibelleVoyage, DescriptifVoyage, DateDepartVoyage, DateRetourVoyage, DisponibiliteVoyage, PrixVoyage, RegionID) values ('Nagasaki'           , 'Découvrez le musée de la bombe atomique et perdez vous dans les glover gardens.'                                                                , CONVERT(datetime2(7),'02/01/2023',103), CONVERT(datetime2(7),'02/01/2024',103), 13, 2850    , 10)     /* https://a2.cdn.japantravel.com/photo/1102-128106/800x400!/hiroshima-hiroshima-peace-memorial-museum-128106.jpg')																																							*/
insert into Voyage (LibelleVoyage, DescriptifVoyage, DateDepartVoyage, DateRetourVoyage, DisponibiliteVoyage, PrixVoyage, RegionID) values ('Ubud'               , 'Baignade, farniente, venez prendre un repos bien mérité dans ce cadre enchanteur'                                                               , CONVERT(datetime2(7),'30/11/2019',103), CONVERT(datetime2(7),'30/11/2020',103), 22, 4300    , 11)     /* https://indonesia.tripcanvas.co/wp-content/uploads/2016/12/1-1-sofitel-overview-collage.jpg')																																											*/
insert into Voyage (LibelleVoyage, DescriptifVoyage, DateDepartVoyage, DateRetourVoyage, DisponibiliteVoyage, PrixVoyage, RegionID) values ('Bangli'             , 'La beauté du lac vous ravira'										                                                                            , CONVERT(datetime2(7),'29/01/2022',103), CONVERT(datetime2(7),'29/01/2023',103), 2, 3699     , 11)     /* https://talisman-asia.com/wp-content/uploads/2016/12/kintamani.jpg')																																																		*/
insert into Voyage (LibelleVoyage, DescriptifVoyage, DateDepartVoyage, DateRetourVoyage, DisponibiliteVoyage, PrixVoyage, RegionID) values ('Kalimantan'         , 'Prenez le temps de visiter les nombreux villages historiques'                                                                                   , CONVERT(datetime2(7),'05/06/2019',103), CONVERT(datetime2(7),'05/06/2020',103), 167, 6660   , 12)     /* https://unmondeautrement.com/img/indonesie-8.jpg')																																																						*/
insert into Voyage (LibelleVoyage, DescriptifVoyage, DateDepartVoyage, DateRetourVoyage, DisponibiliteVoyage, PrixVoyage, RegionID) values ('Banjarmasin'        , 'Une capitale dynamique où sortir le soir sera un plaisir'                                                                                       , CONVERT(datetime2(7),'17/09/2021',103), CONVERT(datetime2(7),'17/09/2022',103), 253, 5900   , 12)     /* https://mrdigitalnomad.com/wp-content/uploads/2017/11/best-cities-for-digital-nomads-1-ho-chi-minh-city-vietnam.jpg')																																					*/
insert into Voyage (LibelleVoyage, DescriptifVoyage, DateDepartVoyage, DateRetourVoyage, DisponibiliteVoyage, PrixVoyage, RegionID) values ('Gospic'             , 'De magnifiques montagnes à perte de vue'																										, CONVERT(datetime2(7),'12/04/2020',103), CONVERT(datetime2(7),'12/04/2021',103), 15, 1500    , 13)     /* http://www.hotelstaralika.hr/wp-content/uploads/2017/08/paklenica-01.jpg')																																																*/
insert into Voyage (LibelleVoyage, DescriptifVoyage, DateDepartVoyage, DateRetourVoyage, DisponibiliteVoyage, PrixVoyage, RegionID) values ('Senj'               , 'Jouez dans la neige avec vos enfants pour un week-end reposant en famille'																		, CONVERT(datetime2(7),'10/10/2021',103), CONVERT(datetime2(7),'10/10/2022',103), 3, 1000     , 13)     /* https://gezimanya.com/sites/default/files/styles/800x600_height/public/1_239.jpg?itok=vR1h4gJk')																																											*/
insert into Voyage (LibelleVoyage, DescriptifVoyage, DateDepartVoyage, DateRetourVoyage, DisponibiliteVoyage, PrixVoyage, RegionID) values ('Djakovo'            , 'Emmenez vos amis en randonnée dans cette magnifique vallée nichée au creux de la montagne'														, CONVERT(datetime2(7),'22/01/2022',103), CONVERT(datetime2(7),'22/01/2023',103), 90, 2300    , 14)     /* https://www.hrt.hr/media/tt_news/118765_d6b3ca862bc338df8b202.jpg')																																																		*/
insert into Voyage (LibelleVoyage, DescriptifVoyage, DateDepartVoyage, DateRetourVoyage, DisponibiliteVoyage, PrixVoyage, RegionID) values ('Virovitica'         , 'Le sentier didactique dans le Bilogora autour de Virovitica est en forme de coeur'															    , CONVERT(datetime2(7),'19/12/2023',103), CONVERT(datetime2(7),'19/12/2024',103), 54, 1900    , 14)     /* http://adria-online.com/wp-content/uploads/2016/10/croatia-adriatic-hvar-panorama.jpg')																																													*/
insert into Voyage (LibelleVoyage, DescriptifVoyage, DateDepartVoyage, DateRetourVoyage, DisponibiliteVoyage, PrixVoyage, RegionID) values ('Tropea'             , 'Les oranges du coin sont à tomber !'																											, CONVERT(datetime2(7),'09/10/2019',103), CONVERT(datetime2(7),'09/10/2020',103), 4, 650      , 15)     /* http://www.csttropea.it/wp-content/uploads/2015/02/Amantea-2.jpg')																																																		*/
insert into Voyage (LibelleVoyage, DescriptifVoyage, DateDepartVoyage, DateRetourVoyage, DisponibiliteVoyage, PrixVoyage, RegionID) values ('Amantea'            , 'Vous souhaiterez y vivre pour toujours'																											, CONVERT(datetime2(7),'13/05/2024',103), CONVERT(datetime2(7),'13/05/2025',103), 33, 880     , 15)     /* http://www.italymagazine.com/sites/default/files/le_castella_crotone_calabria_-_italy.jpg.800x400_q85_crop-smart.jpg')																																					*/
insert into Voyage (LibelleVoyage, DescriptifVoyage, DateDepartVoyage, DateRetourVoyage, DisponibiliteVoyage, PrixVoyage, RegionID) values ('Rome'               , 'Venez profiter du Colisée'																														, CONVERT(datetime2(7),'25/07/2020',103), CONVERT(datetime2(7),'25/07/2021',103), 86, 450     , 16)     /* https://www.vacansoleil.fr/media/filer_public_thumbnails/filer_public/0c/89/0c8972be-80bb-4b75-94ef-9f705f805c47/mediabox_019_rome_angel-bridge_r0020971.jpg__800x400_q85_crop_subject_location-mediabox_019_Rome_angel-bridge_R0020971.jpg_subsampling-2_upscale.jpg')	*/
insert into Voyage (LibelleVoyage, DescriptifVoyage, DateDepartVoyage, DateRetourVoyage, DisponibiliteVoyage, PrixVoyage, RegionID) values ('Ladispoli'          , 'Dégustez une bonne pizza préparée par la mamma'																									, CONVERT(datetime2(7),'28/08/2021',103), CONVERT(datetime2(7),'28/08/2022',103), 15, 999     , 16)     /* https://www.pesquisaitaliana.com.br/wp-content/uploads/2017/05/bormida-na-it%C3%A1lia-imagem-principal-800x400.jpg')																																						*/
insert into Voyage (LibelleVoyage, DescriptifVoyage, DateDepartVoyage, DateRetourVoyage, DisponibiliteVoyage, PrixVoyage, RegionID) values ('Hobart'             , 'Visitez leurs fameuses cascades'																												, CONVERT(datetime2(7),'11/11/2022',103), CONVERT(datetime2(7),'11/11/2023',103), 4, 2600     , 17)     /* https://www.campervanfinder.com.au/wp-content/uploads/2017/06/Litchfield-National-Park.jpg')																																												*/
insert into Voyage (LibelleVoyage, DescriptifVoyage, DateDepartVoyage, DateRetourVoyage, DisponibiliteVoyage, PrixVoyage, RegionID) values ('Clarence'           , 'Une ville historique, parfaite pour revivre les grandes batailles'																				, CONVERT(datetime2(7),'01/03/2020',103), CONVERT(datetime2(7),'01/03/2021',103), 8, 3299.99  , 17)     /* http://www.hostelsclub-blog.com/wp-content/uploads/2015/08/Screenshot_21.jpg')																																															*/
insert into Voyage (LibelleVoyage, DescriptifVoyage, DateDepartVoyage, DateRetourVoyage, DisponibiliteVoyage, PrixVoyage, RegionID) values ('Melbourne'          , 'Jeunes actifs, venez décompresser dans les nombreuses boites de nuit'																			, CONVERT(datetime2(7),'14/10/2019',103), CONVERT(datetime2(7),'14/10/2020',103), 1, 750      , 18)     /* https://www.ozexperience.com/media/104075/yarra-river-dec-blog.jpg?crop=0.0000000000000001263187085796,0.031599229287090566,0,0.17842003853564531&cropmode=percentage&width=800&height=400&rnd=131254189350000000')														*/
insert into Voyage (LibelleVoyage, DescriptifVoyage, DateDepartVoyage, DateRetourVoyage, DisponibiliteVoyage, PrixVoyage, RegionID) values ('Geelong'            , 'Paysages enchanteurs et lacs parfaits pour la baignade'																							, CONVERT(datetime2(7),'08/07/2020',103), CONVERT(datetime2(7),'08/07/2021',103), 30, 2499    , 18)     /* http://www.lovetoescape.com/images/SPHeaders/9248609_holiday_the-Lake-District.jpg')																																														*/
insert into Voyage (LibelleVoyage, DescriptifVoyage, DateDepartVoyage, DateRetourVoyage, DisponibiliteVoyage, PrixVoyage, RegionID) values ('Rodney'             , 'Venez jouer au golf et battre votre record'																										, CONVERT(datetime2(7),'30/07/2019',103), CONVERT(datetime2(7),'30/07/2020',103), 22, 5300    , 19)     /* http://www.cotenordmag.com/wp-content/uploads/2015/07/Anahita_Golf_Course1.jpg')																																															*/
insert into Voyage (LibelleVoyage, DescriptifVoyage, DateDepartVoyage, DateRetourVoyage, DisponibiliteVoyage, PrixVoyage, RegionID) values ('Franklin'           , 'Un deux trois nous irons au bois'																												, CONVERT(datetime2(7),'31/03/2020',103), CONVERT(datetime2(7),'31/03/2021',103), 4, 3900     , 19)     /* https://cdn.static01.nicematin.com/media/npo/large/2017/11/tortue2.jpg')																																																	*/
insert into Voyage (LibelleVoyage, DescriptifVoyage, DateDepartVoyage, DateRetourVoyage, DisponibiliteVoyage, PrixVoyage, RegionID) values ('Cap Egmont'         , 'A la rencontre des majestueux et puissants volcans'																								, CONVERT(datetime2(7),'01/01/2020',103), CONVERT(datetime2(7),'01/01/2021',103), 1, 999      , 20)     /* https://farm9.staticflickr.com/8317/7942453978_5b7d8c1279_c.jpg')																																																		*/
insert into Voyage (LibelleVoyage, DescriptifVoyage, DateDepartVoyage, DateRetourVoyage, DisponibiliteVoyage, PrixVoyage, RegionID) values ('Hawera'             , 'Ne manquez pas le Safari photo pour découvrir la faune locale'																					, CONVERT(datetime2(7),'09/04/2024',103), CONVERT(datetime2(7),'09/04/2025',103), 31, 2200    , 20)     /* https://i2.wp.com/www.gorillasafaris-uganda.com/wp-content/uploads/2018/05/16-days-uganda-wildlife-safari-holiday-800x400.jpg')																																			*/
go	

/*==================================================================================================================================================== */
/****** Object:  INSERTIONS DE CONTENU DANS LA TABLE CLIENT ******/
/*==================================================================================================================================================== */

insert into Client (CiviliteClient, NomClient, PrenomClient, DateNaissanceClient, EmailClient, TelephoneClient, VilleClient) values ('Mlle','Pham','Angèlique'   ,convert(date, '06/08/1978', 103), 'phamcoucou@gmail.com'       ,'1234567891', 'Annecy') 
insert into Client (CiviliteClient, NomClient, PrenomClient, DateNaissanceClient, EmailClient, TelephoneClient, VilleClient) values ('Mlle','Mandy','Angèlique'  ,convert(date, '23/03/1986', 103), 'mandypimpon@hotmail.com'    ,'4595875654', 'Rouen') 
insert into Client (CiviliteClient, NomClient, PrenomClient, DateNaissanceClient, EmailClient, TelephoneClient, VilleClient) values ('Mr'  ,'Boutada','Khalil'   ,convert(date, '06/01/1984', 103), 'boutadabouh@gmail.com'      ,'2136548957', 'Montpellier') 
insert into Client (CiviliteClient, NomClient, PrenomClient, DateNaissanceClient, EmailClient, TelephoneClient, VilleClient) values ('Mme' ,'Lalibi','Imen'      ,convert(date, '26/02/1987', 103), 'lalibihellothere@gmail.com' ,'5456548565', 'Istanbul') 
insert into Client (CiviliteClient, NomClient, PrenomClient, DateNaissanceClient, EmailClient, TelephoneClient, VilleClient) values ('Mr'  ,'Schawohl','Benjamin',convert(date, '09/01/1986', 103), 'schawohlbenji@gmail.com'    ,'2625487596', 'Lyon') 
insert into Client (CiviliteClient, NomClient, PrenomClient, DateNaissanceClient, EmailClient, TelephoneClient, VilleClient) values ('Mr'  ,'Godereau','Clément' ,convert(date, '13/06/1986', 103), 'godreaukikou@gmail.com'     ,'9575868123', 'Paris') 
insert into Client (CiviliteClient, NomClient, PrenomClient, DateNaissanceClient, EmailClient, TelephoneClient, VilleClient) values ('Mr'  ,'Cosseron','Emmanuel',convert(date, '29/10/1979', 103), 'cosserontoto@gmail.com'     ,'1254635875', 'Vienne') 
insert into Client (CiviliteClient, NomClient, PrenomClient, DateNaissanceClient, EmailClient, TelephoneClient, VilleClient) values ('Mr'  ,'Gendouzi','Ahmed'   ,convert(date, '14/02/1987', 103), 'gendouziguili@gmail.com'    ,'5637894268', 'Venise') 
insert into Client (CiviliteClient, NomClient, PrenomClient, DateNaissanceClient, EmailClient, TelephoneClient, VilleClient) values ('Mr'  ,'Lagab','Hacene'     ,convert(date, '22/11/1976', 103), 'lagabpouet@gmail.com'       ,'6575698456', 'Lille') 
insert into Client (CiviliteClient, NomClient, PrenomClient, DateNaissanceClient, EmailClient, TelephoneClient, VilleClient) values ('Mr'  ,'Alashkar','Ali'     ,convert(date, '30/01/1984', 103), 'alashkarheyho@gmail.com'    ,'5987632147', 'Rouen') 
insert into Client (CiviliteClient, NomClient, PrenomClient, DateNaissanceClient, EmailClient, TelephoneClient, VilleClient) values ('Mr'  ,'Harkat','Amine'     ,convert(date, '25/05/1985', 103), 'harkatmatcha@gmail.com'     ,'5987463214', 'Dieppe') 

go

/*==================================================================================================================================================== */
/****** Object:  INSERTIONS DE CONTENU DANS LA TABLE CARTE BANCAIRE ******/
/*==================================================================================================================================================== */

Insert into CarteBancaire (NomCB, NumCB, DateExpCB, CryptoCB) values ('Pham'      ,'1234123412341234', convert(date, '01/09/2019', 103),'236')
Insert into CarteBancaire (NomCB, NumCB, DateExpCB, CryptoCB) values ('Pham'	  ,'2345234523452345', convert(date, '01/10/2019', 103),'237')
Insert into CarteBancaire (NomCB, NumCB, DateExpCB, CryptoCB) values ('Mandy'	  ,'3456345634563456', convert(date, '01/11/2019', 103),'238')
Insert into CarteBancaire (NomCB, NumCB, DateExpCB, CryptoCB) values ('Mandy'	  ,'4567456745674567', convert(date, '01/12/2019', 103),'239')
Insert into CarteBancaire (NomCB, NumCB, DateExpCB, CryptoCB) values ('Boutada'	  ,'5678567856785678', convert(date, '01/01/2019', 103),'240')
Insert into CarteBancaire (NomCB, NumCB, DateExpCB, CryptoCB) values ('Boutada'	  ,'6789678967896789', convert(date, '01/02/2020', 103),'245')
Insert into CarteBancaire (NomCB, NumCB, DateExpCB, CryptoCB) values ('Cosseron'  ,'7890789078907890', convert(date, '01/03/2020', 103),'250')
Insert into CarteBancaire (NomCB, NumCB, DateExpCB, CryptoCB) values ('Lalibi'	  ,'8901890189018901', convert(date, '01/04/2020', 103),'255')
Insert into CarteBancaire (NomCB, NumCB, DateExpCB, CryptoCB) values ('Schawohl'  ,'9012901290129012', convert(date, '01/05/2020', 103),'260')
Insert into CarteBancaire (NomCB, NumCB, DateExpCB, CryptoCB) values ('Godereau'  ,'0123012301230123', convert(date, '01/06/2020', 103),'265')
Insert into CarteBancaire (NomCB, NumCB, DateExpCB, CryptoCB) values ('Guendouzi' ,'1244124412441244', convert(date, '01/07/2020', 103),'270')
Insert into CarteBancaire (NomCB, NumCB, DateExpCB, CryptoCB) values ('Lagab'     ,'1245124512451245', convert(date, '01/08/2020', 103),'275')
Insert into CarteBancaire (NomCB, NumCB, DateExpCB, CryptoCB) values ('Lagab'     ,'1246124612461246', convert(date, '01/09/2020', 103),'280')
Insert into CarteBancaire (NomCB, NumCB, DateExpCB, CryptoCB) values ('Alashkar'  ,'1247124712471247', convert(date, '01/10/2020', 103),'285')
Insert into CarteBancaire (NomCB, NumCB, DateExpCB, CryptoCB) values ('Harkat'    ,'1248124812481248', convert(date, '01/11/2020', 103),'290')
go

/*==================================================================================================================================================== */
/****** Object:  INSERTIONS DE CONTENU DANS LA TABLE DOSSIER ******/
/*==================================================================================================================================================== */


insert into Dossier (NbVoyageurDossier, NumCB, EmailClient, VoyageID,CarteBancaireID, ClientID) values (3,'1234123412341234','phamcoucou@gmail.com'      ,2,  1 ,    5)
insert into Dossier (NbVoyageurDossier, NumCB, EmailClient, VoyageID,CarteBancaireID, ClientID) values (2,'5678567856785678','boutadabouh@gmail.com'     ,3 , 5 ,    7)
insert into Dossier (NbVoyageurDossier, NumCB, EmailClient, VoyageID,CarteBancaireID, ClientID) values (4,'7890789078907890','cosserontoto@gmail.com'    ,7,  7 ,    11)
insert into Dossier (NbVoyageurDossier, NumCB, EmailClient, VoyageID,CarteBancaireID, ClientID) values (5,'0123012301230123','godreaukikou@gmail.com'    ,8,  10,    4)
insert into Dossier (NbVoyageurDossier, NumCB, EmailClient, VoyageID,CarteBancaireID, ClientID) values (2,'8901890189018901','lalibihellothere@gmail.com',1,  8 ,    9)
insert into Dossier (NbVoyageurDossier, NumCB, EmailClient, VoyageID,CarteBancaireID, ClientID) values (1,'1245124512451245','lagabpouet@gmail.com'      ,6,  12,    8)
insert into Dossier (NbVoyageurDossier, NumCB, EmailClient, VoyageID,CarteBancaireID, ClientID) values (2,'1246124612461246','lagabpouet@gmail.com'      ,8 , 13,    8)
insert into Dossier (NbVoyageurDossier, NumCB, EmailClient, VoyageID,CarteBancaireID, ClientID) values (2,'4567456745674567','mandypimpon@hotmail.com'   ,1,  4 ,    1)
go

/*==================================================================================================================================================== */
/****** Object:  INSERTIONS DE CONTENU DANS LA TABLE VOYAGEUR ******/
/*==================================================================================================================================================== */


Insert into Voyageur (NomVoyageur, PrenomVoyageur, DateNaissanceVoyageur, DossierID) values ('Pham'			,'Angèlique'	,convert(date, '06/08/1978', 103),1)
Insert into Voyageur (NomVoyageur, PrenomVoyageur, DateNaissanceVoyageur, DossierID) values ('Pham'			,'Angel'		,convert(date, '23/07/1979', 103),1)
Insert into Voyageur (NomVoyageur, PrenomVoyageur, DateNaissanceVoyageur, DossierID) values ('Pham'			,'Marie'		,convert(date, '13/01/1980', 103),1)
Insert into Voyageur (NomVoyageur, PrenomVoyageur, DateNaissanceVoyageur, DossierID) values ('Boutada'		,'Khalil'		,convert(date, '06/01/1984', 103),2)
Insert into Voyageur (NomVoyageur, PrenomVoyageur, DateNaissanceVoyageur, DossierID) values ('Boutada'		,'Miriam'		,convert(date, '05/02/1988', 103),2)
Insert into Voyageur (NomVoyageur, PrenomVoyageur, DateNaissanceVoyageur, DossierID) values ('Cosseron'		,'Emmanuel'		,convert(date, '29/10/1979', 103),3)
Insert into Voyageur (NomVoyageur, PrenomVoyageur, DateNaissanceVoyageur, DossierID) values ('Cosseron'		,'Léa'			,convert(date, '13/11/1981', 103),3)
Insert into Voyageur (NomVoyageur, PrenomVoyageur, DateNaissanceVoyageur, DossierID) values ('Cosseron'		,'Théo'			,convert(date, '01/02/2013', 103),3)
Insert into Voyageur (NomVoyageur, PrenomVoyageur, DateNaissanceVoyageur, DossierID) values ('Cosseron'		,'Lukas'		,convert(date, '03/01/2016', 103),3)
Insert into Voyageur (NomVoyageur, PrenomVoyageur, DateNaissanceVoyageur, DossierID) values ('Godereau'		,'Clément'		,convert(date, '13/06/1986', 103),4)
Insert into Voyageur (NomVoyageur, PrenomVoyageur, DateNaissanceVoyageur, DossierID) values ('Godereau'		,'Julie'		,convert(date, '22/07/1987', 103),4)
Insert into Voyageur (NomVoyageur, PrenomVoyageur, DateNaissanceVoyageur, DossierID) values ('Godereau'		,'Pierre'		,convert(date, '06/03/1970', 103),4)
Insert into Voyageur (NomVoyageur, PrenomVoyageur, DateNaissanceVoyageur, DossierID) values ('Godereau'		,'Claris'		,convert(date, '05/08/1971', 103),4)
Insert into Voyageur (NomVoyageur, PrenomVoyageur, DateNaissanceVoyageur, DossierID) values ('Godereau' 	,'Fanny'		,convert(date, '12/05/1977', 103),4)
Insert into Voyageur (NomVoyageur, PrenomVoyageur, DateNaissanceVoyageur, DossierID) values ('Lalibi'		,'Imen'			,convert(date, '26/02/1987', 103),5)
Insert into Voyageur (NomVoyageur, PrenomVoyageur, DateNaissanceVoyageur, DossierID) values ('Lalibi'		,'Cherif'		,convert(date, '05/07/1985', 103),5)
Insert into Voyageur (NomVoyageur, PrenomVoyageur, DateNaissanceVoyageur, DossierID) values ('Lagab'		,'Hacene'		,convert(date, '22/11/1976', 103),6)
Insert into Voyageur (NomVoyageur, PrenomVoyageur, DateNaissanceVoyageur, DossierID) values ('Lagab'		,'Hacene'		,convert(date, '22/11/1976', 103),7)
Insert into Voyageur (NomVoyageur, PrenomVoyageur, DateNaissanceVoyageur, DossierID) values ('Boaleau'		,'Pauline'		,convert(date, '13/12/1974', 103),7)
Insert into Voyageur (NomVoyageur, PrenomVoyageur, DateNaissanceVoyageur, DossierID) values ('Ledieu'		,'Kevin'		,convert(date, '31/01/1990', 103),8)
Insert into Voyageur (NomVoyageur, PrenomVoyageur, DateNaissanceVoyageur, DossierID) values ('Ledieu'		,'Jordan'		,convert(date, '25/12/1994', 103),8)
go

/*==================================================================================================================================================== */
/****** Object:  INSERTIONS DE CONTENU DANS LA TABLE CAMPAGNE ******/
/*==================================================================================================================================================== */

Insert into Campagne (LibelleCampagne, DateDebutCampagne, DateFinCampagne, DescriptifCampagne    ) values ('Les destinations ensoleillées pour Décembre' , CONVERT(datetime2(7),'1/12/2018',103) , CONVERT(datetime2(7),'30/12/2018',103) , 'En recherche de chaleur, choisissez BoVoyage pour réchauffer votre hiver')     																																												
Insert into Campagne (LibelleCampagne, DateDebutCampagne, DateFinCampagne, DescriptifCampagne    ) values ('Les favoris de BoVoyage pour Janvier'        , CONVERT(datetime2(7),'01/01/2019',103), CONVERT(datetime2(7),'31/01/2019',103) , 'Les meilleures ventes de BoVoyage, une réussite certifiée par les meilleurs avis ')    
Insert into Campagne (LibelleCampagne, DateDebutCampagne, DateFinCampagne, DescriptifCampagne    ) values ('Les Nouvelles destinations de Février'       , CONVERT(datetime2(7),'01/02/2019',103), CONVERT(datetime2(7),'28/02/2019',103) , 'Les destinations qui nous tiennent à coeur')   
go