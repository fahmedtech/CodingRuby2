require './Deck'
require './DownStack'
require './WarGame'

class WarGame
	attr_reader :num_plays
	
  def initialize
  	
  	# Instantiate original deck.  
  	orig_deck = Deck.new
  	
    # Create downstacks for two players
  	@player_a = DownStack.new
  	@player_b = DownStack.new
  	@limbo_stack = DownStack.new
  	
  	# Shuffle 
  	(1..7).each do
  	  orig_deck.shuffle!
  	end
  	
  	# Deal out cards to players - added to their downstacks
  	(1..26).each do
  		@player_a.add_to_top(orig_deck.deal)
   		@player_b.add_to_top(orig_deck.deal)
  	end
  	
   # until @limbo_stack.empty?
    #	@player_a.add_to_bottom(@limbo_stack.deal)
    #end
    
    #until @limbo_stack.empty?
    #  @player_b.add_to_bottom(@limbo_stack.deal)
    #end
    
  	
  	# After initialization, no plays have yet occurred.
  	@num_plays = 0
  end
  
  #Method: If either player is out of cards, the other player wins. 
  #If both players still have cards, the game is not finished.
  def winner
    if @player_a.count == 0
    	return "B"
    elsif @player_b.count == 0
    	return "A"
    else
    	return nil
    end
  end
  
  #Method: Complete one play of the game, where each
  # player turns over one card & the player w/ higher card takes both cards.
  def play
  	
  	# If there is a winner - game is over.
  	if winner
  		return
  	end
  	
  	# Shuffling downstacks before each play - reduces chance of draw.
   	@player_a.shuffle!
  	@player_b.shuffle!
  	
  	# Each player 
  	card_a = @player_a.deal
  	card_b = @player_b.deal
  	
  	# if Player a wins.
  	if card_a.rank > card_b.rank
  	  @player_a.add_to_bottom(card_a)	
  	  @player_a.add_to_bottom(card_b)	
  	  
  	  until @limbo_stack.empty?
  	  	@player_a.add_to_bottom(@limbo_stack.deal)
    	end
  	  
  	  # if Player b wins.
   	elsif card_a.rank < card_b.rank
  	  @player_b.add_to_bottom(card_a)	
  	  @player_b.add_to_bottom(card_b)	
  	  
  	  until @limbo_stack.empty?
  	  	@player_a.add_to_bottom(@limbo_stack.deal)
    	end
  	       
      # tie
  	elsif card_a.rank == card_b.rank
  		@limbo_stack.add_to_bottom(card_a) 
  		@limbo_stack.add_to_bottom(card_b)
  		(1..3).each do 
  			#@limbo_stack.add_to_bottom(Deck.deal)
  			
  			@limbo_stack.add_to_bottom(@player_a.deal)
  			@limbo_stack.add_to_bottom(@player_b.deal)
  	  end
    end
    
  	# Update number of plays
  	@num_plays += 1
  	
  end
  
  #Method: finishes a complete game.
  def finish_game
  	
  	until winner || @num_plays >= 5000
  		play
  	end
  	
  	print "%3s     %4d\n" % [winner, @num_plays]
  end
  
  #Method: checks total cards count == 52
  def total_cards_ok
  	total = (@player_a.count + @player_b.count + @limbo_stack.count)
  	return total == 52
  end
  
  #Method: to_s 'returns WarGame object'
  def to_s
  	return %Q/Number of plays: #{@num_plays}
Player A Count: #{@player_a.count}
#{@player_a.to_s}
Player B Count: #{@player_b.count}
#{@player_b.to_s}
Limbo Stack Count: #{@limbo_stack.count}
#{@limbo_stack.to_s}/
  end
  
end
