# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]

# won method : returns true if there is a winner; else if not
def won?(board)
  board.each do |combination|
    counter = 0
    if combination[0] == "X" && combination[1] == "X" && combination[2] == "X"
      return combination
    elsif combination[0] == "O" && combination[1] == "O" && combination[2] == "O"
      return combination
    else
      false
    end
  end
end
