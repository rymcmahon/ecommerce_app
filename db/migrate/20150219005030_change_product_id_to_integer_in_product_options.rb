class ChangeProductIdToIntegerInProductOptions < ActiveRecord::Migration
  def change
  	change_table :product_options do |t|
  		t.change :product_id, :integer
  	end
  end
end
