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

end
