class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :review_id
      t.text :text

      t.timestamps null: false
    end
  end
end
