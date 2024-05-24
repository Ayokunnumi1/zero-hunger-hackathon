class CreateConsumers < ActiveRecord::Migration[7.1]
  def change
    create_table :consumers do |t|
      t.string :phone_number
      t.string :name

      t.timestamps
    end
  end
end
