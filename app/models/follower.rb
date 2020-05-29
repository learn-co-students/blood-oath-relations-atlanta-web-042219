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
    BloodOath.all.select { |cult| cult.follower == self}
  end

  def join_cult(cult)
    BloodOath.new(cult, self)
  end

  def self.of_a_certain_age(age)
    @@all.select { |cult| cult.age >= age}
  end

end
