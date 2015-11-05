class Make < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  has_many :sneakers

  default_scope -> { order ('name ASC')}
  default_scope -> { limit (10) }


  def latest
    sneakers.order("created_at desc")
  end

  def total_likes
    sneakers.reduce(0) do |sum, sneaker| 
      sum + sneaker.get_upvotes.count
    end
  end

  def fresh_in
    sneakers.order('created_at ASC').first(5)
  end

end
