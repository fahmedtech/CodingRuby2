require './SimpleDeck'
require './DownStack'
require './SimpleWarGame'

class SimpleWarGame
	
	# We only need reader for @num_plays
	attr_reader :num_plays
	
  def initialize
  	
  	# Instantiate original deck.  This can be
  	# a local variable because because it is 
  	# only used in the initialize method.
  	orig_deck = SimpleDeck.new
  
    # Create downstacks for the two players.
  	@player_a = DownStack.new
  	@player_b = DownStack.new
  	
  	# Shuffle deck seven times.
  	(1..7).each do
  	  orig_deck.shuffle!
  	end
  	
  	# Deal out cards to the players to be 
  	# added to their downstacks
  	(1..10).each do
  		@player_a.add_to_top(orig_deck.deal)
   		@player_b.add_to_top(orig_deck.deal)
  	end
  	
  	# After initialization, no plays
  	# have yet occurred.
  	@num_plays = 0
  end
  
  # Return current state of OriginalWarGame object.
  def to_s
  	return %Q/Number of plays: #{@num_plays}
Player A Count: #{@player_a.count}
#{@player_a.to_s}
Player B Count: #{@player_b.count}
#{@player_b.to_s}/
  end
  
  # If either player is out of cards,
  # the other player wins.  If both players
  # still have cards, the game is not finished.
  # Note that there can be no ties with a 
  # SimpleDeck deck.
  def winner
    if @player_a.count == 0
    	return "B"
    elsif @player_b.count == 0
    	return "A"
    else
    	return nil
    end
  end
  
  # Complete one play of the game, where each
  # player turns over one card and the player with
  # the higher card takes both cards.
  def play
  	
  	# If there is a winner, don't continue
  	# play because game is over.
  	if winner
  		return
  	end
  
  	# Shuffling the downstacks before each play
  	# reduces the chance of a draw.
   	@player_a.shuffle!
  	@player_b.shuffle!
  	
  	# Each player 
  	card_a = @player_a.deal
  	card_b = @player_b.deal
  	
  	# Player a wins.
  	if card_a > card_b
  	  @player_a.add_to_bottom(card_a)	
  	  @player_a.add_to_bottom(card_b)	
  	
  	  # Player b wins.
   	elsif card_a < card_b
  	  @player_b.add_to_bottom(card_a)	
  	  @player_b.add_to_bottom(card_b)	
  	end
  	
  	# Update number of plays
  	@num_plays += 1
  	
  end
  
  # Finish a complete game.
  def finish_game
  	
  	until winner || @num_plays >= 1000
  		play
  	end
  	
  	print "%2s     %5d\n" % [winner, @num_plays]
  end
  
end
