class RemoveUserIdFromBookings < ActiveRecord::Migration[7.0]
  def change
    remove_reference :bookings, :user, null: false, foreign_key: true
  end
end
