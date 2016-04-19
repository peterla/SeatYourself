FactoryGirl.define do
  factory :reservation1, class: 'Reservation' do
    user_id 1
    restaurant_id 1
    date "2016-05-31"
    time "18:00"
    party_size 1
  end

  factory :reservation2, class: 'Reservation' do
    user_id 1
    restaurant_id 1
    date "2016-05-31"
    time "18:00"
    party_size 5
  end

  factory :reservation3, class: 'Reservation' do
    user_id 1
    restaurant_id 1
    date "2016-06-22"
    time "19:00"
    party_size 6
  end
end
