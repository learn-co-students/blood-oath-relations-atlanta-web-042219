class Bloodoath

  attr_accessor :cult, :initiation_date, :follower
  @@all = []

    def initialize(cult, initiation_date, follower)
      @cult = cult
      @initiation_date = initiation_date
      @follower = follower
      @@all << self
    end

    def self.all
      @@all
    end

end
