class Rating < ApplicationRecord
  belongs_to :pet
  belongs_to :user
  validates :comment, :rate, presence: true
end
