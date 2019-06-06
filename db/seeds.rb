# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 Activities.create!(name: 'Basketball')

  Places.create! (name: 'Stade Henri TASSO', address: '2 Rue Girardin 13007 MARSEILLE', accessibility: 'Arret de bus Corniche Audeoud', schedules: '08:00-20:00', pictures: '', lat: '43.2895544', long: '5.355773')
  Places.create! (name: 'Terrain de basket TELLENE', address: 'STADE DI GIOVANI TELLENE 89 BOULEVARD TELLENE 13007 MARSEILLE', accessibility: 'Arret de bus Chantecler', schedules: '08:00-20:00', pictures: '', lat: '43.2863548', long: '5.364833')
  Places.create! (name: 'Terrain de basket', address: 'Rue du Bois Sacré 13006 MARSEILLE', accessibility: 'Arret de bus vauban à 5 min', schedules: 'Accès libre', pictures: '', lat: '43.282777', long: '5.3715482')
  Places.create! (name: 'Terrain de basket', address: 'Allée de la bastide basse 13012 MARSEILLE', accessibility: 'Arret de bus bastide basse à 5 min', schedules: 'Accès libre', pictures: '', lat: '43.3000373', long: '5.4360699')
  Places.create! (name: 'Terrain de basket 26eme Centenaire', address: 'Avenue de Corinthe 13010 MARSEILLE', accessibility: 'Arret de bus Parc du 26eme Centenaire', schedules: '08:00-20:00', pictures: '', lat: '43.2805941', long: '5.3927428')

Activities.create!(name: 'Petanque')

  Places.create! (name: 'La Major', address: 'Place de la Major 13002 MARSEILLE', accessibility: 'Terrain de pétanque au niveau de la Cathédrale La Major.', schedules: 'Accès libre', pictures: '', lat: '43.2988899', long: '5.3637314')
  Places.create! (name: 'Boule Arc de Triomphe', address: '32 rue hoche Quartier St Lazare 13003 MARSEILLE', accessibility: 'A 200m de la station de métro Clary.', schedules: 'Accès libre' pictures: '', lat: '43.3101268', long: '5.3738072')
  Places.create! (name: 'Plage des Catalans', address: 'Quartier des Catalans Corniche Kennedy 13007 MARSEILLE', accessibility: 'Terrain accessible au niveau de la plage.', schedules: 'Accès libre', pictures: '', lat: '43.2900503', long: '5.3561055')
  Places.create! (name: 'Parc Émile Duclaux', address: '86 Boulevard Charles Livon 13007 MARSEILLE', accessibility: 'Accessible au niveau de l’entrée du park', schedules: '08:00 - 21:00', pictures: '', lat: '43.2933509', long: '5.3566206')

Activities.create!(name: 'Football')

  Places.create! (name: 'Mini Foot Jean Bouin', address: '65 Avenue Clot Bey 13008 MARSEILLE', accessibility: 'Arret de bus clot-bey-paul', schedules: '08:00-20:00', pictures: '', lat: '43.2590368', long: '5.3833625')
  Places.create! (name: 'Mini foot Burel', address: '23 Boulevard BUREL 13014 MARSEILLE', accessibility: 'En accès libre', schedules: '-', pictures: '', lat: '43.3172984', long: '5.3960915')

Activities.create!(name: 'Park')

  Places.create! (name: 'Parc Longchamp', address: 'Boulevard Jardin Zoologique 13004 MARSEILLE', accessibility: 'Arret de bus Longchamp', schedules: '08:00 - 20:00', pictures: '', lat: '43.3048523', long: '5.3953988')
  Places.create! (name: 'Parc du 26e Centenaire', address: 'Avenue de Corinthe 13010 MARSEILLE', accessibility: 'Arret de bus Parc du 26eme Centenaire', schedules: '08:00 - 20:00', pictures: '', lat: '43.2805941', long: '5.3927428')
  Places.create! (name: 'Parc Borély', address: 'Avenue Borély 13008 MARSEILLE', accessibility: 'Proche entrée Prado 2' schedules: '06:00 - 20:45', pictures: '' lat: '43.261652', long: '5.3800873')
  Places.create! (name: 'Jardin de la Magalone', address: '245 Boulevard Michelet 13009 MARSEILLE', accessibility: 'Arret de bus le Corbusier', schedules: '08:00 - 20:00', pictures: '', lat: '43.2616023', long: '5.3961861')
  Places.create! (name: 'Parc Balnéaire du Prado', address: '108 Allée du Prado Bleu 13008 MARSEILLE', accessibility: 'Arret de bus Place Amiral Muselier', schedules: 'Accès libre', pictures: '', lat: '43.2644828', long: '5.3701694')

