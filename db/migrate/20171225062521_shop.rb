class Shop < ActiveRecord::Migration[5.0]
  def change
    create_table :shops do |t|
      t.string :name
    end
  end
end
