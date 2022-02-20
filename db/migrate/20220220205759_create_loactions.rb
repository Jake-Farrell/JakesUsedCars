class CreateLoactions < ActiveRecord::Migration[7.0]
  def change
    create_table :loactions do |t|

      t.timestamps
    end
  end
end
