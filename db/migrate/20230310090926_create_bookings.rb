class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.belongs_to :flight, foreign_key: true
      t.belongs_to :user, foreign_key: true
      t.string :source
      t.string :destination
      t.integer :price

      t.timestamps
    end
  end
end
