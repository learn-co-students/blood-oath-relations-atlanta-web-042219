class Follower

  attr_accessor :name, :age, :motto

  @@all = []

    def initialize(name, age, motto)
      @name = name
      @age = age
      @motto = motto
      @@all << self
    end

    def self.all
      @@all
    end

    def cults

      myoaths = Bloodoath.all.select do |oath|
         oath.follower == self
       end

      myoaths.map do |oath|
       oath.cult
      end

    end

    def join_cult(cult, initiation_date)
      Bloodoath.new(cult,initiation_date,self)
    end

    def self.of_a_certain_age(age)

       self.all.select do |follower|
         follower.age >= age
       end


    end

end
