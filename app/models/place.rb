class Place < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :photos
  has_many :captions
  validates :name, :address, :description, presence: true
  validates :name, length: { minimum: 4 }
  geocoded_by :address
  after_validation :geocode
  validates :name, presence: true
  self.per_page = 10
end
