class Reservation < ActiveRecord::Base

  belongs_to :user
  belongs_to :restaurant

  validate :less_than_max_capacity

  protected

  def less_than_max_capacity
    if !self.restaurant.available?(self.date, self.time, self.party_size)
      errors.add(:base, "Sorry, too many people!")
    end
  end

end
