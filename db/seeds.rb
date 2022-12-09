# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Deleting Drivers..."
puts "Deleting Tracks..."
puts "Deleting Time_Trials..."


puts "Creating Drivers!"
Driver.create(name: "Mario", age: 41, country: "Muchroom Kingdom", username: "Mario64", password: "12345", car: "Standard Kart", bio: "Small town plumber ", admin: true)
Driver.create(name: "Luigi", age: 39, country: "Muchroom Kingdom", username: "Luigi#1", password: "12345", car: "Standard Bike", bio: "Living in Marios Shadow", admin: false)
Driver.create(name: "Peach", age: 37, country: "Muchroom Kingdom", username: "PrincessPeach", password: "12345", car: "Classic Dragster", bio: "Peach", admin: false)
Driver.create(name: "Daisy", age: 33, country: "Sarasaland", username: "Daisy", password: "12345", car: "Mach Bike", bio: "Daisy", admin: false)
Driver.create(name: "Bowser", age: 37, country: "Bowsers Castle", username: "KingKoopa", password: "12345", car: "Flame Flyer", bio: "Mario can't stop me forever", admin: false)
Driver.create(name: "Wario", age: 30, country: "Muchroom Kingdom", username: "Wario", password: "12345", car: "Wario Bike", bio: "Mario Anti Hero", admin: false)
Driver.create(name: "Waluigi", age: 22, country: "Muchroom Kingdom", username: "WAHHHHHHH", password: "12345", car: "Mach Bike", bio: "Still not in Smash Bros", admin: false)
Driver.create(name: "Donkey Kong", age: 41, country: "Donkey Kong Country", username: "DonkeyKong", password: "12345", car: "Offroader", bio: "DK Donkey Kong!!", admin: false)
Driver.create(name: "Yoshi", age: 32, country: "Yoshi's Island", username: "Yoshi", password: "12345", car: "Mach Bike", bio: "Yoshi Yoshiiii", admin: false)
Driver.create(name: "Toad", age: 37, country: "Muchroom Kingdom", username: "Toad", password: "12345", car: "Bit Bike", bio: "Toad", admin: false)
# 10.times { 
#     country = ["France", "Germany", "Spain", "Portugal", "Italy", "India", "United Kingdonm", "Mexico", "USA"]
#     Driver.create(
#         name: Faker::FunnyName.name,
#         age: "#{rand(24..40)} years old",
#         country: country.sample,
#         username: "#{Driver.name}123$",
#         password_digest: Faker::Team.state,
#         car: "car goes here",
#         bio: "bio goes here",
#         admin: false
#     )
# }

puts "Creating Tracks"

Track.create(
    name: "Rainbow Road",
    location: "Deep Space",
    length: "6.25 km",
    description: "A True test of skill!"
)

Track.create(
    name: "Koopa Troopa Beach",
    location: "Koopa Troopa Beach",
    length: "4.75",
    description: "scenic drive, but watch out for the crabs!"
)

Track.create(
    name: "DK Summit",
    location: "DK Mountain Resort",
    length: "6.25 km",
    description: "Downhill Drive at a ski resort"
)

Track.create(
    name: "Wario Stadium",
    location: "Wario World",
    length: "7.00 km",
    description: "Huge Dirt track great for DirtBikes"
)

Track.create(
    name: "Bowser's Castle",
    location: "Bowser's Castle",
    length: "5.35 km",
    description: "Downhill Drive at a ski resort"
)

Track.create(
    name: "Yoshi Falls",
    location: "Yoshi's Island",
    length: "4.75 km",
    description: "Downhill Drive at a ski resort"
)

Track.create(
    name: "Delfion Square",
    location: "Isle Delfino",
    length: "6.25 km",
    description: "Downhill Drive at a ski resort"
)

Track.create(
    name: "Ghost Valley",
    location: "Boo Lake",
    length: "6.25 km",
    description: "Downhill Drive at a ski resort"
)

Track.create(
    name: "Toads Turnpike",
    location: "Mushroom Kingdom",
    length: "6.25 km",
    description: "Downhill Drive at a ski resort"
)
puts "creating times..."

50.times {
    TimeTrial.create(
        track_id: Track.all.ids.sample,
        driver_id: Driver.all.ids.sample,
        Lap_Time: rand(60..90),
        date: Faker::Date.between(from: '2022-05-01', to: '2022-10-31')
    )
}


puts "Done Creating!!"
