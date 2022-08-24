require "open-uri"

Rental.destroy_all
Guitar.destroy_all
User.destroy_all

User.create!(username: "Thomas", email: "tho@gmail.com", password: "123456", description: "rockeur fou")
User.create!(username: "Marion", email: "mar@gmail.com", password: "123456", description: "rockeuse de diamant")
User.create!(username: "Jessica", email: "jes@gmail.com", password: "123456", description: "USA ROCKS!")
User.create!(username: "Aurelien", email: "aur@gmail.com", password: "123456", description: "celui qui ne sait jouer de rien")

file = URI.open("https://d1aeri3ty3izns.cloudfront.net/media/38/382873/600/preview_3.jpg")
guitar1 = Guitar.new(name: "Awesome vintage Fender Stratocaster", description: "Nice 1964 Fender Stratocaster, perfect for any type of music", brand: "Fender", category: "Electric", location: "Paris", daily_price: 160.50, user: User.all.sample)
guitar1.photo.attach(io: file, filename: "guitar1.png", content_type: "image/png")
guitar1.save

file = URI.open("https://www.guitaremag.com/wp-content/uploads/sites/2/2020/05/Taylor-Beauty-guitar-on-sofa-1170x780.jpg")
guitar2 = Guitar.create!(name: "Taylor 114ce Walnut", description: "A very pure sound and a very fine material, a perfect body size with an extraordinary griff.", brand: "Taylor", category: "Acoustic", location:"London", daily_price: 80.20, user: User.all.sample)
guitar2.photo.attach(io: file, filename: "guitar2.png", content_type: "image/png")
guitar2.save

file = URI.open("https://res.cloudinary.com/dtxhgfzpd/image/upload/v1661331180/production/pexels-photo-3428498_mkfcay.jpg")
guitar3 = Guitar.create!(name: "Epiphone DR-100", description: "Just starting out? This is the best acoustic guitar for you.", brand: "Epiphone", category: "Acoustic", location:"Boulogne", daily_price: 50.00, user: User.all.sample)
guitar3.photo.attach(io: file, filename: "guitar3.png", content_type: "image/png")
guitar3.save

file = URI.open("https://res.cloudinary.com/dtxhgfzpd/image/upload/v1661331210/production/pexels-photo-92069_frooyb.jpg")
guitar4 = Guitar.create!(name: "Fender Player Stratocaster", description: "The sonically flexible Player Stratocaster HSS is packed with authentic Fender feel and style.", brand: "Fender", category: "Electric", location:"Clichy", daily_price: 110.50, user: User.all.sample)
guitar4.photo.attach(io: file, filename: "guitar4.png", content_type: "image/png")
guitar4.save

file = URI.open("https://res.cloudinary.com/dtxhgfzpd/image/upload/v1661332423/production/pexels-photo-7626333_wzv0yd.jpg")
guitar5 = Guitar.create!(name: "Kurt Cobain Jag-Stang", description: "This Jag-Stang comes equipped with the same features that made it Kurt’s ideal instrument.", brand: "Fender", category: "Electric", location:"Montrouge", daily_price: 150.00, user: User.all.sample)
guitar5.photo.attach(io: file, filename: "guitar5.png", content_type: "image/png")
guitar5.save

file = URI.open("https://res.cloudinary.com/dtxhgfzpd/image/upload/v1661335948/production/AD17Blacktop-Gallery_1_bugm9u.jpg")
guitar6 = Guitar.create!(name: "Taylor AD17 Blacktop", description: "The AD17 Blacktop is an all-acoustic guitar that blends a contemporary feel with a classic sound.", brand: "Taylor", category: "Acoustic", location:"Paris XX", daily_price: 92.00, user: User.all.sample)
guitar6.photo.attach(io: file, filename: "guitar6.png", content_type: "image/png")
guitar6.save

