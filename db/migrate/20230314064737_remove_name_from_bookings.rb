class RemoveNameFromBookings < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :name, :string
  end
end
