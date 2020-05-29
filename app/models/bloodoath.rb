class BloodOath
    attr_accessor :date, :cult, :follower

    @@all = []

    def initialize (cult, follower, date)
        @date = date
        @cult = cult
        @follower = follower
        @@all << self
    end

    def self.all
        @@all
    end

    def initiation_date
        self.date.to_s
    end

end