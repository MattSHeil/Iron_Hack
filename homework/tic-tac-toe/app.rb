require_relative('lib/board')
require_relative('lib/game')

my_board = Board.new

puts "Choose a space from the board bellow\n
       
    y |x(0  |  1  |  2)
    _ |----------------
      |
    0 | #1  | #2  | #3   
      |
      |----------------
      |
    1 | #4  | #5  | #6 
      |
      |----------------
      |
    2 | #7  | #8  | #9 
      |
    - |----------------"

game_new = Game.new(my_board)
game_new.take_turns