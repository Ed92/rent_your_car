class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :cars
  has_many :bookings

  # validates :location, presence: true
  # validates :name, presence: true
  # validates :driving_license, acceptance: true
  # validates :date_of_birth, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
