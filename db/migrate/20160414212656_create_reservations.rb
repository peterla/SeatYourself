class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :user_id
      t.integer :restaurant_id
      t.string :date
      t.string :time
      t.integer :party_size

      t.timestamps null: false
    end
  end
end
