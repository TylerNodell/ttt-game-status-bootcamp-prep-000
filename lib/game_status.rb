# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
# board_combinations = [
#   [board[0],board[1],board[2]],
#   [board[3],board[4],board[5]],
#   [board[6],board[7],board[8]],
#   [board[0],board[3],board[6]],
#   [board[1],board[4],board[7]],
#   [board[2],board[5],board[8]],
#   [board[0],board[4],board[8]],
#   [board[6],board[4],board[2]]
# ]

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
      index1 = board[combination[0]]
      index2 = board[combination[1]]
      index3 = board[combination[2]]

      if index1 == "X" && index2 == "X" && index3 == "X"
        combination
      else
        false
      end
  }

end
