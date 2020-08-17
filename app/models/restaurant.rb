class Restaurant

    attr_accessor :restaurant_owner, :name, :star_rating
    
    @@all = []

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
    def owner
        self.restaurant_owner
    end

    def recipes
        menu_items.map {|mi| mi.restaurant.menu_items }.uniq
    end
end