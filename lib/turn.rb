
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
  index = input.to_i
  index = index - 1
end

def valid_move?(board, input)
  if input < 9 && input >= 0
    if board[input] == " "
      return true
    end
  else
    return false
  end
end

def move(index, board, value="X")
  if valid_move?(board, index)
    board[index] = value
  else
    return
  end
end
#turn will ask the user for an input in the bin file
def turn(board)
  input_to_index(input)
  if valid_move?(input)
    move(input, board, value)
  else
    return
  end

end
