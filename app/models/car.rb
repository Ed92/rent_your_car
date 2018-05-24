class Car < ApplicationRecord
  include AlgoliaSearch

  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :make, presence: true
  validates :rental_rate, presence: true
  # validates :registration_number, presence: true
  validates :photo, presence: true
  validates :description, presence: true

  algoliasearch do
    attribute :make, :rental_rate, :description

    searchableAttributes['make']

    customRanking ['desc(rental_rate)']

  end

end
