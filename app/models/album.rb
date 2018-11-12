class Album < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :photos
end
