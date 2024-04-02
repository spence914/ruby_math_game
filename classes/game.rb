require_relative 'questions.rb'
require_relative 'players.rb'

class Game
  def initialize
    @player1 = Players.new("Player 1")
    @player2 = Players.new("Player 2")
    @current_player = @player1
  end

  def next_turn
    @current_player = @current_player == @player1 ? @player2 : @player1
  end
  
  def display_scores
    puts "Current Score: #{@player1.name}: #{@player1.lives}/3 #{@player2.name}: #{@player2.lives}/3 "
  end
  

  def play_round
    question = Questions.new
    puts question.ask_question(@current_player.name)

    player_answer = @current_player.answer_question

    if player_answer == question.answer
      puts "Correct!"
    else 
      puts "Seriously?! No!"
      @current_player.lives -= 1
    end
  end

    def play
      puts "---- Math Game ----"
      while @player1.lives > 0 && @player2.lives > 0
        play_round
        display_scores
        next_turn
        puts "----- Next Turn -----"
      end
      puts "Game Over: Final Score is #{@player1.name}: #{@player1.lives}/3 #{@player2.name}: #{@player2.lives}/3"
      puts "The winner is #{@player1.lives > @player2.lives ? @player1.name : @player2.name}"
    end
end

