require 'test_helper'

class ReservationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'cannot make a reservation at a restaurant that is full' do
    r = FactoryGirl.create :full_restaurant
    reservation = FactoryGirl.create :reservation2
    assert_not r.available?("2016-05-31", "18:00", 1), 'Able to make a reservation at a restaurant that is full'
  end
end
