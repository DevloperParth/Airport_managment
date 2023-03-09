class CreateRoutes < ActiveRecord::Migration[7.0]
  def change
    create_table :routes do |t|
      t.string :name
      t.integer :flight_id,  foreign_key: true 
      t.timestamps
    end
  end
end
