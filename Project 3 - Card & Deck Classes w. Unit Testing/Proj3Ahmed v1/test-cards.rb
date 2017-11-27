#Faizan Ahmed
#10/1/2015
#Project 3 - Card Class

require './Card.rb'
require './Deck.rb'

card1 = Card.new(11, "C")
print card1, "\n"
print card1.color, "\n\n"

card2 = Card.new(5, "H")
print card2, "\n"
print card2.color, "\n\n"


#deck = Deck.new
#c = Card.new(12, "S")
#deck.add_to_top(c)
#print deck, "\n"
#print deck.count, "\n"

#c2 = Card.new(5, 'H')
#deck.add_to_bottom(c2)
#print deck, "\n"
#print deck.count, "\n\n"

deck = Deck.new
print deck.deal, "\n"

=begin

if deck.empty? == true
	print "EMPTY DECK"
else
	print "DECK NOT EMPTY"
end

print"\n"
print deck.count, "\n"

print deck.deal, "\n"
print deck.count, "\n"


d = Deck.new
c = Card.new(12, 'S')
add = d.add_to_bottom(c)
print add
=end
