class Sheep < ApplicationRecord
  has_many :bookings
  belongs_to :user
  validates :name, :location, :breed, :weight, presence: true
  validates :name, uniqueness: true
  has_one_attached :photo
end
