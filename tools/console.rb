require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

flatiron = Cult.new("Flatiron School", "NYC", 2012, "Live Love Code")
charmed = Cult.new("Charmed", "Salem, MA", 1600, "The Power of Three")
marta = Cult.new("MARTA cult", "Atlanta, GA", 2006, "Ride or Die")

tez = Follower.new("Tez", 30, "Survive")
tun = Follower.new("Tun", 38, "I got you")
paula = Follower.new("Paula", 500, "I'm tired")

oath1 = BloodOath.new(flatiron, tez, 2018)
oath2 = BloodOath.new(marta, tun, 2019)
oath3 = BloodOath.new(charmed, paula, 2000)

flatiron.recruit_follower(tez)
binding.pry



puts "Mwahahaha!" # just in case pry is buggy and exits
