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
  [6,4,2]
]

def won?(board)
  WIN_COMBINATIONS.detect{|combination|
      board[combination[0]] == board[combination[1]] && board[combination[1]] == board[combination[2]] && position_taken?(board, combination[0])
    }
end

def full?(board)
  !board.any?{ |i| i == " " }
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  full?(board)  || won?(board)
end

# def winner(board)
#
# end

def winner(board)
  if combo = won?(board)
    board[combo.to_i]
  end
end
