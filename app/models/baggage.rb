class Baggage < ApplicationRecord
  belongs_to :booking
 #enum status: [:checked, :onboard, :lost]
   enum :status , {checked:'checked', onboard:'onboard' , lost: 'lost'}
  validates :weight, presence: true
  validates :status, presence: true

end
