class Pet < ApplicationRecord
  belongs_to :user
  has_one :booking
  validates :name, :location, :age, :race, :type, :photo_url, :price, presence: true
end
