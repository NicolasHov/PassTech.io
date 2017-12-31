class CreateBootcamps < ActiveRecord::Migration[5.1]
  def change
    create_table :bootcamps do |t|
      t.string :name
      t.string :city
      t.string :cursus

      t.timestamps
    end
  end
end
