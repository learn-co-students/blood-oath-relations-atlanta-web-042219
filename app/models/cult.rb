class Cult

  attr_accessor :name, :location, :founding_year, :slogan

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
    self.all.find do |cult|
      cult.name == name
    end
  end

  def self.find_by_location(location)
    self.all.select do |cult|
      cult.location == location
    end
  end

  def self.find_by_founding_year(year)
    self.all.select do |cult|
      cult.founding_year == year
    end
  end

  def self.least_popular
    self.all.min_by do |cult|
      cult.followers.length
    end
  end

  def self.cult_locations
    locations = {}
    self.all.each do |cult|
      if !locations[cult.location]
        locations[cult.location] = 1
      else
        locations[cult.location] += 1
      end
    end
    return locations
  end

  def self.most_common_location
    location = cult_locations.max_by do |location, count|
      count
    end
    location[0]
  end

  def blood_oaths
    BloodOath.all.select do |bloodoath|
      bloodoath.cult == self
    end
  end

  def followers
    blood_oaths.map do |bloodoath|
      bloodoath.follower
    end
  end

  def cult_population
    followers.length
  end

  def recruit_follower(follower)
    BloodOath.new(follower, self)
  end

  def average_age
    total_age = followers.reduce(0) do | sum, follower |
     sum + follower.age
   end
   total_age / followers.length
  end

  def my_followers_mottos
    followers.map do |follower|
      follower.life_motto
    end
  end


end
