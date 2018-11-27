require_relative '../config/environment.rb'
require 'time'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


a = Cult.new("Rajneeshpuram", "Antelope", 1981, "Baghwan is the best!", 45)
b = Cult.new("Scientology", "New York", 1977, "Time to go clear!", 18)
c = Cult.new("Blue Man Group", "Las Vegas", 1995, "...", 15)
d = Cult.new("Green Man Group", "Las Vegas", 1996, "We hate blue!", 0)

q = Follower.new("Chris", 26, "Yolo")
w = Follower.new("Dick", 36, "I need a sign!")
e = Follower.new("Mike", 18, "I'm impressionable!")

z = BloodOath.new(q,a)
w.join_cult(b)
e.join_cult(b)
c.recruit_follower(w)

z.initiation_date = ("2017-10-22")


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
