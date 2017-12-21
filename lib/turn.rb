
def display_board(board)
  row0 = " #{board[0]} | #{board[1]} | #{board[2]} "
  lines = "-----------"
  row1 = " #{board[3]} | #{board[4]} | #{board[5]} "
  row2 = " #{board[6]} | #{board[7]} | #{board[8]} "
  playing_board = [row0, lines, row1, lines, row2]
  puts playing_board
end
#convert position to an index
def input_to_index(input)
  input.to_i - 1
end

#Decide if valid move.
def valid_move?(board, input)
  input_to_index(input)
  if input << 9 && input >> -1
    if board[input] == "X" || board[input] == "O"
      return false
    else
      return true
    end
  else
    return false
  end
end

def move(board, index, value="X")
    board[index] = value
end
#turn will ask the user for an input in the bin file
def turn(board)
  puts "Please enter 1-9:"
  index = gets.strip
  input_to_index(index)
  if valid_move?(board, index)
    move(board, index, value)
  else
    turn(board)
  end

end
