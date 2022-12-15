class Review < ActiveRecord::Base
  belongs_to :customer
  belongs_to :restaurant

  def full_review
    return "Review for #{restaurant.name} by #{customer.first_name} #{customer.last_name}: #{self.star_reviews} stars"
  end
  # Review for {insert restaurant name} by {insert customer's full name}: {insert review star_rating} stars.

    
end