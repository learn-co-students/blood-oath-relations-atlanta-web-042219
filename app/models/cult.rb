class Cult

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

  def recruit_follower(follower, date)
    BloodOath.new(self, follower, date)
  end

  def cult_population
    BloodOath.all.select {|oath| oath.cult == self}.length
  end

  def self.find_by_name(name)
    all.find {|cult| cult.name == name}
  end

  def self.find_by_location(location)
    all.find {|cult| cult.location == location}
  end

  def self.find_by_founding_year(year)
    all.find {|cult| cult.founding_year == year}
  end

  def followers
    BloodOath.all.select {|oath| oath.cult == self}.map {|oath| oath.follower}
  end

  def average_age
    followers.map {|follower| follower.age}.sum.to_f / followers.length.to_f
  end

  def my_followers_mottos
    followers.each {|follower| puts follower.life_motto}
  end

  def self.least_popular
    all.sort_by {|cult| cult.followers.length}.first
  end

  def self.most_common_location
    locations = {}
    all.each do |cult|
      if locations[cult.location]
        locations[cult.location] += 1
      else
        locations[cult.location] = 1
      end
    end
    locations.sort_by {|k, v| v}.last[0]
  end

  def minimum_age
    return 18
    #when initializing a bloodoath, check the age
    #if age is < 18, reject
    #if age is >18, complete initiation
  end

  def recruit_follower(follower, date)
    if follower.age > minimum_age
      BloodOath.new(self, follower, date)
    else
      "NOPE"
    end
  end



end
