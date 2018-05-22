class Car < ApplicationRecord
  belongs_to :user

  validates :make, presence: true
  validates :rental_rate, presence: true
  validates :registration_number, presence: true
  validates :photo, presence: true
  validates :description, presence: true
end
