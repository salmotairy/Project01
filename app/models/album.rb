class Album < ApplicationRecord
  mount_uploader :image, ImageUploader
end
