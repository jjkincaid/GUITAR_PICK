# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Rental.destroy_all
Guitar.destroy_all
User.destroy_all

User.create!(username: "Thomas", email: "tho@gmail.com", password: "123456", description: "rockeur fou")
User.create!(username: "Marion", email: "mar@gmail.com", password: "123456", description: "rockeuse de diamant")
User.create!(username: "Jessica", email: "jes@gmail.com", password: "123456", description: "USA ROCKS!")
User.create!(username: "Aurelien", email: "aur@gmail.com", password: "123456", description: "celui qui ne sait jouer de rien")

Guitar.create!(name: "Awesome vintage Fender Stratocaster", description: "Nice 1964 Fender Stratocaster, perfect for any type of music", brand: "Fender", category: "Electric Guitars", location: "Paris", daily_price: 160.50, user: User.all.sample)
Guitar.create!(name: "Taylor 114ce Walnut", description: "A very pure sound and a very fine material, a perfect body zise with an extraordinary griff.", brand: "Taylor", category: "Acoustic Guitars", location:"London", daily_price: 80.20, user: User.all.sample)

Rental.create!(starting_date: DateTime.parse("09/01/2022 09:00"), end_date: DateTime.parse("12/01/2022 17:00"), status: "nil" , user: User.first, guitar: Guitar.all.sample )
Rental.create!(starting_date: DateTime.parse("01/03/2022 11:00"), end_date: DateTime.parse("04/03/2022 18:00"), status: "nil", user: User.second, guitar: Guitar.all.sample)
