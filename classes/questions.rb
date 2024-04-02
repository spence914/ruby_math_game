require_relative "game.rb"
require_relative 'players.rb'

class Questions
  attr_reader :answer

    def initialize
      @number1 = rand(1..20)
      @number2 = rand(1..20)
    
      @answer = @number1 + @number2

    end

    def ask_question(player_name)
      "#{player_name} What is #{@number1} + #{@number2}?"
    end
end