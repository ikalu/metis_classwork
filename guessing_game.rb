class GuessingGame
  def initialize
    @answer = rand(10) + 1
    @round = 0
    @loses = 0
    @wins = 0
    @num_of_rounds = 0
  end

  def make_guess
    print "Enter a number 1 - 10: "
    guess = gets.to_i
  end

  def print_result
    puts "The correct answer was #{@answer}"
  end

  def round_number
    @round += 1
    puts "Round #{@round}: Play!!!"

  end

  def play
   round_number

    3.times do

      if make_guess == @answer
        @wins += 1
        puts "Correct!"
        break
      else
        @loses += 1
        puts "Incorrect!"
      end

    end
    @num_of_rounds += 1
    print_result

    if @round < 4
      play
    else
      puts "Game over"
      puts "Total number of wins = #{@wins}"
      puts "Total number of guesses = #{@loses + @wins}"
      puts "Average number of guesses per round = #{(@loses + @wins) / @num_of_rounds} "
    end
  end

end

guessing_game = GuessingGame.new
guessing_game.play


