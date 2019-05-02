class BloodOath
	attr_accessor :cult, :follower, :initiation_date
	@@all = []

	def self.all
		@@all
	end

	def initialize(cult, follower, initiation_date=Time.now.strftime("%m/%d/%Y"))
		@cult = cult
		@follower = follower
		@initiation_date = initiation_date
		@@all << self
	end

	def self.first_oath
		dates = []
		@@all.each {|oath|
			temp = oath.initiation_date.split("/").reverse
			temp[1], temp[2] = temp[2], temp[1]
			dates << temp
		}
		dates = dates.sort
		dates[0][1], dates[0][2] = dates[0][2], dates[0][1]
		self.find_by_date(dates[0].reverse.join("/"))
	end

	def self.find_by_date(date)
		@@all.find {|oath| oath.initiation_date == date}
	end
end
