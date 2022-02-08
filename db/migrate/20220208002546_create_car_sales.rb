class CreateCarSales < ActiveRecord::Migration[7.0]
  def change
    create_table :car_sales do |t|
      t.decimal :price
      t.integer :odometer
      t.string :condition
      t.string :VIN
      t.text :description
      t.string :transmission
      t.references :car_seller, null: false, foreign_key: true
      t.references :car_model, null: false, foreign_key: true
      t.references :car_location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