Activities.create!(name: 'Voleyball')

  Places.create! (name: 'Terrains Beach Volley Ball', address: 'Plage des Catalans 13007 MARSEILLE', accessibility: 'A 15 minutes à pied du Vieux Port', schedules: '08:30-20:00', pictures: '', lat: '43.2905667', long: '5.3576104')
  Places.create! (name: 'plage des prophete Beach volley-ball', address: 'Corniche Président John Fitzgerald Kennedy, 13007 Marseille', accessibility: 'Arret de bus Le Prophete', schedules: '24/24', pictures: '', lat: '43.2730287', long: '5.3624088')


Activities.create!(name: 'Skatepark')

  Places.create! (name: 'La Friche Skatepark', address: '41 Rue Jobin 13003 MARSEILLE', accessibility: 'Arret de bus Belle de Mai la Friche', schedules: 'Accès libre', pictures: '', lat: '43.3100509', long: '5.3889157')
  Places.create! (name: 'Skatepark Le Bowl', address: '197 avenue Pierre Mendès 13008 MARSEILLE', accessibility: 'Arret de bus vieille Chapelle à 5 min', schedules: '24/24', pictures: '', lat: '43.251908', long: '5.3724182')
  Places.create! (name: 'Stade Rouvier', address: '16 Avenue de la Barquière 13009 MARSEILLE', accessibility: 'Arret de bus Barquière Bartheline', schedules: 'Accès libre', pictures: '', lat: '43.2452845', long: '5.3958586')
  Places.create! (name: 'Parc Athéna', address: 'Rue Albert Einstein 13013 MARSEILLE', accessibility: '-', schedules: '-', pictures: '', lat: '43.3403844', long: '5.4456326')
  Places.create! (name: 'Plage du David', address: '99 Prom. Georges Pompidou 13008  MARSEILLE', accessibility: 'Arret de bus Einstein Athena à 10 min', schedules: 'Acces libre', pictures: '', lat: '43.3401163', long: '5.4448449')

Activities.create!(name: 'Fitness')

  Places.create! (name: 'street workout park - parc borely', address: 'Avenue du Prado 13008 MARSEILLE', accessibility: 'Proche entrée Prado 2',  schedules: '06:00-20:45', pictures: '', lat: '43.261652', long: '5.3800873')
  Places.create! (name: 'Street Workout Park', address: '109 Avenue Pierre Mendès 13008 MARSEILLE' accessibility: 'Près de la plage', schedules: '24/24', pictures: '', lat: '43.2603506', long: '5.3740163')
  Places.create! (name: 'Fitness Trail - Parc de la colline Saint-Joseph', address: '180 Boulevard Du Redon 13009 MARSEILLE', accessibility: 'Proximité arret de bus la Rouvière', schedules: '08:00-20:00', pictures: '', lat: '43.2498404', long: '5.418973')
  Places.create! (name: 'Outdoor Pull Up Bar', address: '29, Rue Plumier La Joliette 13002 MARSEILLE', accessibility: 'Directement sur le trottoire', schedules: 'libre accès' pictures: '', lat: '43.304286', long: '5.3679845')
  Places.create! (name: 'Fitness Trail - Parc de Font Obscure', address: 'Avenue Corot, Saint-Barthélém 13014 MARSEILLE', accessibility: 'Arret de bus Champfleuri', schedules: '24/24', pictures: '', lat: '43.3265116', long: '5.4008685')


Activities.create!(name: 'Pingpong')

  Places.create! (name: 'Pingpong', address: ' MARSEILLE', accessibility: 'accès libre', schedules: '-', pictures: '', lat: '', long: '')
  Places.create! (name: 'Pingpong', address: ' MARSEILLE', accessibility: 'accès libre', schedules: '-', pictures: '', lat: '', long: '')
  Places.create! (name: 'Pingpong', address: ' MARSEILLE', accessibility: 'accès libre', schedules: '-', pictures: '', lat: '', long: '')
  Places.create! (name: 'Pingpong', address: ' MARSEILLE', accessibility: 'accès libre', schedules: '-', pictures: '', lat: '', long: '')
  Places.create! (name: 'Pingpong', address: ' MARSEILLE', accessibility: 'accès libre', schedules: '-', pictures: '', lat: '', long: '')
