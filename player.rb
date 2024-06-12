class Player
  attr_accessor :cards, :cash
  attr_reader :name

  def initialize(name)
    @cash = 100
    @cards = []
  end

  def bet
    return puts 'not enough cash' if cash.zero?

    self.cash -= 10
  end

  def reset
    self.cards = []
  end

  def show_cards
    # todo
  end

  def score 
  	# todo
  end
end