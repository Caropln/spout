
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
