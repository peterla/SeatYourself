class AddRestaurantIdUserIdToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :restaurant_id, :integer
    add_column :reviews, :user_id, :integer
  end
end
