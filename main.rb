require_relative 'card'
require_relative 'deck'
require_relative 'player'

class Main
  attr_reader :user, :dealer, :deck
  attr_accessor :bank

  MENU = [
    '1 - skip',
    '2 - add a card',
    '3 - open cards'
  ]

  def initialize
    puts 'Input your name'
    @name = gets.chomp
    @user = Player.new(@name)
    @dealer = Player.new('Dealer')
    @deck = Deck.new
    @bank = 0
  end
  
  def define_winner 
    # todo
  end

  def round
    # раздача карт игрокам
    take_card(user, 2)
    take_card(dealer, 2)
    # todo
  end

  def take_card(player, count = 1)
    count.times do
      player.cards << deck.take_card
    end
    # todo
  end

  def run
    # todo
  end
end