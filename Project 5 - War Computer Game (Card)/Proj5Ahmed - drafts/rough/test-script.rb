#Faizan Ahmed
#10/7/2015
#Project 5 - Test file 

require './WarGame'

# Instantiate SimpleWarGame object. 
war = WarGame.new
print war, "\n\n"

=begin
# Complete ten plays of game
(1..10).each do
  war.play
  print war, "\n\n"
end

# Show results of five complete games.
print "Winner  Plays\n"
print "======  =====\n"
(1..5).each do
	war = WarGame.new
	war.finish_game
	print " %3s %4d\n" %
    [war.winner, war.num_plays]
end
=end