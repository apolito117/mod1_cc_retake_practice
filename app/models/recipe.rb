class Recipe
    # CARYN SAYS: good up for all the methods you got to! 
    
    attr_reader :name
    attr_accessor :description
    
    @@all = []
    
    
    def initialize(name, description)
        @name = name
        @description = description
        @@all << self
    end

    def self.all
        @@all
    end

    def menu_items
        MenuItem.all.filter { |menu| menu.recipe == self }
    end

    def restaurants
        menu_items.map { |menu| menu.restaurant }
    end

    def average_price
        self.menu_items.reduce(0){|sum, menu_item| sum + menu_item.price} / self.menu_items.count
    end
    
    # def highest_price
    #     self.all
    # end

end