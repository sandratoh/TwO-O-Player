require './game'
require './player'
require './question'
require './turn'

# Game logic here

# Start game


# Enter player 1 name



# Enter player 2 name



# Turn loop


# Question


# Player answer


# Turn evaluate answer


# Check game stat


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
