class Recipe < ActiveRecord::Base
	belongs_to :source
	belongs_to :recipe_book
	has_many :recipe_flavors
	has_many :flavors, through: :recipe_flavors
end
