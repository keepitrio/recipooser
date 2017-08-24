class CreateSources < ActiveRecord::Migration[5.1]
  def change
  	create_table :sources do |t|
  		t.string :source_recipe_url
  		t.string :source_site_url
  		t.string :source_display_name
  		t.integer :recipe_id

  		t.timestamps
  	end
  end
end
