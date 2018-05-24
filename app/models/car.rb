class Car < ApplicationRecord
  include AlgoliaSearch

  belongs_to :user
  has_many :bookings, dependent: :destroy

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :make, presence: true
  validates :rental_rate, presence: true
  # validates :registration_number, presence: true
  validates :photo, presence: true
  validates :description, presence: true


   mount_uploader :photo, PhotoUploader

  algoliasearch do
    attribute :make, :rental_rate, :description

    searchableAttributes['make']

    customRanking ['desc(rental_rate)']

  end


end
