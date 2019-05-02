class Cult
  attr_reader :name, :location, :founding_year, :slogan

  @@cults = []

  def initialize(name, location, founding_year, slogan)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan
    @@cults << self
  end

  def self.all
    @@cults
  end

  def self.find_by_name(name)
    @@cults.find { |cult| cult.name == name }
  end

  def recruit_follower(follower)
    BloodOath.new('2019-05-02', follower, self)
  end

  def cult_population
    BloodOath.all.select { |oath| oath.cult == self }.count
  end
end
