
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

activity1 = Activity.create!(name: 'Basketball')
  User.destroy_all

caroline = User.create!(
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

parc = Place.create!(
name: " Parc 26eme Centenaire",
address: "23 rue de machin Marseille"

  )


 Activity.create!(name: 'Basketball')

  place = Place.create!(name: 'Terrain de Basket - Stade Henri Tasso', address: '2 Rue Girardin, 13007 - MARSEILLE', accessibility: 'Arret de bus Corniche Audeoud', schedules: 'Ouvert tous les jours : 08:00-20:00', pictures: '', latitude: '5.355773', longitude: '43.2895544')
  place.activities << activity1

  place = Place.create!(name: 'Terrain de Basket - Tellene', address: 'Stade di Giovani Tellene, 89 Boulevard Tellene, 13007 - MARSEILLE', accessibility: 'Arret de bus Chantecler', schedules: 'Ouvert tous les jours : 08:00-20:00', pictures: '', latitude: '43.2863548', longitude: '5.364833')
  place.activities << activity1

  place = Place.create!(name: 'Terrain de Basket - Vauban', address: 'Rue du Bois Sacré, 13006 - MARSEILLE', accessibility: 'Proximité arrêt de bus vauban à 5 min', schedules: 'Accès libre', pictures: '', latitude: '43.282777', longitude: '5.3715482')
  place.activities << activity1

  place = Place.create!(name: 'Terrain de Basket - Bastide', address: 'Allée de la bastide basse, 13012 - MARSEILLE', accessibility: 'Proximité arrêt de bus bastide basse à 5 min', schedules: 'Accès libre', pictures: '', latitude: '43.3000373', longitude: '5.4360699')
  place.activities << activity1

  place = Place.create!(name: 'Terrain de basket - Parc du 26ème Centenaire', address: 'Avenue de Corinthe, 13010 - MARSEILLE', accessibility: 'Proximité arrêt de bus, Parc du 26eme Centenaire', schedules: 'Ouvert tous les jours : 08:00-20:00', pictures: '', latitude: '43.2805941', longitude: '5.3927428')
  place.activities << activity1

activity2 = Activity.create!(name: 'Petanque')
Activity.create!(name: 'Petanque')

  place = Place.create!(name: 'Pétanque - La Major', address: 'Place de la Major, 13002 - MARSEILLE', accessibility: 'Terrain de pétanque au niveau de la Cathédrale La Major.', schedules: '-', pictures: '', latitude: '43.2988899', longitude: '5.3637314')
  place.activities << activity2


  place = Place.create!(name: 'Boule Arc de Triomphe', address: '32 rue hoche Quartier St Lazare, 13003 - MARSEILLE', accessibility: 'A 200m de la station de métro Clary.', schedules: 'Accès libre', pictures: '', latitude: '43.3101268', longitude: '5.3738072')
  place.activities << activity2

  place = Place.create!(name: 'Pétanque - Plage des Catalans', address: 'Quartier des Catalans Corniche Kennedy, 13007 - MARSEILLE', accessibility: 'Terrain accessible au niveau de la plage.', schedules: '-', pictures: '', latitude: '43.2900503', longitude: '5.3561055')
  place.activities << activity2

  place = Place.create!(name: 'Pétanque - Parc Émile Duclaux', address: '86 Boulevard Charles Livon, 13007 - MARSEILLE', accessibility: 'Accessible au niveau de l’entrée du park', schedules: 'Ouvert tous les jours : 08:00 - 21:00', pictures: '', latitude: '43.2933509', longitude: '5.3566206')
  place.activities << activity2

activity3 = Activity.create!(name: 'Football')
Activity.create!(name: 'Football')
  place = Place.create!(name: 'Mini Foot Jean Bouin', address: '65 Avenue Clot Bey, 13008 - MARSEILLE', accessibility: 'Arret de bus clot-bey-paul', schedules: 'Ouvert tous les jours : 08:00-20:00', pictures: '', latitude: '43.2590368', longitude: '5.3833625')
  place.activities << activity3

  place =Place.create!(name: 'Mini foot Burel', address: '23 Boulevard BUREL, 13014 - MARSEILLE', accessibility: 'En accès libre', schedules: '-', pictures: '', latitude: '43.3172984', longitude: '5.3960915')
  place.activities << activity3

activity4 = Activity.create!(name: 'Parc')
Activity.create!(name: 'Parc')

  place = Place.create!(name: 'Parc longchamp', address: 'Boulevard Jardin Zoologique, 13004 - MARSEILLE', accessibility: 'Proximité arrêt de bus Longchamp', schedules: 'Ouvert tous les jours : 08:00 - 20:00', pictures: 'https://res.cloudinary.com/deqh1paih/image/upload/v1560172678/palais-longchamp_c20mnr.jpg', latitude: '43.3048523', longitude: '5.3953988')
  place.activities << activity4

  place = Place.create!(name: 'Parc du 26e Centenaire', address: 'Avenue de Corinthe, 13010 - MARSEILLE', accessibility: 'Proximité arrêt de bus Parc du 26eme Centenaire', schedules: 'Ouvert tous les jours : 08:00 - 20:00', pictures: 'https://res.cloudinary.com/deqh1paih/image/upload/v1560172690/parc-26centenaire_bnub2h.jpg', latitude: '43.2805941', longitude: '5.3927428')
  place.activities << activity4

  place = Place.create!(name: 'Parc Borély', address: 'Avenue Borély, 13008 - MARSEILLE', accessibility: 'Proche entrée Prado 2', schedules: 'Ouvert tous les jours : 06:00 - 20:45', pictures: 'https://res.cloudinary.com/deqh1paih/image/upload/v1560175921/Parc-Borely_mtnfi4.jpg', latitude: '43.261652', longitude: '5.3800873')
  place.activities << activity4

  place = Place.create!(name: 'Jardin de la Magalone', address: '245 Boulevard Michelet, 13009 - MARSEILLE', accessibility: 'Proximité arrêt de bus le Corbusier', schedules: 'Ouvert tous les jours : 08:00 - 20:00', pictures: 'https://res.cloudinary.com/deqh1paih/image/upload/v1560175950/jardinMagalone_jsqcxd.jpg', latitude: '43.2616023', longitude: '5.3961861')
  place.activities << activity4
  place = Place.create!(name: 'Parc Balnéaire du Prado', address: '108 Allée du Prado Bleu, 13008 - MARSEILLE', accessibility: 'Proximité arrêt de bus Place Amiral Muselier', schedules: 'Accès libre', pictures: 'https://res.cloudinary.com/deqh1paih/image/upload/v1560172705/ParcBalneairePrado_zgylkg.jpg', latitude: '43.2644828', longitude: '5.3701694')
  place.activities << activity4

activity5 = Activity.create!(name: 'Volleyball')

Activity.create!(name: 'Volleyball')

  place = Place.create!(name: 'Beach Volley-Ball - Plage des Catalans', address: 'Plage des Catalans, 13007 - MARSEILLE', accessibility: 'A 15 minutes à pied du Vieux Port', schedules: 'Ouvert tous les jours : 08:30-20:00', pictures: 'https://res.cloudinary.com/deqh1paih/image/upload/v1560157826/BeachVolleyCatalans_frovyf.png', latitude: '43.2905667', longitude: '5.3576104')
  place.activities << activity5
  place = Place.create!(name: 'Beach Volley-Ball - Plage des Prophètes', address: 'Corniche, Président John Fitzgerald Kennedy, 13007 - Marseille', accessibility: 'Proximité arrêt de bus - Le Prophete', schedules: 'Ouvert 24/24', pictures: 'https://res.cloudinary.com/deqh1paih/image/upload/v1560157967/BeachvolleyProphetes_fixsnp.png', latitude: '43.2730287', longitude: '5.3624088')
  place.activities << activity5

activity6 = Activity.create!(name: 'Skatepark')

Activity.create!(name: 'Skatepark')
  place = Place.create!(name: 'Skatepark de la Friche', address: '41 Rue Jobin, 13003 - MARSEILLE', accessibility: 'Arret de bus Belle de Mai la Friche', schedules: 'Accès libre', pictures: 'https://res.cloudinary.com/deqh1paih/image/upload/v1560171002/SkateParkLAFriche_bjqh8x.png', latitude: '43.3100509', longitude: '5.3889157')
  place.activities << activity6

  place = Place.create!(name: 'Skatepark Le Bowl', address: '197 avenue Pierre Mendès, 13008 - MARSEILLE', accessibility: 'Arret de bus vieille Chapelle à 5 min', schedules: '24/24', pictures: 'https://res.cloudinary.com/deqh1paih/image/upload/v1560171026/skateParkLeBowl_zxmkxp.png', latitude: '43.251908', longitude: '5.3724182')
  place.activities << activity6

  place = Place.create!(name: 'Stade Rouvier', address: '16 Avenue de la Barquière, 13009 - MARSEILLE', accessibility: 'Arret de bus Barquière Bartheline', schedules: 'Accès libre', pictures: 'https://res.cloudinary.com/deqh1paih/image/upload/v1560171045/SkateParkRouvier_jirnhw.png', latitude: '43.2452845', longitude: '5.3958586')
  place.activities << activity6

  place = Place.create!(name: 'Parc Athéna', address: 'Rue Albert Einstein, 13013 - MARSEILLE', accessibility: '-', schedules: '-', pictures: '', latitude: '43.3403844', longitude: '5.4456326')
  place.activities << activity6

  place = Place.create!(name: 'Plage du David', address: '99 Prom. Georges Pompidou, 13008 - MARSEILLE', accessibility: 'Arret de bus Einstein Athena à 10 min', schedules: 'Acces libre', pictures: '', latitude: '43.3401163', longitude: '5.4448449')

activity7 = Activity.create!(name: 'Fitness')

Activity.create!(name: 'Fitness')
  place = Place.create!(name: 'Street workout park - Parc borely', address: 'Avenue du Prado, 13008 - MARSEILLE', accessibility: 'Situé proche de l entrée Prado 2', schedules: 'Ouvert tous les jours : 06:00-20:45', pictures: '', latitude: '43.261652', longitude: '5.3800873')
  place.activities << activity7

  place = Place.create!(name: 'Calisthenics Park - Plage de David', address: '109 Avenue Pierre Mendès, 13008 - MARSEILLE', accessibility: 'Situé à quelques mètres de la plage', schedules: 'Ouvert 24/24', pictures: 'https://res.cloudinary.com/deqh1paih/image/upload/v1560174155/StreetWorkoukParkpierreMendes_tcvjqe.png', latitude: '43.2603506', longitude: '5.3740163')
  place.activities << activity7

  place = Place.create!(name: 'Fitness Trail - Parc de la colline Saint-Joseph', address: '180 Boulevard Du Redon, 13009 - MARSEILLE', accessibility: 'Proximité arret de bus la Rouvière', schedules: 'Ouvert tous les jours : 08:00-20:00', pictures: '', latitude: '43.2498404', longitude: '5.418973')
  place.activities << activity7
  place = Place.create!(name: 'Outdoor Pull Up Bar', address: '29, Rue Plumier La Joliette, 13002 - MARSEILLE', accessibility: 'Directement sur le trottoir', schedules: '24/24 - Libre accès', pictures: '', latitude: '43.304286', longitude: '5.3679845')
  place.activities << activity7

  place = Place.create!(name: 'Fitness Trail - Parc de Font Obscure', address: 'Avenue Corot, Saint-Barthélém, 13014 - MARSEILLE', accessibility: 'Proximité arret de bus Champfleuri', schedules: 'Ouvert 24/24', pictures: '', latitude: '43.3265116', longitude: '5.4008685')
    place.activities << activity7

activity8 = Activity.create!(name: 'Pingpong')

Activity.create!(name: 'Pingpong')
  place = Place.create!(name: 'Pingpong', address: ' MARSEILLE', accessibility: 'accès libre', schedules: '-', pictures: '', latitude: '', longitude: '')
  place.activities << activity8

  place = Place.create!(name: 'Pingpong', address: ' MARSEILLE', accessibility: 'accès libre', schedules: '-', pictures: '', latitude: '', longitude: '')
  place.activities << activity8

  place = Place.create!(name: 'Pingpong', address: ' MARSEILLE', accessibility: 'accès libre', schedules: '-', pictures: '', latitude: '', longitude: '')
  place.activities << activity8

  place = Place.create!(name: 'Pingpong', address: ' MARSEILLE', accessibility: 'accès libre', schedules: '-', pictures: '', latitude: '', longitude: '')
  place.activities << activity8

  place = Place.create!(name: 'Pingpong', address: ' MARSEILLE', accessibility: 'accès libre', schedules: '-', pictures: '', latitude: '', longitude: '')
  place.activities << activity8
  Place.create!(name: 'Pingpong', address: ' MARSEILLE', accessibility: 'accès libre', schedules: '-', pictures: '', latitude: '', longitude: '')
  Place.create!(name: 'Pingpong', address: ' MARSEILLE', accessibility: 'accès libre', schedules: '-', pictures: '', latitude: '', longitude: '')
  Place.create!(name: 'Pingpong', address: ' MARSEILLE', accessibility: 'accès libre', schedules: '-', pictures: '', latitude: '', longitude: '')
  Place.create!(name: 'Pingpong', address: ' MARSEILLE', accessibility: 'accès libre', schedules: '-', pictures: '', latitude: '', longitude: '')
  Place.create!(name: 'Pingpong', address: ' MARSEILLE', accessibility: 'accès libre', schedules: '-', pictures: '', latitude: '', longitude: '')

