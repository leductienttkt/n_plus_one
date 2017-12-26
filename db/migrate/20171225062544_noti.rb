class Noti < ActiveRecord::Migration[5.0]
  def change
    create_table :notis do |t|
      t.string :resource_type
      t.integer :resource_id
    end
  end
end
