
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  User.destroy_all

    Caroline = User.create!(
  username: "CarolinePlin",
  firstname: "Caroline",
  lastname: "Plin",
  address: "199 rue de rome",
  tel: "0655694535",
  birth_date: "1996/05/01",
  email:"caroline@gmail.com",
  password:"carolinecaroline",
  avatar: "https://ressources.phildar.fr/produits/047837/2298/medium/047837_2298_S1.jpg"
  )


Place.destroy_all

Parc = Place.create!(
name: " Parc 26eme Centenaire",
address: "23 rue de machin Marseille"

  )


 Activity.create!(name: 'Basketball')

  Place.create!(name: 'Stade Henri TASSO', address: '2 Rue Girardin 13007 MARSEILLE', accessibility: 'Arret de bus Corniche Audeoud', schedules: '08:00-20:00', pictures: '', latitude: '43.2895544', longitude: '5.355773')
  Place.create!(name: 'Terrain de basket TELLENE', address: 'STADE DI GIOVANI TELLENE 89 BOULEVARD TELLENE 13007 MARSEILLE', accessibility: 'Arret de bus Chantecler', schedules: '08:00-20:00', pictures: '', latitude: '43.2863548', longitude: '5.364833')
  Place.create!(name: 'Terrain de basket', address: 'Rue du Bois Sacré 13006 MARSEILLE', accessibility: 'Arret de bus vauban à 5 min', schedules: 'Accès libre', pictures: '', latitude: '43.282777', longitude: '5.3715482')
  Place.create!(name: 'Terrain de basket', address: 'Allée de la bastide basse 13012 MARSEILLE', accessibility: 'Arret de bus bastide basse à 5 min', schedules: 'Accès libre', pictures: '', latitude: '43.3000373', longitude: '5.4360699')
  Place.create!(name: 'Terrain de basket 26eme Centenaire', address: 'Avenue de Corinthe 13010 MARSEILLE', accessibility: 'Arret de bus Parc du 26eme Centenaire', schedules: '08:00-20:00', pictures: '', latitude: '43.2805941', longitude: '5.3927428')

Activity.create!(name: 'Petanque')

  Place.create!(name: 'La Major', address: 'Place de la Major 13002 MARSEILLE', accessibility: 'Terrain de pétanque au niveau de la Cathédrale La Major.', schedules: '-', pictures: '', latitude: '43.2988899', longitude: '5.3637314')
  Place.create!(name: 'Boule Arc de Triomphe', address: '32 rue hoche Quartier St Lazare 13003 MARSEILLE', accessibility: 'A 200m de la station de métro Clary.', schedules: 'Accès libre', pictures: '', latitude: '43.3101268', longitude: '5.3738072')
  Place.create!(name: 'Plage des Catalans', address: 'Quartier des Catalans Corniche Kennedy 13007 MARSEILLE', accessibility: 'Terrain accessible au niveau de la plage.', schedules: '-', pictures: '', latitude: '43.2900503', longitude: '5.3561055')
  Place.create!(name: 'Parc Émile Duclaux', address: '86 Boulevard Charles Livon 13007 MARSEILLE', accessibility: 'Accessible au niveau de l’entrée du park', schedules: '08:00 - 21:00', pictures: '', latitude: '43.2933509', longitude: '5.3566206')

Activity.create!(name: 'Football')
  Place.create!(name: 'Mini Foot Jean Bouin', address: '65 Avenue Clot Bey 13008 MARSEILLE', accessibility: 'Arret de bus clot-bey-paul', schedules: '08:00-20:00', pictures: '', latitude: '43.2590368', longitude: '5.3833625')
  Place.create!(name: 'Mini foot Burel', address: '23 Boulevard BUREL 13014 MARSEILLE', accessibility: 'En accès libre', schedules: '-', pictures: '', latitude: '43.3172984', longitude: '5.3960915')

Activity.create!(name: 'Parc')

  Place.create!(name: 'Parc longitudechamp', address: 'Boulevard Jardin Zoologique 13004 MARSEILLE', accessibility: 'Arret de bus longitudechamp', schedules: '08:00 - 20:00', pictures: '', latitude: '43.3048523', longitude: '5.3953988')
  Place.create!(name: 'Parc du 26e Centenaire', address: 'Avenue de Corinthe 13010 MARSEILLE', accessibility: 'Arret de bus Parc du 26eme Centenaire', schedules: '08:00 - 20:00', pictures: '', latitude: '43.2805941', longitude: '5.3927428')
  Place.create!(name: 'Parc Borély', address: 'Avenue Borély 13008 MARSEILLE', accessibility: 'Proche entrée Prado 2', schedules: '06:00 - 20:45', pictures: '', latitude: '43.261652', longitude: '5.3800873')
  Place.create!(name: 'Jardin de la Magalone', address: '245 Boulevard Michelet 13009 MARSEILLE', accessibility: 'Arret de bus le Corbusier', schedules: '08:00 - 20:00', pictures: '', latitude: '43.2616023', longitude: '5.3961861')
  Place.create!(name: 'Parc Balnéaire du Prado', address: '108 Allée du Prado Bleu 13008 MARSEILLE', accessibility: 'Arret de bus Place Amiral Muselier', schedules: 'Accès libre', pictures: '', latitude: '43.2644828', longitude: '5.3701694')

