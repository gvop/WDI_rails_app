class Make < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  has_many :sneakers

  default_scope -> { order ('name ASC')}
  default_scope -> { limit (10) }

end
