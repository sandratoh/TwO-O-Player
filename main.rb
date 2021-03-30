require './game'
require './player'
require './question'
require './turn'

# GAME LOGIC
puts 'Welcome to TwO-O-Player Math Game!'
puts 'Please enter a name for Player 1, and then another name for Player 2:'
# Start game
game = Game.new(gets.chomp, gets.chomp)
puts "Let's get this Math Game started!"

# Game loop
while game.game_status == 'ongoing_game' do
  turn = Turn.new
  puts turn.question_to_player
  
  # Player answer
  turn.player_answer(gets.chomp.to_i)
  
  # Evaluate answer and check game stat
  !turn.answer_correctly? && game.decrease_player_score(turn.player_id)
  puts turn.turn_response
  puts game.winner_stat || game.game_stat
end