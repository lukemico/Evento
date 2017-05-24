class ChangeLongLatToFloat < ActiveRecord::Migration[5.0]
  def change
    change_column :locations, :latitude, :float
    change_column :locations, :longitude, :float
    change_column :users, :longitude, :float
    change_column :users, :latitude, :float
  end
end
