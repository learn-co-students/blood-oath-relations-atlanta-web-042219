class Cult

attr_accessor :name, :location, :follower, :bloodoath, :founding_year, :slogan

@@all = []

  def initialize(name,location,founding_year,slogan)
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
   @@all.find { | cult | cult.name == name  }
 end

 def recruit_follower(follower)
   BloodOath.new(self,follower)
 end

 def bloodoaths
   BloodOath.all.select { |oath| oath.cult == self }
 end

 def followers
   self.bloodoaths.map { |oath| oath.follower }
 end

 def cult_population

 end

end
