require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

flatiron_school = Cult.new("Flatiron School", "NYC", 2001, "Learn Love Code")
chickfila = Cult.new("Chick Fil A", "Atlanta", 1800, "Eat Mor Chken")
vegans = Cult.new("Veganology", "Atlanta", 2019, "Starve")

tez = Follower.new("Tez", 30, "Laugh")
hanaa = Follower.new("Hanaa", 25, "Eat")
rose = Follower.new("Rose", 22, "Fear is the enemy")
kayleigh = Follower.new("Kayleigh", 12, "I'll just wait until you go to bed")

bloodoath1 = BloodOath.new(flatiron_school, tez, "2018-03-08")
bloodoath5 = BloodOath.new(chickfila, tez, "2018-03-08")
bloodoath2 = BloodOath.new(flatiron_school, hanaa, "2018-07-18")
bloodoath3 = BloodOath.new(chickfila, rose, "2018-18-06")
bloodoath4 = BloodOath.new(chickfila, hanaa, "2018-05-18")



binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
