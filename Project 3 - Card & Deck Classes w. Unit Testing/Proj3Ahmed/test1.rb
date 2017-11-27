#Faizan Ahmed
#10/7/2015
#Project 3 - Traditional Testing File

require './Card.rb'
require './Deck.rb'

# testing the color and getters methods in Card Class
c = Card.new(12, 'S')
print c, "\n"
print c.color(), "\n"
print c.suit(), " ", c.rank, "\n\n"

# adding the card to the top of the array, index of (cards.length -1)
print "Card added to the top: \n"
deck = Deck.new
c1 = Card.new(12, 'S')
deck.add_to_top(c1)
print deck
print "Count: ", deck.count, "\n\n"

# dealing a card out from the deck 
print "Deal card: ", deck.deal, 
"\nCount: ", deck.count, "\n\n"

# adding the card to the bottom of the array, index of 0 (cards[0])
print "Card added at the bottom: \n"
c2 = Card.new(14, 'S')
deck.add_to_bottom(c2)
print deck, "Count: ", deck.count, "\n"

# checking if the deck is empty
print "Deck empty?: ", deck.empty?, "\n\n"

# printing a shuffled Deck of Cards
print "Shuffled Deck: \n"
deck2 = Deck.new
deck2.shuffle!
print deck2, "Count: ", deck2.count, "\n"