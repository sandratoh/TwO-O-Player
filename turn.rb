class Turn
  @@number_of_turns = 0

  def self.total_number_of_turns
    @@number_of_turns
  end

  attr_accessor :question, :player_id

  def initialize
    @@number_of_turns += 1
    @question = Question.new
    @player_id = @@number_of_turns.odd? ? 1 : 2
  end
  
  def question_to_player
    @question.ask_question
  end
  
  def player_answer(input)
  @player_answer = input
  end

  def turn_response
    if self.answer_correctly?
      "🙌 YES! You got it right!"
    else
      "🤔 Maybe you should retake grade 1 Math..."
    end
  end

  protected

  def answer_correctly?
    @player_answer == @question.sum ? true : false
  end

end