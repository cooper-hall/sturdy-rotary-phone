class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :star_reviews
      t.integer :customer_id
      t.integer :restaurant_id
    end
  end
end
