class Photo < ApplicationRecord
  belongs_to :user
  belongs_to :place
  has_many :places
  has_many :captions
  # text field called caption
  text_field :caption
  # place_id
end
