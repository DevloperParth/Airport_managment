class RemoveDesFromBookings < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :destination, :string
  end
end
