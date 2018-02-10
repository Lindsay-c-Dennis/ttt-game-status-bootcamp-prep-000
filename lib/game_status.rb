# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]]

def won?(board)
  win_array = []
  WIN_COMBINATIONS.detect do |win_combination|
    if board[win_combination[0]] == "X" && board[win_combination[1]] == "X" && board[win_combination[2]] == "X"
        win_array << win_combination
        return win_array[0]
    elsif board[win_combination[0]] == "O" && board[win_combination[1]] == "O" && board[win_combination[2]] == "O"
        win_array << win_combination
        return win_array[0]
    else
      false
    end
  end
end

def full?(board)
  board.all? do |position|
    position == "X" || position == "O"
  end
end

def draw?(board)
  if full?(board) && !(won?(board))
    return TRUE
  else
    return FALSE
  end
end

def over?(board)
  if won?(board) != false  || draw?(board) == true || full?(board) == true
    return TRUE
  else
    false 
  end
end

def winner(board)
  winning_array = []
  winning_array << won?(board)
  if winning_array[0] == "X"
    return "X"
  elsif winning_array[0] == "O"
    return "O"
  end
end
  