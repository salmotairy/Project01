class Photo < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :album
  has_and_belongs_to_many :people
end
