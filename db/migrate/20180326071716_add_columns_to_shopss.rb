class AddColumnsToShopss < ActiveRecord::Migration[5.0]
  def change
  	add_reference :shops, :user, index: true
  end
end
