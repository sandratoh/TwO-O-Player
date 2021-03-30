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

* Game

### Roles of Each Class
* Player
  * State/variables:
    * Stores amount of lives left (`current_score`)
    * Stores player `name` and player `id`
    * Outputs if player is winner
    * Class variable: `@@number_of_players`
  * Behaviour/methods:
    * `initialize` method default with `lives = 3`, `name` param, `id` param = 'P'+`total_number_of_players`, `@@number_of_players += 1`
    * `total_number_of_players` class method to track `@@number_of_players`
    * `is_alive?` method that returns `true` if lives >= 1, or `false` && call setter method on `@game_status` set to `game_over`
    * `is_winner?` method that returns `true` if opponent `is_alive? == false` but player `is_alive? == true`
    * getter/setter method for `current_score` to show and update player lives


* Question
  * State/variables:
  * Behaviour/methods:
    * `random_num` method generates two random number from 1-20
    * `math_question` method puts two number together and outputs question on screen for user
    * `math_answer` - store answer to math question, need getter method for Turn class to retrieve

* Turn
  * State/variables:
    * Question asked
    * Player to answer - through `total_number_of_turns` odd or even #
    * Player's answer - through `gets.chomp`
    * class variables `@@number_of_turns`
  * Behaviour/methods:
    * `initialize` method receives `question`, `player_to_answer`, and `@@number_of_turns += 1`
    * `answer_correctly?` method that gives different output depending on if player answered question correctly, utilizes `math_answer` if player answer `== math_answer`
    * `total_number_of_turns` class method to track `@@number_of_turns`
      * if odd number, then P1's turn
      * if even number, then P2's turn
    * `turn_reponse` based on `game_status`
      * if `game_status == ongoing_game`
        * output everyone's current score, new loop of Turn
        * call another instance of Turn - while loop if no winner
      * if `game_status == game_over`
        * output winning score, and good bye message

* Game
  * State/variables:
    * `game_status` state to track if `ongoing_game` or `game_over`
  * Behaviour/methods:
    * `initalize` method default `game_status` to `ongoing-game`
    * getter/setter for `game_status`
