class Customer < ActiveRecord::Base
  has_many :reviews
  has_many :restaurants, through: :reviews
    
  def full_name
    return (self.first_name.concat) + ( self.last_name.concat)
  end

  def favorite_restaurant
    return self.restaurants.max_by{ |t| t.reviews.count}
  end

  def add_review(restaurant, rating)
    new_review = Review.create(restaurant_id: restaurant.id, star_reviews: rating, customer_id: self.id)
  end

  def delete_reviews(restaurant)
    self.reviews.delete{ |t| t.restaurant.reviews }
    # self.reviews.delete(restaurant_id: restaurant)
    # self.restaurant.delete(reviews)
    # self.restaurant.delete(star_reviews: restaurant.star_reviews)
  end

end