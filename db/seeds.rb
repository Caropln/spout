# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  User.destroy_all

    Caroline = User.create!(
  username: "carot",
  firstname: "Caroline",
  lastname: "Plin",
  address: "199 rue de rome",
  tel: "0655694535",
  birth_date: "1996/05/01",
  email:"caroline@gmail.com",
  password:"carolinecaroline"
  )
