WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]
# Helper Method

board = ["X","X","X","X","X"," X","O","X","O"]
winner_array = [" ", " ", " "]

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def won?(board)
  def won?(board)
  winner_array = WIN_COMBINATIONS.detect do |combo|
    puts combo
    board[combo[0]] == board[combo[1]] &&
    board[combo[1]] == board[combo[2]] &&
    position_taken?(board, combo[0])
    puts "combo  #{combo}"
  end
end


#   full?(board)
#    cnt = 0
#    until cnt == 8
#      if ((board[WIN_COMBINATIONS[cnt][0]] == "X" && board[WIN_COMBINATIONS[cnt][1]] == "X" && board[WIN_COMBINATIONS[cnt][2]] == "X")  ||
#          (board[WIN_COMBINATIONS[cnt][0]] == "O" && board[WIN_COMBINATIONS[cnt][1]] == "O" && board[WIN_COMBINATIONS[cnt][2]] == "O"))
#           winner_array = WIN_COMBINATIONS[cnt]
#           puts "winssss   #{winner_array}"
#           return  winner_array
#      end
#      cnt += 1
#      puts cnt
#      if cnt == 8
#        return false
#      end
#    end
end

def  full?(board)
    board.none?{|x| x == "" || x == " " || x = nil}
end

def draw?(board)

  if !won?(board) && full?(board)
    return true
  elsif !won?(board) && !full?(board) || !won?(board)
    return false
  end
end

def over?(board)
  if (won?(board) || full?(board) || draw?(board))  || (won?(board) && !full?(board))
    return true
  else
    return false
  end
end

def winner(board)
  if winner_array = won?(board)
    puts "winner aray"
    puts "winner #{winner_array}"
    puts board[winner_array[0]]
  else
    return nil
  end
end

winner(board)
