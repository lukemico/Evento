class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :state
      t.string :street
      t.integer :postcode
      t.string :suburb
      t.string :street_number
      t.string :country

      t.timestamps
    end
  end
end
