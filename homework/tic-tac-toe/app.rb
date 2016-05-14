require_relative('lib/board')


my_board = Board.new

puts "Choose a space from the board bellow\n
       x(0  |  1  |  2)\n
    y |----------------
    _
    0 | #1  | #2  | #3 \n  
      |----------------\n
    1 | #4  | #5  | #6 \n
      |----------------\n
    2 |  7  |  8  |  9 \n
    - |----------------\n\n"

x = gets.chomp

# puts "Put the coprdinates as follow to choose your spot=\n
#       0,0 for #1
#       0,1 for #2
#       0,2 for #3
#       1,0 for #4
#       1,1 for #5
#       1,2 for #6
#       2,0 for #7
#       2,1 for #8
#       2,2 for #9\n\n"

# puts "First player will be X, choose your spot:"

# turn_1 = gets.chomp

# my_board.show_board
# my_board.add_character([0,0], "X")
# puts "Hey I added a character"
# my_board.show_board
# my_board.add_character([1,0], "X")
# puts "Hey I added a character"
# my_board.show_board
# my_board.add_character([2,0], "X")
# puts "Hey I added a character"
# my_board.show_board
