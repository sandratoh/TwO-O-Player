require './game'
require './player'
require './question'
require './turn'

# Game logic here

puts 'Welcome to TwO-O-Player Math Game!'
puts 'Please enter a name for Player 1, and then another name for Player 2:'
# Start game
game = Game.new(gets.chomp, gets.chomp)
puts "Let's get this Math Game started!"

# Turn loop


# Question
turn = Turn.new
puts turn.question_to_player

# Player answer
turn.player_answer(gets.chomp.to_i)

# Turn evaluate answer
puts turn.turn_response

# Check game stat
puts game.game_stat

# Repeat or game over





# Test codes below

# game.rb
# game = Game.new(gets.chomp, gets.chomp)
# p game
# puts game.game_stat
# puts ''
# game.decrease_player_score(1)
# puts game.game_stat
# # puts game.game_over?    # => false
# puts ''
# game.decrease_player_score(2)
# puts game.game_stat
# game.decrease_player_score(2)
# puts game.game_stat
# game.decrease_player_score(2)
# puts game.game_stat
# # puts game.game_over?    # => true
# puts game.winner_stat
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
# question1 = Question.new
# p question1
# puts question1.ask_question

# turn.rb
# turn1 = Turn.new
# p turn1
# p turn1.player_id
# puts turn1.question_to_player
# turn1.player_answer(gets.chomp.to_i)
# puts turn1.turn_response

# turn2 = Turn.new
# puts turn2.question_to_player
# turn2.player_answer(gets.chomp.to_i)
# puts turn2.turn_response
# p Turn.total_number_of_turns
