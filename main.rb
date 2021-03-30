require './game'
require './player'
require './question'
require './turn'

# Test codes below

# game.rb
# game = Game.new
# puts game
# puts game.game_status
# game.game_status = "game_over"
# puts game.game_status

# player.rb
# player1 = Player.new(gets.chomp)
# p player1
# puts player1.name
# puts player1.id
# puts player1.current_score


# player2 = Player.new('bob')
# p player2

# player2.current_score = 1
# p player2
# p player2.is_alive?   # => true

# player2.current_score = 0
# p player2
# p player2.is_alive?   # => false

# question.rb
question1 = Question.new
p question1
puts question1.ask_question