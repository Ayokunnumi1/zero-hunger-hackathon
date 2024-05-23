class CreateConsumers < ActiveRecord::Migration[7.1]
  def change
    create_table :consumers do |t|
      t.string :name
      t.string :phone_number

      t.timestamps
    end
  end
end
