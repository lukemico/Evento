class CreateEventTypesEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :event_types_events do |t|
      t.integer :event_type_id
      t.integer :event_id
    end
  end
end
