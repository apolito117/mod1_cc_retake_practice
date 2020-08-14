# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

pizza_recipe = Recipe.new("Pizza", "Bake dough with sauce along with cheese.")
pizza_recipe

blueberry_pie = Recipe.new("Blueberry pie", "Bake dough with berries and yum yums.")
blueberry_pie




# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
