class Flight < ApplicationRecord
  validates :flight_no, presence: true
  validates :flight_name, presence: true
  validates :source, presence: true
  validates :destination, presence: true
  validates :takeoff_time, presence: true
  validates :landing_time, presence: true
  validates :price, presence: true
  validates :total_seats, presence: true
  validates :available_seats, presence: true
  validates :occupied_seats, presence: true
  has_one :route
end