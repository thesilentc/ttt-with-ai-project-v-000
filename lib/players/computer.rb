module Players

  class Computer < Player

#     def move(board)
#       valid_moves = ["1","2","3","4","5","6","7","8","9"]
#       valid_moves.sample
#     end
#
#   end
# end
    def move(board)

          move = (1..9).to_a
          move.sample.to_s
    end

  end
end
