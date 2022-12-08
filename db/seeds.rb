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
Driver.create(name: "admin", age: 0, country: "admin", username: "admin", password: "12345", car: "admin", bio: "admin", admin: true)
10.times { 
    country = ["France", "Germany", "Spain", "Portugal", "Italy", "India", "United Kingdonm", "Mexico", "USA"]
    Driver.create(
        name: Faker::FunnyName.name,
        age: "#{rand(24..40)} years old",
        country: country.sample,
        username: "#{Driver.name}123$",
        password_digest: Faker::Team.state,
        car: "car goes here",
        bio: "bio goes here",
        admin: false
    )
}

puts "Creating Tracks"

Track.create(
    name: "Rainbow Road",
    location: "Deep Space",
    length: "3.5 km",
    year_of_construction: "1992",
    history: "The final course in all Mario Kart games, and a true test of skill needing speed as well as finese to succed."
)

Track.create(
    name: "Koopa Troopa Beach",
    location: "Koopa Troopa Beach",
    length: "4.75",
    year_of_construction: "1996",
    history: "Named after the Koopa Troopa rock formation at the start line. This is a great scenic race that will have a nice view, just watch out for the crabs! Also the first course to ever feature a shortcut."
)

Track.create(
    name: "DK Summit",
    location: "DK Mountain Resort",
    length: "6.25 km",
    year_of_construction: "2008",
    history: "At the summit near a very popular mountain resort, you will reach very fast speeds as well as steep declines on your way to the bottom. Be careful not to hit the skiers visiting the resort."

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
