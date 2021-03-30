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

  def winner_stat
    if self.game_over?
      max_lives = 3
      winner = self.winner?
      "#{winner.name} wins with a score of #{winner.current_score}/#{max_lives}!"
    end
    # if self.game_over?
    #   @player1.is_alive? ? 
    #   "#{@player1.name} wins with a score of #{@player1.current_score}/#{max_lives}!" : 
    #   "#{@player2.name} wins with a score of #{@player2.current_score}/#{max_lives}!"
    # end
  end

  protected

  def game_over?
    @player1.is_alive? && @player2.is_alive? ? false : true
  end

  def winner?
    if self.game_over?
      @player1.is_alive? ? @player1 : @player2
    end
  end
  
end