file = URI.open("https://res.cloudinary.com/dtxhgfzpd/image/upload/v1661334594/production/pexels-photo-12050940_ygzusm.jpg")
guitar7 = Guitar.create!(name: "Epiphone Les Paul Studio", description: "An incredible introduction to the world’s greatest electric guitar that is affordable for everyone.", brand: "Epiphone", category: "Electric", location:"Paris XI", daily_price: 35.00, user: User.all.sample)
guitar7.photo.attach(io: file, filename: "guitar7.png", content_type: "image/png")
guitar7.save

file = URI.open("https://res.cloudinary.com/dtxhgfzpd/image/upload/v1661337074/production/red_epiphone_bass_d5bcjz.jpg")
guitar8 = Guitar.create!(name: "Epiphone SG Bass E1 Cherry", description: "This bass makes the authentic SG shape available to all bass players with its easy to play neck and total fret access.", brand: "Epiphone", category: "Bass", location:"Paris III", daily_price: 45.00, user: User.all.sample)
guitar8.photo.attach(io: file, filename: "guitar8.png", content_type: "image/png")
guitar8.save

file = URI.open("https://res.cloudinary.com/dtxhgfzpd/image/upload/v1661335233/production/pexels-photo-625788_pr6lb9.jpg")
guitar9 = Guitar.create!(name: "Epiphone Bird DG1 Sunburst", description: "The Bird acoustic and electro- acoustic range is especially designed for beginner guitarists in mind.", brand: "Epiphone", category: "Acoustic", location:"Paris XIII", daily_price: 25.00, user: User.all.sample)
guitar9.photo.attach(io: file, filename: "guitar9.png", content_type: "image/png")
guitar9.save

file = URI.open("https://res.cloudinary.com/dtxhgfzpd/image/upload/v1661335752/production/AD27eFlametop-Gallery_1_hok7ge.jpg")
guitar10 = Guitar.create!(name: "Taylor AD27e Flametop", description: "The AD27e Flametop brings a new sonic flavor with an earthy, broken-in character.", brand: "Taylor", category: "Acoustic", location:"Paris IX", daily_price: 108.50, user: User.all.sample)
guitar10.photo.attach(io: file, filename: "guitar10.png", content_type: "image/png")
guitar10.save

file = URI.open("https://res.cloudinary.com/dtxhgfzpd/image/upload/v1661332933/production/pexels-photo-3807838_qlfxon.jpg")
guitar11 = Guitar.create!(name: "Fender Player Mustang", description: "Versatile sound, classic style.", brand: "Fender", category: "Bass", location:"Paris", daily_price: 90.50, user: User.all.sample)
guitar11.photo.attach(io: file, filename: "guitar11.png", content_type: "image/png")
guitar11.save

file = URI.open("https://res.cloudinary.com/dtxhgfzpd/image/upload/v1661336073/production/pexels-photo-8132484_ut2vcy.jpg")
guitar12 = Guitar.create!(name: "American Original Telecaster", description: "One of the most versatile guitars ever created, the Telecaster is easily at home in any genre.", brand: "Fender", category: "Electric", location:"Paris II", daily_price: 64.00, user: User.all.sample)
guitar12.photo.attach(io: file, filename: "guitar12.png", content_type: "image/png")
guitar12.save


Rental.create!(starting_date: DateTime.parse("09/01/2022 09:00"), end_date: DateTime.parse("12/01/2022 17:00"), status: "accepted" , user: User.first, guitar: Guitar.all.sample )
Rental.create!(starting_date: DateTime.parse("01/03/2022 11:00"), end_date: DateTime.parse("04/03/2022 18:00"), status: "pending", user: User.second, guitar: Guitar.all.sample)
Rental.create!(starting_date: DateTime.parse("01/09/2021 09:00"), end_date: DateTime.parse("12/09/2021 17:00"), status: "declined" , user: User.first, guitar: Guitar.all.sample )
Rental.create!(starting_date: DateTime.parse("01/04/2022 11:00"), end_date: DateTime.parse("04/04/2022 18:00"), status: "past", user: User.second, guitar: Guitar.all.sample)

# BRANDS =  ["Fender", "Gibson"]
# CATEGORIES = ["Electric", "Acoustic", "Bass"]
