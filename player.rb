class Player
  attr_accessor :current_score
  attr_reader :name, :id

  @@number_of_players = 0

  def initialize(name)
    @@number_of_players += 1
    @name = name
    @id = @@number_of_players
    @current_score = 3
  end

  def is_alive?
    self.current_score >= 1 ? true : false
  end
end