class Card
  attr_accessor :type, :strength

  def initialize(type, strength)
    @type = type
    @strength = strength
  end
end

class Deck
  attr_accessor :cards

  def initialize(cards)
      @cards = cards
  end

  def shuffle
    @cards.shuffle!
  end

  def remove_last
    @cards.pop
  end

  def remove_first
    @cards.shift
  end
end

cards = [ Card.new("heart", "Q"), Card.new("spade", "J"), Card.new("club", "K"), Card.new("diamond", "A")]
deck = Deck.new(cards)

puts "Printing out the deck: #{deck.cards}"

puts "Shuffling the deck"
deck.shuffle
puts "Shuffled deck:"
puts deck.cards

puts "Removing last card from deck"
deck.remove_last
puts "Deck after removing last card"
puts deck.cards

puts "Removing first card from deck"
deck.remove_first
puts "Deck after removing first card"
puts deck.cards
