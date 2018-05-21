def display_board(board)

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
user_input.to_i - 1
end

def move(board, position, character = "X")
  board[position] = character
end

def valid_move?(board, index)
  if index > 0
    index-1
  end
  if index > 8
    false
  elsif position_taken?(board, index)
    false
  else
    true
  end
end

def position_taken?(board, index)
  if  board[index] == "" || board[index] == " " || board[index] == nil
    false
  else board[index] == "X" || board[index] == "O"
    true
  end
end
