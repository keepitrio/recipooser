class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
  	create_table :recipes do |t|
  		t.string :title
  		t.string :image_url
  		t.text :ingredients
  		t.text :directions
  		t.integer :servings
  		t.integer :time
  		t.integer :recipebook_id
  		t.integer :source_id

  		t.timestamps
  	end
  end
end
