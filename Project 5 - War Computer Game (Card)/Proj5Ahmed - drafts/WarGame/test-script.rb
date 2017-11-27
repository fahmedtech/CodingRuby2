require './Card'
require './Deck'
require './WarGame'

# Instantiate SimpleWarGame object
# and print it to make sure everything is initialized properly.
war = WarGame.new
print war, "\n\n"

print "--------------------------------------------\n"

# Complete ten plays of game
(1..10).each do
	war.play
  print war, "\n\n"
end

# checking number of cards == 52
if !war.total_cards_ok
	print "Error: losing or gaining cards\n"
else
	print war.total_cards_ok, "\n"
end

print "\n--------------------------------------------\n"

print "Winner  Plays\n"
print "======  =====\n"
(1..5).each do
	war = WarGame.new
	war.finish_game
end




