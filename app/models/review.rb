class Review < ActiveRecord::Base
  mount_uploader :image, ImageUploader
end
