class Sneaker < ActiveRecord::Base
  belongs_to :user
  belongs_to :make
  mount_uploader :image, ImageUploader
end
