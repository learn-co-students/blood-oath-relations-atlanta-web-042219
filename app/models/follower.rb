class Follower
	attr_accessor :name, :age, :life_motto, :cults, :bloodoaths
	@@all = []

	def self.all
		@@all
	end

	def initialize(name, age, life_motto)
		@name = name
		@age = age
		@life_motto = life_motto
		@@all << self
	end

	def join_cult(cult)
		BloodOath.new(self, cult)
	end

	def passes_age_req?(age_req)
		@age >= age_req
	end

	def bloodoaths
		BloodOath.all.select {|oath| oath.follower == self}
	end

	def cults
		self.bloodoaths.map(&:cult)
	end

	def my_cults_slogans
		self.cults.each {|cult| puts cult.slogan }
	end

	def fellow_cult_members
		fellow_members = []
		self.cults.each {|cult|
			cult.followers.each {|follower|
				fellow_members << follower if follower != self
			}
		}
		fellow_members.uniq
	end

	def self.of_a_certain_age(age)
		@@all.select {|follower| follower.age == age}
	end

	def self.most_active
		self.all.max_by {|follower| follower.cults.count}
	end

	def self.top_ten
		self.all.sort_by {|follower| follower.cults.count}.reverse.first(10)
	end
end
