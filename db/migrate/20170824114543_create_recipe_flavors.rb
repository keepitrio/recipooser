class CreateRecipeFlavors < ActiveRecord::Migration[5.1]
  def change
  	create_table :recipe_flavors do |t|
  		t.integer :recipe_id
  		t.integer :flavor_id

  		t.timestamps
  	end
  end
end
