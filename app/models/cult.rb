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

  def recruit_follower(initiation_date, follower)
    Bloodoath.new(self,initiation_date,follower)
  end

  def cult_population
    #What bloodaoths belong to me (the cult)?
    #What followers are part of those bloodoaths
    #Then count the number of followers in that bloodoath

    myoaths = Bloodoath.all.select do |oath|
      oath.cult == self
    end

    myoaths.map do |oath|
       oath.follower
    end

    myoaths.count

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

  def self.find_by_founding_year(founding_year)
    self.all.select do |cult|
      cult.founding_year == founding_year
    end
  end


end
