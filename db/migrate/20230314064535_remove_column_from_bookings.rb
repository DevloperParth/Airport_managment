class RemoveColumnFromBookings < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :source, :string
  end
end
