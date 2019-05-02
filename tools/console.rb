require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

flatiron = Cult.new("Flatiron School", "Manhattan, NY", 2012, "Live Love Code")
charmed = Cult.new("Charmed Ones", "Salem, MA", 1600, "The Power of Three will set us free")
marta = Cult.new("MARTA-cult", "Atl, GA", 2019, "Ride or Die")

tez = Follower.new("Tez", 30, "My mission in life is not only to thrive but to survive...")
tun = Follower.new("Tun", 38, "I got you")
paula = Follower.new("Paula", 500, "I'm tired")

oath1 = BloodOath.new(flatiron,tez)
oath2 = BloodOath.new(marta, tun)
oath3 = BloodOath.new(charmed, paula)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
