require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

flatiron = Cult.new("The Flatiron School", "New York", 2012, "Learn. Love. Code.", 21)
marta = Cult.new("MARTA-cult", "Georgia", 2019, "Ride or Die", 28)
tamu = Cult.new("Texas A&M University", "Texas", 1871, "Gigem, Aggies!", 400)
uta = Cult.new("UT Austin", "Texas", 1916, "Disciplina Praesidium Civitatis", 18)


deka = Follower.new("Deka Ambia", 32, "motto")
andrew = Follower.new("Andrew Allen", 24, "motto")
tun = Follower.new("Tun Khine", 38, "motto")
tez = Follower.new("Montez Smith", 30, "motto")
paula = Follower.new("Paula Tulis", 0, "motto")

flatiron.recruit_follower(tez)
tez.join_cult(marta)

tun.join_cult(flatiron)
tun.join_cult(marta)
tun.join_cult(uta)

marta.recruit_follower(paula)

andrew.join_cult(tamu)

BloodOath.new(marta, deka, "1/1/2000")










binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
