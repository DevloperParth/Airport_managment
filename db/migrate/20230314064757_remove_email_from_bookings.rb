class RemoveEmailFromBookings < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :email, :string
  end
end
