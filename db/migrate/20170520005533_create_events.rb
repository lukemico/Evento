class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :date
      t.decimal :cost
      t.text :description
      t.text :image
      t.integer :event_type_id
      t.integer :location_id

      t.timestamps
    end
  end
end
