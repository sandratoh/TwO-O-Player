class Game
  MAX_LIVES = 3

  attr_accessor :game_status

  def initialize(player1, player2)
    @game_status = 'ongoing_game'
    @player1 = Player.new(player1)
    @player2 = Player.new(player2)
  end

  def game_stat
    p1_score = @player1.current_score
    p2_score = @player2.current_score
    "P1: #{p1_score}/#{MAX_LIVES} vs P2: #{p2_score}/#{MAX_LIVES}"
  end

  def decrease_player_score(id)
    @player1.id == id ?
      @player1.current_score -= 1 :
      @player2.current_score -= 1
  end

  def winner_stat
    if self.game_over?
      self.game_status = 'game_over'
      @player1.is_alive? ?
        winner = @player1 :
        winner = @player2
      "#{winner.name} wins with a score of #{winner.current_score}/#{MAX_LIVES}!\n----- GAME OVER -----\nGood bye!"
    end
  end

  def start
    puts "Let's get this Math Game started!"

    # Game loop
    while self.game_status == 'ongoing_game' do
      turn = Turn.new
      puts turn.question_to_player
      
      # Player answer
      print '> '
      turn.player_answer(gets.chomp.to_i)
      
      # Evaluate answer and check game stat
      !turn.answer_correctly? && self.decrease_player_score(turn.player_id)
      puts turn.turn_response
      puts self.winner_stat || self.game_stat
    end
  end

  protected

  def game_over?
    @player1.is_alive? && @player2.is_alive? ? false : true
  end
end