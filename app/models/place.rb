class Place < ApplicationRecord
  belongs_to :user
  validates :name, :address, :description, presence: true
  validates :name, length: { minimum: 4 }
  geocoded_by :address
  after_validation :geocode
  validates :name, presence: true
end
