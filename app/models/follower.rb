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
		if @age > cult.minimum_age
			BloodOath.new(cult, self)
		else
			puts "You're too young, #{@name}. Get out lol."
		end
	end

	def bloodoaths
		BloodOath.all.select {|oath| oath.follower == self}
	end

	def cults
		self.bloodoaths.map {|oath| oath.cult}
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
		max = nil
		@@all.each {|follower|
			max = follower if max == nil
			max = follower if follower.cults.count > max.cults.count
		}
		max
	end

	def self.top_ten
		empty = Follower.new("", 0, "")
		top10 = []
		10.times {top10 << empty}
		@@all.each {|follower|
			for k in 0..9 do
				top10[k] = follower if top10[k] == empty  && !top10.include?(follower)
				top10[k] = follower if follower.cults.count > top10[k].cults.count && !top10.include?(follower)
			end
		}
		@@all.delete(empty)
		top10.uniq
	end
end
