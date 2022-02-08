class CreateCarModels < ActiveRecord::Migration[7.0]
  def change
    create_table :car_models do |t|
      t.integer :year
      t.string :manufacturer
      t.string :model
      t.integer :cylinders
      t.string :fueltype
      t.string :drive
      t.string :type

      t.timestamps
    end
  end
end
