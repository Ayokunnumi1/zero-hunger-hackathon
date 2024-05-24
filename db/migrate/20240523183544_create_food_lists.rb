class CreateFoodLists < ActiveRecord::Migration[7.1]
  def change
    create_table :food_lists do |t|
      t.string :food_name
      t.integer :food_amount
      t.date :donate_date
      t.string :collected_from
      t.string :donar_name

      t.timestamps
    end
  end
end
