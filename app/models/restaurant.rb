class Restaurant < ActiveRecord::Base

  has_many :reservations
  has_many :users, through: :reservations
  belongs_to :cuisine
  has_many :reviews
  has_many :users, through: :reviews

end
