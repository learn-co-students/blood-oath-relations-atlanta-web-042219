class BloodOath

  attr_accessor :follower, :cult
  attr_reader :initiation_date

  @@all = []

  def initialize(follower, cult)
    @follower = follower
    @cult = cult
    @initiation_date = "#{Time.now.year} - #{Time.now.month} - #{Time.now.day}"
    @@all << self
  end

  def self.all
    @@all
  end


end
