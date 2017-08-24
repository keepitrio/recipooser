class CreateFlavors < ActiveRecord::Migration[5.1]
  def change
  	create_table :flavors do |t|
  		t.string :name
  		t.integer :value

  		t.timestamps
  	end
  end
end