Activity.create!(name: 'Volleyball')

  Place.create!(name: 'Terrains Beach Volley Ball', address: 'Plage des Catalans 13007 MARSEILLE', accessibility: 'A 15 minutes à pied du Vieux Port', schedules: '08:30-20:00', pictures: '', latitude: '43.2905667', longitude: '5.3576104')
  Place.create!(name: 'plage des prophete Beach volley-ball', address: 'Corniche Président John Fitzgerald Kennedy, 13007 Marseille', accessibility: 'Arret de bus Le Prophete', schedules: '24/24', pictures: '', latitude: '43.2730287', longitude: '5.3624088')

Activity.create!(name: 'Skatepark')

  Place.create!(name: 'La Friche Skatepark', address: '41 Rue Jobin 13003 MARSEILLE', accessibility: 'Arret de bus Belle de Mai la Friche', schedules: 'Accès libre', pictures: '', latitude: '43.3100509', longitude: '5.3889157')
  Place.create!(name: 'Skatepark Le Bowl', address: '197 avenue Pierre Mendès 13008 MARSEILLE', accessibility: 'Arret de bus vieille Chapelle à 5 min', schedules: '24/24', pictures: '', latitude: '43.251908', longitude: '5.3724182')
  Place.create!(name: 'Stade Rouvier', address: '16 Avenue de la Barquière 13009 MARSEILLE', accessibility: 'Arret de bus Barquière Bartheline', schedules: 'Accès libre', pictures: '', latitude: '43.2452845', longitude: '5.3958586')
  Place.create!(name: 'Parc Athéna', address: 'Rue Albert Einstein 13013 MARSEILLE', accessibility: '-', schedules: '-', pictures: '', latitude: '43.3403844', longitude: '5.4456326')
  Place.create!(name: 'Plage du David', address: '99 Prom. Georges Pompidou 13008  MARSEILLE', accessibility: 'Arret de bus Einstein Athena à 10 min', schedules: 'Acces libre', pictures: '', latitude: '43.3401163', longitude: '5.4448449')

Activity.create!(name: 'Fitness')

  Place.create!(name: 'street workout park - parc borely', address: 'Avenue du Prado 13008 MARSEILLE', accessibility: 'Proche entrée Prado 2', schedules: '06:00-20:45', pictures: '', latitude: '43.261652', longitude: '5.3800873')
  Place.create!(name: 'Street Workout Park', address: '109 Avenue Pierre Mendès 13008 MARSEILLE', accessibility: 'Près de la plage', schedules: '24/24', pictures: '', latitude: '43.2603506', longitude: '5.3740163')
  Place.create!(name: 'Fitness Trail - Parc de la colline Saint-Joseph', address: '180 Boulevard Du Redon 13009 MARSEILLE', accessibility: 'Proximité arret de bus la Rouvière', schedules: '08:00-20:00', pictures: '', latitude: '43.2498404', longitude: '5.418973')
  Place.create!(name: 'Outdoor Pull Up Bar', address: '29, Rue Plumier La Joliette 13002 MARSEILLE', accessibility: 'Directement sur le trottoire', schedules: 'libre accès', pictures: '', latitude: '43.304286', longitude: '5.3679845')
  Place.create!(name: 'Fitness Trail - Parc de Font Obscure', address: 'Avenue Corot, Saint-Barthélém 13014 MARSEILLE', accessibility: 'Arret de bus Champfleuri', schedules: '24/24', pictures: '', latitude: '43.3265116', longitude: '5.4008685')


Activity.create!(name: 'Pingpong')

  Place.create!(name: 'Pingpong', address: ' MARSEILLE', accessibility: 'accès libre', schedules: '-', pictures: '', latitude: '', longitude: '')
  Place.create!(name: 'Pingpong', address: ' MARSEILLE', accessibility: 'accès libre', schedules: '-', pictures: '', latitude: '', longitude: '')
  Place.create!(name: 'Pingpong', address: ' MARSEILLE', accessibility: 'accès libre', schedules: '-', pictures: '', latitude: '', longitude: '')
  Place.create!(name: 'Pingpong', address: ' MARSEILLE', accessibility: 'accès libre', schedules: '-', pictures: '', latitude: '', longitude: '')
  Place.create!(name: 'Pingpong', address: ' MARSEILLE', accessibility: 'accès libre', schedules: '-', pictures: '', latitude: '', longitude: '')

