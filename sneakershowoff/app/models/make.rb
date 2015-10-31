class Make < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  has_many :sneakers
end
