class Cult

  attr_accessor :name, :location, :follower, :bloodoath, :founding_year, :slogan

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

  def recruit_follower(follower)
    BloodOath.new(self, follower)
    # instance method
  end

  def cult_population
    BloodOath.all.map { |pop| pop.follower}.count
  end


    # def bloodoaths
    #   BloodOath.all.select { |oath| oath.cult == self}
    # end
    # #
    # def followers
    #   self.bloodoaths.map { |oath| oath.follower}
    # end

  def self.find_by_name(name)
    @@all.select { |cult| cult.name == name }[0]
    # or @@all.find { |cult| cult.name == name }
  end

  def self.find_by_location(location)
    @@all.select { |cult| cult.location == location}
  end

  def self.find_by_founding_year(founding_year)
    Cult.all.find { |cult| cult.founding_year == founding_year}
  end

end
