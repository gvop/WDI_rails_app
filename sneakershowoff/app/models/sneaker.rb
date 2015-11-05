class Sneaker < ActiveRecord::Base
  acts_as_votable
  acts_as_commentable
  
  belongs_to :user
  belongs_to :make
  mount_uploader :image, ImageUploader

  default_scope -> { order ('cached_votes_up DESC')}
  default_scope -> { limit (12) }
end
