class Flavor < ActiveRecord::Base
	has_many :recipe_flavors
	has_many :recipes, through: :recipe_flavors
end
