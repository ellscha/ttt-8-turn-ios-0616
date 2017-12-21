def display_board(board)
end

def input_to_index(input)
end

def valid_move?(input)
end

def move(index, board, value="X")
end
#turn will ask the user for an input in the bin file
def turn(input, board, value="X")
  input_to_index(input)
  if valid_move?(input)
    move(input, board, value)
  else
    
  end
  
end
