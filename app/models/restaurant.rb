class Restaurant < ActiveRecord::Base
  has_many :reviews
  has_many :customers, through: :reviews
    
  def Restaurant.fanciest
    Restaurant.all.max_by{ |c| c.price}
  end

  def all_reviews
    return self.reviews.map["Review for #{self.name} by #{customers.name} #{customers.last_name}: #{reviews.star_reviews}",]
  end
  #Review for {insert restaurant name} by {insert customer's full name}: {insert review star_rating} stars.",
  
end