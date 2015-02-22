class ChangeProductIdToIntegerInProductOptions < ActiveRecord::Migration
  def change
  	change_table :product_options do |t|
  		t.change :product_id, :integer, 'integer USING CAST(product_id AS integer)'
  	end
  end
end
