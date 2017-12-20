class Card
  attr_accessor :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
  end
end

class Hand
  attr_accessor :cards

  def initialize(cards)
    @cards = cards
  end
end

class HandRanker

  def initialize(play)
    @play = play
    @rank = []
  end

  def best_hand_picker
    @play.each_with_index do |hand, index|
      if straight_flush(hand)
        @rank << {index: index, ranking: 9}
      elsif four_of_a_kind(hand)
        @rank << {index: index, ranking: 8}
      # elsif full_house(hand)
      #   @rank << {index: index, ranking: 7}
      elsif flush(hand)
        @rank << {index: index, ranking: 6}
      elsif straight(hand)
        @rank << {index: index, ranking: 5}
      elsif three_of_a_kind(hand)
        @rank << {index: index, ranking: 4}
      elsif two_pair(hand)
        @rank << {index: index, ranking: 3}
      elsif one_pair(hand)
        @rank << {index: index, ranking: 2}
      else high_card(hand)
        @rank << {index: index, ranking: 1}
      end
      p @rank
    end
     p @rank.max_by{|k| k[:ranking] }
  end

  private

    def straight_flush(hand)
      suits = []
      values = []
      hand.cards.each do |card|
        suits << card.suit
        values << card.value
      end
        if (suits.all? {|x| x == suits[0]}) && (values.sort.each_cons(2).all? {|x,y| y == x + 1})
          true
        else
          false
        end
    end

    def four_of_a_kind(hand)
      suits = []
      values = []
      hand.cards.each do |card|
        suits << card.suit
        values << card.value
      end
        result = values.find_all{ |e| values.count(e) == 4}
          if result.length == 4
            true
          else
            false
          end
    end

    # def full_house(hand)
    #     suits = []
    #     values = []
    #     hand.cards.each do |card|
    #       suits << card.suit
    #       values << card.value
    #     end
    #       result = values.find_all{ |e| values.count(e) == 3} && result = values.find_all{|e| values.count(e) == 2}
    #         if (result.length == 3) && (result.length == 2)
    #           true
    #         else
    #           false
    #         end
    # end

    def flush(hand)
      suits = []
      values = []
      hand.cards.each do |card|
        suits << card.suit
        values << card.value
      end
        if suits.all? {|x| x == suits[0]}
          true
        else
          false
        end
      end

    def straight(hand)
      suits = []
      values = []
      hand.cards.each do |card|
        suits << card.suit
        values << card.value
    end
      if values.sort.each_cons(2).all? {|x,y| y == x + 1}
        true
      else
        false
      end
    end

    def three_of_a_kind(hand)
      suits = []
      values = []
      hand.cards.each do |card|
        suits << card.suit
        values << card.value
      end
        result = values.find_all{ |e| values.count(e) == 3}
          if result.length == 3
            true
          else
            false
          end
    end

    def two_pair(hand)
      suits = []
      values = []
      hand.cards.each do |card|
        suits << card.suit
        values << card.value
      end
        count = 0
        values = values.group_by{|number| number}
        values.values.map do |value|
          if value.size == 2
            count += 1
          end
        end
          if count == 2
            true
          else
            false
          end
    end

    def one_pair(hand)
      suits = []
      values = []
      hand.cards.each do |card|
        suits << card.suit
        values << card.value
      end
        result = values.find_all{ |e| values.count(e) == 2}
          if result.length == 2
            true
          else
            false
          end
    end

    def high_card(hand)
      suits = []
      values = []
      hand.cards.each do |card|
        suits << card.suit
        values << card.value
      end
        if values.max
          true
        else
          false
        end
    end
end

first_set_of_cards = []
second_set_of_cards = []
third_set_of_cards = []
fourth_set_of_cards = []
fifth_set_of_cards = []
hands = []

5.times do
  puts "Please enter card number: "
  card_value = gets.chomp.to_i
  puts "Please enter card type: "
  card_suit = gets.chomp
  first_set_of_cards << Card.new(card_value, card_suit)
end

5.times do
  puts "Please enter card number: "
  card_value = gets.chomp.to_i
  puts "Please enter card type: "
  card_suit = gets.chomp
  second_set_of_cards << Card.new(card_value, card_suit)
end

5.times do
  puts "Please enter card number: "
  card_value = gets.chomp.to_i
  puts "Please enter card type: "
  card_suit = gets.chomp
  third_set_of_cards << Card.new(card_value, card_suit)
end

5.times do
  puts "Please enter card number: "
  card_value = gets.chomp.to_i
  puts "Please enter card type: "
  card_suit = gets.chomp
  fourth_set_of_cards << Card.new(card_value, card_suit)
end

5.times do
  puts "Please enter card number: "
  card_value = gets.chomp.to_i
  puts "Please enter card type: "
  card_suit = gets.chomp
  fifth_set_of_cards << Card.new(card_value, card_suit)
end

first_hand = Hand.new(first_set_of_cards)
second_hand = Hand.new(second_set_of_cards)
third_hand = Hand.new(third_set_of_cards)
fourth_hand = Hand.new(fourth_set_of_cards)
fifth_hand = Hand.new(fifth_set_of_cards)
hands = [first_hand, second_hand, third_hand, fourth_hand, fifth_hand]

hand_ranker = HandRanker.new(hands)

hand_ranker.best_hand_picker
