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
  [2,4,6],
]

def won?(board)
  win_comb = []
  check = 0
    WIN_COMBINATIONS.each do |comb|
    if comb[0] == comb[1] && comb[0] == comb[2] && comb[1] == comb[2]
      win_comb = comb
      check = 1
    end
  end
  if check == 1
    return win_comb
  else
    return false
  end
end

def full?(board)
  board.each do |cell|
    if cell == " " || cell == "" || cell == nil
      return false
    end
  end
  return true
end

def draw?(board)
  if full?(board) && !won?(board)
    return true
  else
    return false
  end
end

def over?(board)
  if draw?(board) || full?(board) || won?(board)
    return true
  else
    return false
  end
end

def winner(board)
  if !won?(board)
    return nil
  else
    a = []
    a = won?(board)
    return a[0]
  end
end
