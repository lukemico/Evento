class AddLongLatToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :longitude, :string
    add_column :users, :latitude, :string

  end
end
