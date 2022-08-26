class Pet < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :ratings, dependent: :destroy
  validates :name, :location, :age, :race, :sexe, :photo_url, :price, presence: true
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  include PgSearch::Model
  pg_search_scope :global_search,
    against: [:race, :location],
    using: {
      tsearch: { prefix: true }
    }
end
