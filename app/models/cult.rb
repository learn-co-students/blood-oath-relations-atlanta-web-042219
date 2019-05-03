class ClassName
    attr_accessor :name, :location, :slogan
    attr_reader :founding_year

    @@all = []

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self       
    end

    def self.all
        @@all
    end
end