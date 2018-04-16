# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name: 'Bella', email: 'bella@dogchow.com', location_lat: 51.533593, location_lon: -0.045855, password: 'pass123')

User.create!(name: 'Vikram', email: 'vik@indianfood4u.com', location_lat: 51.536233, location_lon: -0.021151, password: 'pass123')

User.create!(name: 'Jamie O', email: 'jamie@oliver.com', location_lat: 51.535739, location_lon: -0.077700, password: 'pass123')