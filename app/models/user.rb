class User < ActiveRecord::Base
  has_secure_password

  has_many :reservations
  has_many :restaurants, through: :reservations
  has_many :reviews, through: :restaurants


  validates :first_name,:last_name,:email,:phone_number, presence: true


end
