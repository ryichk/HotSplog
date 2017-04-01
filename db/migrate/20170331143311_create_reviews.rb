class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :rate
      t.text :review
      t.string :image
      t.integer :spring_id

      t.timestamps
    end
  end
end
