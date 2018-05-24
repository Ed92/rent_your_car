class Car < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :make, presence: true
  validates :rental_rate, presence: true
  # validates :registration_number, presence: true
  validates :photo, presence: true
  validates :description, presence: true

   mount_uploader :photo, PhotoUploader
end
