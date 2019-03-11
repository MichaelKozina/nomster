class Photo < ApplicationRecord
  belongs_to :user
  belongs_to :place
  has_many :places
  has_many :captions  
  
  mount_uploader :picture, PictureUploader
end
