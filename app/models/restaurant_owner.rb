class RestaurantOwner
    
    attr_accessor :name, :age
    attr_reader :name, :age
    @@all = []

    def initialize(name, age)
        @name = name
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end

    def restaurants
        Restaurant.all.filter { |r| r.restaurant_owner == self }
    end

    def menu_items
        restaurants.map {|rest| rest.menu_items}
    end


end
