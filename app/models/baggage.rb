class Baggage < ApplicationRecord
  belongs_to :booking
  has_one :baggage_claim, through: :booking
  enum :status, { checked: 'checked', onboard: 'onboard', lost: 'lost' }
  validates :weight, presence: true
  validates :status, presence: true
end
