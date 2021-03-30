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
player1 = Player.new(gets.chomp)
p player1
puts player1.name
puts player1.id
puts player1.current_score


player2 = Player.new(gets.chomp)
p player2
player2.current_score = 2
p player2