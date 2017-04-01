class Review < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  belongs_to :user
  has_many :comments
end
