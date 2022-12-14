class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :pets, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :ratings, dependent: :destroy


  # ici on ressort les bookings qu'on a fait sur mes animaux
  has_many :requested_bookings, through: :pets, source: :bookings


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
