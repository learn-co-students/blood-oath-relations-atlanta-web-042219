require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

flatiron = Cult.new("The Flatiron School", "New York", 2012, "Learn. Love. Code.", 21)
marta = Cult.new("MARTA-cult", "Georgia", 2019, "Ride or Die", 28)
tamu = Cult.new("Texas A&M University", "Texas", 1871, "Gigem, Aggies!", 18)
uta = Cult.new("UT Austin", "Texas", 1916, "Disciplina Praesidium Civitatis", 18)

tun = Follower.new("Tun Khine", 38, "motto")
tez = Follower.new("Montez Smith", 30, "motto")
andrew = Follower.new("Andrew Allen", 24, "motto")
deka = Follower.new("Deka Ambia", 32, "motto")
paula = Follower.new("Paula Tulis", 0, "motto")

#tun is in all 4 cults
# tun.join_cult(flatiron)
# tun.join_cult(marta)
# tun.join_cult(tamu)
# tun.join_cult(uta)

# #tez is in 3 cults
# tez.join_cult(flatiron)
# tez.join_cult(marta)
# tez.join_cult(uta)

#andrew is in 2 cults
BloodOath.new(andrew, tamu, "1/1/2005")
BloodOath.new(andrew, uta, "1/3/2004") #first

#deka is in 1 cult
BloodOath.new(deka, marta, "2/1/2004")

#paula is in 0 cults

#followers who don't pass the age requirement are rejected...
#regardless if they are recruited or try to join themselves
marta.recruit_follower(andrew)
paula.join_cult(flatiron)

binding.pry
0