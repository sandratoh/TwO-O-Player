require './game'
require './player'
require './question'
require './turn'

# Game Intro
puts '===== 🤗 Welcome to TwO-O-Player Math Game! 🤓 ====='
puts 'Please enter a name for Player 1, and then another name for Player 2:'
# Start game
new_game = Game.new(gets.chomp, gets.chomp)
new_game.start