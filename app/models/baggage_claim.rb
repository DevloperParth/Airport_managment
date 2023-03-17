class BaggageClaim < ApplicationRecord
  belongs_to :booking
  enum :status, { lost: 'lost', damaged: 'damaged' }
  validates :description, presence: true
  validates :status, presence: true
end
