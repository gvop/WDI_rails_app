class Make < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  has_many :sneakers

  default_scope -> { order('name ASC').limit(10) }

  def self.most_popular
    all.sort do |make1, make2| 
      make2.total_likes <=> make1.total_likes
    end
  end

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
