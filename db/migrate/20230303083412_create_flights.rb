class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.string :flight_no
      t.string :flight_name
      t.string :source
      t.string :destination
      t.datetime :takeoff_time
      t.datetime :landing_time
      t.integer :price
      t.integer :total_seats
      t.integer :available_seats
      t.integer :occupied_seats

      t.timestamps null: false
    end
  end
end
