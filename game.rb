class Game
  attr_accessor :player1, :player2, :turn, :name

  def initialize
    @player1 = 3
    @player2 = 3
    @turn    = 1
  end

  def start
    puts "-------------------------------------------"
    puts "SCORE: (P1: #{@player1}/3 VS P2: #{@player2}/3)"

    question = Question.new(turn)
    if !question.start
      lives_remaining(turn)
    end
    change_turns(turn)
  end

  def game_over
    puts "P1: #{@player1}/3 VS P2: #{@player2}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
    puts "-------------------------------------------"
    exit(0)
  end

  def lives_remaining(turn)
    if turn == 1
      @player1 -= 1
    else 
      @player2 -= 1
    end
    if @player1 == 0 || @player2 == 0
      game_over
    end
  end

  def change_turns(turn)
    if turn == 1
      @turn = 2
    else 
      @turn = 1
    end
    start
  end

end