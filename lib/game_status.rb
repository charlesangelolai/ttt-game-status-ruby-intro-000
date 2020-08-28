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
  x_win = 0
  o_win = 0

  if board.empty?
    return false
  else
    
  end

  WIN_COMBINATIONS.each do |combination|
    combination.each do |index|

      # checks if player X wins
      if board[index] == "X"
        x_win += 1

        if x_win == 3
          return combination
        end
      else
        x_win = 0
      end

      # checks if player O wins
      if board[index] == "O"
        o_win += 1

        if o_win == 3
          return combination
        end
      else
        o_win = 0
      end
    end

    if

  end
end
