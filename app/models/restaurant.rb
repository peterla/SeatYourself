class Restaurant < ActiveRecord::Base

  has_many :reservations
  has_many :users, through: :reservations
  belongs_to :cuisine
  has_many :reviews
  has_many :users, through: :reviews
  belongs_to :user

  def available?(date, time, party_size)
    party_size <= available_capacity(date, time)
  end

  private

  def available_capacity(date, time)
    self.capacity - self.reservations.where(date: date, time: time).sum(:party_size)
  end

end
