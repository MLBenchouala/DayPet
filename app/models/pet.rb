class Pet < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :ratings, dependent: :destroy
  validates :name, :location, :age, :race, :sexe, :photo_url, :price, presence: true
end
