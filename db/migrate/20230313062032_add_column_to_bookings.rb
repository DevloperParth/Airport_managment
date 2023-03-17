class AddColumnToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :name, :string
    add_column :bookings, :email, :string
    add_column :bookings, :mobile_no, :integer
    add_column :bookings, :no_of_passengers, :integer
    add_column :bookings, :booking_date, :datetime
  end
end
