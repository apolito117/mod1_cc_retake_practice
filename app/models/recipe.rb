class Recipe

    attr_writer :description
    attr_reader :name, :description
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

end