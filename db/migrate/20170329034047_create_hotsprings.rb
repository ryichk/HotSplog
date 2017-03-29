class CreateHotsprings < ActiveRecord::Migration
  def change
    create_table :hotsprings do |t|
      t.string :name
      t.text :place
      t.text :efficacy
      t.text :cost
      t.timestamps
    end
  end
end
