class TicTacToeCLI
  def initialize
  end

  def call
    puts "Hello, Joshua!"
    puts "Shall We Play a Game?"
    puts "How many players are there? Enter 1, 2, or Nuke"
     input = gets.strip
     if input == "Nuke"
       game = Game.new(Computer.new("X"), Computer.new("O"))
       puts "You've chosen Global Thermonuclear War!"
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
