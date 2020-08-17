# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

recipe1 = Recipe.new("Pizza", "Bake dough with sauce along with cheese.")
recipe2 = Recipe.new("Blueberry pie", "Bake dough with berries and yum yums.")
recipe3 = Recipe.new("burger", "meatncheese")

guy_fieri = RestaurantOwner.new("guy", 23)
bobbyflay = RestaurantOwner.new("bobby", 26)

flavortown = Restaurant.new(guy_fieri, "flavortown", 4)
noodletown = Restaurant.new(guy_fieri, "noodletown", 3)
burgertown = Restaurant.new(guy_fieri, "burgertown", 2)
pizzatown = Restaurant.new(guy_fieri, "pizzatown", 5)

pizza = MenuItem.new(flavortown, recipe1, 4.00)
pie = MenuItem.new(flavortown, recipe2, 3.00)
burger = MenuItem.new(burgertown, recipe3, 3.00)


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
