class BloodOath
	attr_accessor :cult, :follower, :initiation_date
	@@all = []

	def self.all
		@@all
	end

	def initialize(cult, follower, initiation_date=Time.now.strftime("%d/%m/%Y"))
		@cult = cult
		@follower = follower
		@initiation_date = initiation_date
		@@all << self
	end

	def self.first_oath
		dates_hash = {}
		@@all.each {|oath|
			dates_hash[oath.follower] = oath.initiation_date.split("/").reverse
		}
		sorted_dates = dates_hash.values.sort
		test = self.find_by_date(sorted_dates[0].reverse.join("/"))
	end

	def self.find_by_date(date)
		@@all.find {|oath| oath.initiation_date == date}
	end
end
