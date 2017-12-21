row0 = " #{board[0]} | #{board[1]} | #{board[2]} "
lines = "-----------"
row1 = " #{board[3]} | #{board[4]} | #{board[5]} "
row2 = " #{board[6]} | #{board[7]} | #{board[8]} "
board =
def display_board(board)
  puts board
end

def input_to_index(input)
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
end
#turn will ask the user for an input in the bin file
def turn(input, board, value="X")
  input_to_index(input)
  if valid_move?(input)
    move(input, board, value)
  else
    return
  end

end
