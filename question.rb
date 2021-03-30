class Question
  attr_reader :addend1, :addend2, :sum

  def initialize
    @addend1 = rand(21)
    @addend2 = rand(21)
    @sum = @addend1 + @addend2
  end

  def ask_question
    "What does #{self.addend1} plus #{self.addend2} equal?"
  end
end