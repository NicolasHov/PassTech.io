class AddLatitudeToBootcamps < ActiveRecord::Migration[5.1]
  def change
    add_column :bootcamps, :latitude, :float
  end
end
