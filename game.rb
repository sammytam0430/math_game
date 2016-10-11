module MathGame
  class Game

    def initialize
      @players = []
      @players << Player.new('Player1')
      @players << Player.new('Player2')
    end

    def start
      puts 'Welcome!'
      scores

      @players.cycle do |player|
        if @players[0].health > 0 && @players[1].health > 0
          puts "----- NEW TURN -----"
          question = Question.new
          puts "#{player.name}: #{question.question}"
          user_input = gets.chomp

          if question.correct?(user_input)
            puts "Correct!"
          else
            puts "Wrong!"
            player.wrong
          end
          scores
        else
          puts "#{player.name} wins!"
          break
        end
      end
      puts "-----Game Over-----"
      puts "Good bye!"

    end

    def scores
      puts "#{@players[0].name}: #{@players[0].health}/#{@players[0].max_health} vs #{@players[1].name}: #{@players[1].health}/#{@players[1].max_health}"
    end

  end
end
