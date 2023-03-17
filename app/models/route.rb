class Route < ApplicationRecord
  belongs_to :flight
  validates_uniqueness_of :flight_id
end
