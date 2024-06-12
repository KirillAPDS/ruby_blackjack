class Main

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

  def play_cycle 
    # todo
  end

  def get_card 
    # todo
  end

  def go 
    # todo
  end
end