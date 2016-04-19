FactoryGirl.define do
  factory :restaurant do
    name "Burger's Priest"
    cuisine_id 1
    address "123 Adelaide St. W"
    phone_number "1234567"
    capacity 25
  end

  factory :full_restaurant, class: 'Restaurant' do
    name "Bymark"
    cuisine_id 1
    address "28 Wellington St."
    phone_number "2882828"
    capacity 5
  end
end
