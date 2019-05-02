require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

flatiron = Cult.new('Flatiron School', 'Atlanta, Ga', 2018, 'Learn. Love. Code.')
chikfila = Cult.new('Chik-fil-a', 'Chickentown, USA', 1864, 'Eat all thee cows???')
evan = Follower.new('Evan', 25, 'life motto ;)')
knife_cut = BloodOath.new('2019-05-02', evan, flatiron)
chikfila.recruit_follower(evan)
wework = Cult.new('WeWork', 'NYC', 1876, 'WE WE WE WE WE WE WE WE WE')

roni = Follower.new('Roniece Ricardo', 23, "fork repos, git $$$$")
flatiron.recruit_follower(roni)
# wework.recruit_follower(roni)
roni.join_cult(wework)

# evan.cults # => [flatiron, chikfila]
# roni.cults # => [flatiron, wework]
# wework.cult_population => 1
# flatiron.cult_population => 2

binding.pry



puts "Mwahahaha!" # just in case pry is buggy and exits
