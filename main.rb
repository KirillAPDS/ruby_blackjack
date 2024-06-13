require_relative 'card'
require_relative 'deck'
require_relative 'player'

class Main
  attr_reader :user, :dealer, :deck
  attr_accessor :bank

  MENU = [
    '1 - пропустить',
    '2 - добавить карту',
    '3 - открыть карты'
  ]

  def initialize
    puts 'Введите ваше имя'
    @name = gets.chomp
    @user = Player.new(@name)
    @dealer = Player.new('Дилер')
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
    # игровой цикл с выбором из MENU
    loop do
      # показываем карты игроков
      user.show_cards(user.name)
      dealer.show_cards(dealer.name, false)
      # выбор действия
      puts MENU
      choice = gets.chomp.to_i
      case choice
      when 1 then dealer_move # пропускаем ход, ход дилера
      when 2 # добавляем карту себе и дилеру
        take_card(user) # if user.cards.size < 3
        dealer_move
      when 3 # открываем карты. дилер при этом может сделать ход
        dealer_move
        score(user) # показываем счет 
        score(dealer)
      end
      
    end
    # определяем победителя и обнуляем карты игроков
    define_winner
    user.reset
    dealer.reset
    # todo
  end

  def score(player)
    puts "#{player.name}: #{player.score} очков"
  end

  def take_card(player, count = 1)
    count.times do
      player.cards << deck.take_card
    end
  end

  def run
    # todo
  end

  def dealer_move
    take_card(dealer) if dealer.score < 17 || dealer.cards.size < 3
  end
end