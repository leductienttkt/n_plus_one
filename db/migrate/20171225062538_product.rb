class Product < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.references :shop, foreign_key: true
    end
  end
end
