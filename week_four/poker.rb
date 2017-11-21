class Card
  attr_accessor :face_value, :suit

  def initialize(face_value, suit)
    @face_value = face_value
    @suit = suit
  end

  def self.print
    print Card
  end
end

class Hand
  attr_accessor :card_1, :card_2, :card_3, :card_4, :card_5

  def initialize(card_1, card_2, card_3, card_4, card_5)
    @card_1 = card_1
    @card_2 = card_2
    @card_3 = card_3
    @card_4 = card_4
    @card_5 = card_5
    @hand = [@card_1, @card_2, @card_3, @card_4, @card_5]
  end
end

class HandRanker

  def initialize
    plays = {}
  end

  def straight_flush

  end

  def four_of_a_kind
  end

  def full_house
  end

  def flush
  end

  def straight
  end

  def three_of_a_kind
  end

  def two_pair
  end

  def one_pair
  end

  def high_card
  end

  def ranking

    #rank = 0
    #@hand.split.each do |card|
    #   card.split.collect.each do |x|
    #     case hands
    #     when @suit == *5 then flushrank += 5
    #     end
    #end
  end
end

puts "Enter first card face_value: "
repsonse = gets.chomp
puts "Enter first card suit: "
response = gets.chomp
user_card_1 = Card.new(face_value, suit)

puts "Enter second card face_value: "
repsonse = gets.chomp
puts "Enter second card suit: "
response = gets.chomp
user_card_2 = Card.new(face_value, suit)

puts "Enter third card face_value: "
repsonse = gets.chomp
puts "Enter third card suit: "
response = gets.chomp
user_card_3 = Card.new(face_value, suit)

puts "Enter fourth card face_value: "
repsonse = gets.chomp
puts "Enter fourth card suit: "
response = gets.chomp
user_card_4 = Card.new(face_value, suit)

puts "Enter fifth card face_value: "
repsonse = gets.chomp
puts "Enter fifth card suit: "
response = gets.chomp
user_card_5 = Card.new(face_value, suit)

user_card = []
user_card << Hand.new(user_card_1, user_card_2, user_card_3, user_card_4, user_card_5)
