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
  each.WIN_COMBINATIONS do |win_index|
    win_index_1 = win_index[0]
    win_index_2 = win_index[1]
    win_index_3 = win_index[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position = "X" && position 2 == "X" && position_3 == "X"
      return win_combination
    else
      false
    end
end