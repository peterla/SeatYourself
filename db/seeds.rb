# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Cuisine.destroy_all
Restaurant.destroy_all
User.destroy_all
Reservation.destroy_all
Review.destroy_all

Cuisine.create!(
  :cuisine_type => "Sandwiches"
)

Cuisine.create!(
  :cuisine_type => "Seafood"
)

Cuisine.create!(
  :cuisine_type => "Japanese"
)

Cuisine.create!(
  :cuisine_type => "Italian"
)

Cuisine.create!(
  :cuisine_type => "Mexican"
)

# Restaurants:

Restaurant.create!(
  :name => "Grand Electric",
  :address => "1330 Queen Street West",
  :phone_number=>  "(416) 627-3459",
  :cuisine_id => 5,
  :capacity=> 100,
)

Restaurant.create!(
  :name => "Ciccio's Pizza and Pasta",
  :address => "796 Dundas Street West,",
  :phone_number => "(416) 363-8686",
  :cuisine_id => 4,
  :capacity => 100,
)

Restaurant.create!(
  :name => "Guu",
  :address => "559 Bloor Street West",
  :phone_number =>  "647-343-1101",
  :cuisine_id =>  3,
  :capacity =>  100,
)

Restaurant.create!(
  :name => "Mean Bao",
  :address => "167 Bathurst Street",
  :phone_number =>  "(416) 862-7737",
  :cuisine_id =>  1,
  :capacity =>  100,
)

Restaurant.create!(
  :name => "San Francesco Sandwiches",
  :address => "609 Queen St. West",
  :phone_number =>  "(647) 350-8325",
  :cuisine_id =>  1,
  :capacity =>  100,
)

Restaurant.create!(
  :name => "Oyster Boy",
  :address => "872 Queen Street West",
  :phone_number =>  "(416) 534-3432",
  :cuisine_id =>  2,
  :capacity =>  100,
)

Restaurant.create!(
  :name => "North of Brooklyn Pizzeria",
  :address => "650 Queen Street West",
  :phone_number =>  "(647) 352-5700",
  :cuisine_id =>  4,
  :capacity =>  100,
)

Restaurant.create!(
  :name => "North of Brooklyn Pizzeria",
  :address => "650 Queen Street West",
  :phone_number =>  "(647) 352-5700",
  :cuisine_id =>  4,
  :capacity =>  100,
)

Restaurant.create!(
  :name => "Fresh Off the Boat",
  :address => "404 Queen Street West",
  :phone_number =>  "(416) 603-3333",
  :cuisine_id =>  2,
  :capacity =>  100,
)

Restaurant.create!(
  :name => "Kingyo Izakaya",
  :address => "51B Winchester Street",
  :phone_number =>  "(647) 748-2121",
  :cuisine_id =>  3,
  :capacity =>  100,
)

# Users:

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
#
# Reservation.create!(
#   :user_id => 1,
#   :restaurant_id => 1,
#   :date => "2016-01-01",
#   :time => "08:00",
#   :party_size => 6
# )
#
# Reservation.create!(
#   :user_id => 1,
#   :restaurant_id => 3,
#   :date => "2016-01-02",
#   :time => "08:00",
#   :party_size => 8
# )
#
# Reservation.create!(
#   :user_id => 2,
#   :restaurant_id => 1,
#   :date => "2016-04-16",
#   :time => "12:00",
#   :party_size => 2
# )
#
# Reservation.create!(
#   :user_id => 2,
#   :restaurant_id => 2,
#   :date => "2016-04-15",
#   :time => "16:00",
#   :party_size => 4
# )
#
# Reservation.create!(
#   :user_id => 3,
#   :restaurant_id => 3,
#   :date => "2016-04-12",
#   :time => "18:00",
#   :party_size => 8
# )
