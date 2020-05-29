require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

flatiron = Cult.new("Flatiron School", "Salem, PA", 2012, "Life Learn Code")
whiches = Cult.new("Witches", "Witchtown", 2002, "Hocus Pocus")
bros = Cult.new("Bro cult", "Atlanta, GA", 2010, "Beer me now")

tun = Follower.new("Tun", 38, "Always sleep")
tez = Follower.new("Tez", 30, "I got you")
hannah = Follower.new("Hannah", 28, "Hello")

oath1 = BloodOath.new(flatiron, tun)
oath2 = BloodOath.new(bros, tez)
oath3 = BloodOath.new(whiches, hannah)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
