# TwO-O-Player Math Game

## Description
* Create a 2-Player *math game* where *players* take *turns* to answer simple math addition problems.
* A new math *question* is generated for each turn by picking two numbers between 1 and 20.
* The player whose turn it is is prompted the question and must answer correctly or lose a life.

## Details
* Both players start with 3 lives
* Players lose a life if they mis-answer a question
* At the end of every turn, the game should output the new scores (# of lives left) for both players
* Game ends when one of the players loses all their lives
* When game ends, it should announce who won and what the other player's score is

## Planning

### Nouns
* Player

* Question

* Turn

### Roles of Each Class
* Player
  * State/variables:
    * Stores amount of lives left (`current_score`)
    * Stores player `name` and player `acronym`
    * Outputs if player is winner
  * Behaviour/methods:
    * `initialize` method default with `lives = 3`, `name` param, `acronym` param defaults to first letter of `name`
    * `is_winner?` method that returns `true` or `false` if opponent's has 0 lives but player still has >= 1 life
    * `current_score` method shows how many lives player currently has


* Question
  * State/variables:
  * Behaviour/methods:
    * `random_num` method generates two random number from 1-20
    * `math_question` method puts two number together and outputs question on screen for user
    * `math_answer` - private method: store answer to math question

* Turn
  * State/variables:
    * Question asked
    * Player answer - through `gets.chomp`
    * class variables `@@number_of_turns`
  * Behaiviour/methods:
    * `initialize` method receives `question`, `player_to_answer`, and `@@number_of_turns += 1`
    * `answer_correctly?` method that gives different output depending on if player answered question correctly, utilizes `math_answer` if player answer `==` `math_answer`
    * `total_number_of_turns` class method to track `@@number_of_turns`
      * if odd number, then P1's turn
      * if even number, then P2's turn
    * `game_over?` method to check if any player died after round
      * if yes, output winning score, and good bye message
      * else, output everyone's current score, new loop of Turn