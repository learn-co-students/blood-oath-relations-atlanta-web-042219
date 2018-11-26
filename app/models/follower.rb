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

  def self.of_age(age)
    self.all.select do |follower|
      follower.age > age
    end
  end

  def blood_oaths
    BloodOath.all.select do |blood_oath|
      blood_oath.follower == self
    end
  end

  def cults
    blood_oaths.map do |blood_oath|
      blood_oath.cult
    end
  end

  def join_cult(cult)
    BloodOath.new(self, cult)
  end

end
