class Players
  attr_accessor :lives
  attr_reader :name

  def initialize(name)
    @name = name
    @lives = 3
  end

  def answer_question
    gets.chomp.to_i
  end

end