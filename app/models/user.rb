class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :cars, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_one :profile
  before_create :build_profile


  # validates :location, presence: true
  # validates :name, presence: true
  # validates :driving_license, acceptance: true
  # validates :date_of_birth, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
