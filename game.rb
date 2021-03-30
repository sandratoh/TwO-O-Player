class Game
  attr_accessor :game_status

  def initialize(player1, player2)
    @game_status = 'ongoing_game'
    @player1 = Player.new(player1)
    @player2 = Player.new(player2)
  end

  def game_stat
    max_lives = 3
    p1_score = @player1.current_score
    p2_score = @player2.current_score
    "P1: #{p1_score}/#{max_lives} vs P2: #{p2_score}/#{max_lives}"
  end

  def decrease_player_score(id)
    @player1.id == id ?
      @player1.current_score -= 1 :
      @player2.current_score -= 1
  end
end