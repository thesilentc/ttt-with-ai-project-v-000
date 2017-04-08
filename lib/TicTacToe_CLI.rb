class TicTacToeCLI
  
  def initialize
  end

  def call
    puts "Hello, Joshua!"
    sleep 1
    puts "Shall We Play a Game?"
    sleep 1.5
    puts "How many players are there? Enter 1, 2, or 3 for Nuclear option"
     input = gets.strip
     if input == "3"
       sleep 1.0
       puts "Not able to change your mind!"
       sleep 0.5
       game = Game.new(Computer.new("X"), Computer.new("O"))
       puts "You've chosen Global Thermonuclear War!"
       sleep 1
       puts "Let's hope I cannot beat myself and that the only option is not to play at all!"
       sleep 2
       game.board.display
       game.play
     elsif input == "1"
       puts "Player 1 is X"
       game = Game.new(Human.new("X"), Computer.new("O"))
       puts "Good luck!"
       game.board.display
       game.play
     elsif input == "2"
       puts "Player 1 is X"
       game = Game.new
       puts "Good luck!"
       game.board.display
       game.play
     end
  end
end
