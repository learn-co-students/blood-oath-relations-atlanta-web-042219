

class BloodOath

  attr_accessor :follower, :cult, :initiation_date


  @@all = []

  def initialize(follower, cult)
    @follower = follower
    @cult = cult
    @initiation_date = "#{Time.now.year}-#{Time.now.month}-#{Time.now.day}"
    @@all << self
  end

  def self.all
    @@all
  end

  def self.first_oath
    oath_sort = self.all.sort_by do |oath|
      Time.parse(oath.initiation_date)
    end
    oath_sort[0].follower
  end


end
