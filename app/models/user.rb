class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable

  enum :role , {passenger:'passenger', admin:'admin'}, prefix: true 
  #enum role: [:passenger, :admin]

  has_many :bookings
  has_many :flights , :through => :bookings
end
