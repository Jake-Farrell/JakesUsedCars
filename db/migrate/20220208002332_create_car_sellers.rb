class CreateCarSellers < ActiveRecord::Migration[7.0]
  def change
    create_table :car_sellers do |t|
      t.string :name
      t.integer :age
      t.text :phoneNumber
      t.text :email

      t.timestamps
    end
  end
end
