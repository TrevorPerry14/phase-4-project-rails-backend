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
20.times { 
    country = ["France", "Germany", "Spain", "Portugal", "Italy", "India", "United Kingdonm", "Mexico", "USA"]
    Driver.create(
        name: Faker::FunnyName.name,
        age: "#{rand(24..40)} years old",
        country: country.sample,
        username: "#{Driver.name}123$",
        password: Faker::Team.state,
    )
}

puts "Creating Tracks"

Track.create(
    name: "Bahrain International Circut",
    location: "Sakhir Bahrain",
    length: "5.412 km"
)

Track.create(
    name: "Silverstone Circut",
    location: "Northamptonshire England",
    length: "5.891 km" 
)

Track.create(
    name: "Circut Of The Americas",
    location: "Austin, TX USA",
    length: "5.514 km"
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
