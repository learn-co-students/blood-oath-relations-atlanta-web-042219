class Cult
	attr_accessor :name, :location, :founding_year, :slogan, :minimum_age
	@@all = []

	def self.all
		@@all
	end

	def initialize(name, location, founding_year, slogan, minimum_age)
		@name = name
		@location = location
		@founding_year = founding_year
		@slogan = slogan
		@minimum_age = minimum_age
		@@all << self
	end

	def recruit_follower(follower)
		BloodOath.new(follower, self)
	end

	def bloodoaths
		BloodOath.all.select {|oath| oath.cult == self}
	end

	def followers
		self.bloodoaths.map(&:follower)
	end

	def population
		self.followers.count
	end

	def average_age
		total = 0.0
		self.followers.each {|follower| total += follower.age}
		total/self.followers.count
	end

	def my_followers_mottos
		self.followers.each{|follower| puts follower.life_motto}
	end

	def self.find_by_location(location)
		@@all.select {|cult| cult.location == location }
	end

	def self.find_by_founding_year(year)
		@@all.select {|cult| cult.founding_year == year }
	end

	def self.least_popular
		min = nil
		@@all.each {|cult|
			min = cult if min == nil
			min = cult if cult.followers.count < min.followers.count
		}
		min
	end

	def self.most_common_location
		cult_hash = {}
		@@all.each {|cult|
			cult_hash[cult.location] ||= 0
			cult_hash[cult.location]  += 1
		}
		cult_hash.max_by{|k,v| v}[0].to_s
	end
end
