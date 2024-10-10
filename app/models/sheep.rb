class Sheep < ApplicationRecord
  has_many :bookings
  belongs_to :user
  validates :name, :location, :breed, :weight, presence: true
  validates :name, uniqueness: true
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
