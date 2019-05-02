class Follower

  attr_accessor :name, :age, :life_motto

  @@all = []

  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto
    @@all << self
  end

  def self.all
    @@all
  end

  def cults
    arr_cults = []
    BloodOath.all.each do |oath|
      if oath.follower == self
        arr_cults << oath.cult
      end
    end
    arr_cults
  end

  def join_cult(cult, date)
    BloodOath.new(cult, self, date)
  end

  def self.of_a_certain_age(age)
    all.select {|follower| follower.age >= age}
  end

  def my_cults_slogans
    self.cults.each {|cult| puts cult.slogan}
  end

  def self.most_active
    all.sort_by {|follower| follower.cults.length}.last
  end

  def self.top_ten
    all.sort_by {|follower| follower.cults.length}.reverse[0..9]
  end

  def fellow_cult_members
    cults.map {|cult| cult.followers}.flatten.uniq.reject{|follower| follower == self}
  end

  def join_cult(cult, date)
    if self.age >= cult.minimum_age
      BloodOath.new(cult, self, date)
    else
      "LOL"
    end
  end
end
