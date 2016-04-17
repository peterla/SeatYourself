class Reservation < ActiveRecord::Base

  belongs_to :user
  belongs_to :restaurant

  validate :less_than_max_capacity

  protected

  def less_than_max_capacity
    other_people = Reservation.where(date: self.date, time: self.time).sum(:party_size)
    binding.pry
    if other_people + self.party_size > self.restaurant.capacity

      errors.add(:base, "Sorry, too many people!")
    end
  end

end
