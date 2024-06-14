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

  def show_cards(name, open=true) # скрыть карты дилера и показать карты юзера
    return puts "#{name}'s cards - #{cards.map { '*' }.join(' ')}" if open == false

    current_cards = cards.map { |card| "#{card.value}#{card.suit}" }.join(' ')
    puts "#{name}'s cards - #{current_cards}"
    # todo
  end

  def score
    score = 0

    cards.each do |card|
      if card.value == 'A'
        score += (score < 11 ? 11 : 1)
      else
        score += (card.value.to_i.zero? ? 10 : card.value)
      end

    end
    score
  	# todo
  end
end