class AddLatitudeAndLongitudeToConsumers < ActiveRecord::Migration[7.1]
  def change
    add_column :consumers, :latitude, :float
    add_column :consumers, :longitude, :float
  end
end
