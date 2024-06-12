class Deck
  attr_accessor :cards

  SUITS = %w[♥ ♦ ♣ ♠]
  VALUES = %w[2 3 4 5 6 7 8 9 10 J Q K A]

  def initialize
    @cards = []
    create_deck
  end

  def create_deck
    SUITS.each do |suit|
      VALUES.each do |value|
        cards << Card.new(suit, value)
      end
    end
    cards.shuffle!
  end

  def take_card
    create_deck if cards.empty?
    cards.pop
  end
end