class Follower
  attr_reader :name, :age, :life_motto

  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto
  end

  def cults
    my_oaths = BloodOath.all.select { |oath| oath.follower == self }
    my_oaths.map { |oath| oath.cult }
  end

  def join_cult(cult)
    BloodOath.new('2019-05-02', self, cult)
  end
end
