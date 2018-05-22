class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car

  validates :price, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :address, presence: true
end
