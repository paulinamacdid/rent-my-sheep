class Sheep < ApplicationRecord
  has_many :bookings
  belongs_to :user
  validates :name, :image_url, :location, :breed, :weight, presence: true
  validates :name, uniqueness: true
end
