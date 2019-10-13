# code your #valid_move? method here

def valid_move?(board, index)
    #if less than 0 or greater than 8 is false
  if (index < 0) || (index > 8)
    return false
      #if index is between 0-8 return and the position is not taken, return true
    elsif (index.between?(0,8)) && !position_taken?(board, index)
      return true

    #else position_taken? == true
    #  return false
      # if index is already included on board, return false or nil

  end
end

def input_to_index(input)
    return (input.to_i - 1)
  end

  def move(board, input_to_index, token = "X")
      return board[input_to_index] == token

    end

def position_taken?(board, index)
  if (board[index] == nil) || (board[index] == " ") || (board[index] == "")
     return false
  elsif (board[index] == "X") || (board[index] == "O")
    return true
  end
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
