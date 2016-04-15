# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Cuisine.create!(
  :cuisine_type => "mexican"
)


Cuisine.create!(
  :cuisine_type => "chinese"
)

Cuisine.create!(
  :cuisine_type => "japanese"
)

Restaurant.create!(
  :name => "Lone Star Tex Mex Restaurant",
  :address => "123 Lone Star Blvd",
  :phone_number=>  "4161234567",
  :cuisine_id => 1,
  :capacity=> 100
)

Restaurant.create!(
  :name => "Congee Queen",
  :address => "98 Beijing St",
  :phone_number => "6471234791",
  capacity:  100
)

Restaurant.create!(
  :name => "Haruba Japanese Restaurant",
  :address => "455 Tokyo St",
  :phone_number =>  "9054326980",
  :cuisine_id =>  3,
  :capacity =>  100
)

User.create!(
  :first_name => "Francis",
  :last_name => "Gallo",
  :email => "francis.gallo@gmail.com",
  :password => "1234",
  :phone_number => "6470938472"
)

User.create!(
  :first_name =>  "Peter",
  :last_name =>  "La",
  :email =>  "peter.la@gmail.com",
  :password => "1234",
  :phone_number =>  "4161234579"
)

User.create!(
  :first_name => "Mike",
  :last_name => "Thai",
  :email => "mike.thai@gmail.com",
  :password => "1234",
  :phone_number => "9053769372"
)
