class Restaurant

    attr_accessor :restaurant_owner, :name, :star_rating
    
    @@all = []

    # CARYN SAYS: make sure you're naming everything correctly. 
    # it should be owner, not restaurant_owner 
    def initialize(restaurant_owner, name, star_rating)
        @restaurant_owner = restaurant_owner
        @name = name
        @star_rating = star_rating
        @@all << self
    end

    def self.all
        @@all
    end

    def menu_items
        MenuItem.all.filter { |menu| menu.restaurant == self }
    end

    # redundant method(?)
    # CARYN SAYS: exactly! only redundant b/c you changed what the instance variable is called 
    def owner
        self.restaurant_owner
    end

    def recipes
        # CARYN SAYS: almost! good use of menu_items method but then you need to get the recipe instances associated with those 
        menu_items.map {|mi| mi.restaurant.menu_items }.uniq
    end
end