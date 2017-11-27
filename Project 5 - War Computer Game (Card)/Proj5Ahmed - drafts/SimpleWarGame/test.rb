require './SimpleWarGame'

# Instantiate SimpleWarGame object
# and print it to make sure everything
# is initialized properly.
swg = SimpleWarGame.new
print swg, "\n\n"

# Complete ten plays of game
(1..10).each do
  swg.play
  print swg, "\n\n"
end

# Show results of five complete games.
print "Winner  Plays\n"
print "======  =====\n"
(1..5).each do
	swg = SimpleWarGame.new
	swg.finish_game
end