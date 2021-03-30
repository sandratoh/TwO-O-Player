class Player
  attr_accessor :current_score, :id, :name

  @@number_of_players = 0

  def initialize(name)
    @@number_of_players += 1
    @name = name
    @id = self.total_number_of_players
    @current_score = 3
  end

  def total_number_of_players
    @@number_of_players
  end
end