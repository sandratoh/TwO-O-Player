require './game'
require './player'
require './question'
require './turn'

# Test codes below

# game.rb
game = Game.new
puts game
puts game.game_status
game.game_status = "game_over"
puts game.game_status