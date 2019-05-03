class Cult
    attr_accessor :name, :location, :follower, :bloodoath, :founding_year, :slogan, :join_date
    
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

    def self.find_by_name(name)
        @@all.find {|cult| cult.name == name}
    end

    def recruit_follower(follower)
        BloodOath.new(self, follower, join_date)
    end

    def bloodoaths
        BloodOath.all.select {|oath| oath.cult == self}
    end

    def followers
        self.bloodoaths.map {|f| f.follower}
    end

    def cult_population
        self.followers.count
    end

    def self.find_by_location(location)
        @@all.select {|cult| cult.location == location}
    end

    def self.find_by_funding_year(year)
        @@all.select {|cult| cult.founding_year == year}
    end
end