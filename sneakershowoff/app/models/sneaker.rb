class Sneaker < ActiveRecord::Base
  belongs_to :user
  belongs_to :make
  mount_uploader :image, ImageUploader

  default_scope -> { order(created_at: :asc) }
  scope :reversed, -> { order(created_at: :asc) }
end
