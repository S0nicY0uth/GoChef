# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


users = [
    {email: 'gordonramsey@gmail.com',password: 'pass123',name: 'Gordon Ramsey',location_lat: '51.512640',location_lon:'-0.090390'},
    {email: 'deliasmith@gmail.com',password: 'pass123',name: 'Delia Smith',location_lat: '51.512427',location_lon:'-0.164376'},
    {email: 'ainsleyharriet@gmail.com',password: 'pass123',name: 'Ainsley Harriet',location_lat: '51.485949',location_lon:'-0.106183'}

User.create!(name: 'Bella', email: 'bella@dogchow.com', location_lat: 51.533593, location_lon: -0.045855, password: 'pass123')

User.create!(name: 'Vikram', email: 'vik@indianfood4u.com', location_lat: 51.536233, location_lon: -0.021151, password: 'pass123')

User.create!(name: 'Jamie O', email: 'jamie@oliver.com', location_lat: 51.535739, location_lon: -0.077700, password: 'pass123')

