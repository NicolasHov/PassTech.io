class AddLongitudeToBootcamps < ActiveRecord::Migration[5.1]
  def change
    add_column :bootcamps, :longitude, :float
  end
end
