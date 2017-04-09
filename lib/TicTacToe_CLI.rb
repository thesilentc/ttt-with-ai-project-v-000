require 'pry'

class TicTacToe_CLI

def initialize

  def call
    start
  end

  def start
    puts "Hello, Joshua!"
    sleep 1
    puts "Shall We Play a Game?"
    sleep 1
    puts "How would you like to play?"
    sleep 1
    puts "Enter '1' to play me"
    sleep 1
    puts "Enter '2' to play another human"
    sleep 1
    puts "or, if you wish..."
    sleep 1.5
    puts "Enter '3' for 'Nuclear' option"
    sleep 1
    puts "1\n2\n3"
     input = gets.strip
     if input == "3"
       sleep 1
       puts "You've chosen Global Thermonuclear War!"
       game = Game.new(Computer.new("X"), Computer.new("O"))
       sleep 1
       puts "Let's hope I cannot beat myself and that the only option is not to play at all!"
       sleep 2
       game.board.display
       game.play
     elsif input == "1"
       puts "Player 1 is X"
       game = Game.new(Human.new("X"), Computer.new("O"))
       sleep 0.5
       puts "Get ready for action!"
       game.board.display
       game.play
     elsif input == "2"
       puts "Player 1 is X"
       game = Game.new
       sleep 0.5
       puts "Get ready for action!"
       game.board.display
       game.play
     end
  end
end
end
