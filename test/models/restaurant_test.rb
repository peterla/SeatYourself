require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'one restaurant exists' do
    r = FactoryGirl.create :restaurant
    assert_equal 1, Restaurant.all.size, 'Number of restaurants was not equal to 1'
  end

  test 'restaurant has at least 1 seat available' do
    r = FactoryGirl.create :restaurant
    assert r.available?("2016-05-31", "18:00", 1), 'Restaurant has at least 1 seat available'
  end

  test 'restaurant is available at capacity' do
    r = FactoryGirl.create :restaurant
    assert r.available?("2016-05-31", "18:00", r.capacity), 'Restaurant cannot book up to capacity'
  end

  test 'restaurant cannot be available above to capacity' do
    r = FactoryGirl.create :restaurant
    assert_not r.available?("2016-05-31", "18:00", r.capacity + 1), 'Restaurant is available above capacity'
  end

  test 'restaurant can accept 1 reservation below capacity' do
    r = FactoryGirl.create :restaurant
    reservation = FactoryGirl.create :reservation1
    assert r.available?("2016-05-31", "18:00", 0), 'Restaurant cannot accept 1 reservation below capacity'
  end

  test 'restaurant cannot accept multiple reservations that add up to above capacity' do
    r = FactoryGirl.create :restaurant
    5.times do
      reservation = FactoryGirl.create :reservation2
    end
    assert_not r.available?("2016-05-31", "18:00", 5), 'Restaurant accepted multiple reservations that add up to above capacity'
  end
end
