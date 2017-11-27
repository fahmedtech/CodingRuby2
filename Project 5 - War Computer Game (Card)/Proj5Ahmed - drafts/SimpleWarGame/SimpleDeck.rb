# A SimpleDeck does not have suits and only
# has 20 cards.  Therefore there can be no ties
# when comparing two cards.
class SimpleDeck

  def initialize
    @cards = [ ]
    (1..20).each do |i|
      @cards.push(i)
    end
  end
  
  def to_s
    # Go to new line every 10 cards.
    card_count = 1
    output = ""
    @cards.each do |card|
      output += " " + card.to_s
      if card_count % 10 == 0
        output += "\n"
      end
      card_count += 1
    end
    return output
  end

  def add_to_bottom(the_card)
    @cards.insert(0, the_card)
  end
  
  def add_to_top(the_card)
    @cards.push(the_card)
  end

  def count
    return @cards.length
  end

  def deal
    return @cards.pop
  end

  def empty?
    return @cards.length == 0
  end

  def shuffle!
    @cards.shuffle!
  end

end
