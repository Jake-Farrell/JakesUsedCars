class CreateCarLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :car_locations do |t|
      t.string :state
      t.decimal :lat
      t.decimal :lng
      t.string :region

      t.timestamps
    end
  end
end
