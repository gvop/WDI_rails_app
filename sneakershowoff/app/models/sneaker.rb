class Sneaker < ActiveRecord::Base
  acts_as_votable
  acts_as_commentable
  
  belongs_to :user
  belongs_to :make
  mount_uploader :image, ImageUploader


  default_scope -> { where(created_at: :asc) }
end
