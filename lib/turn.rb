def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  valid_move?(board, index)

end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def input_to_index(input)
  index = input.to_i - 1
end

def move(board, index, value="X")
  board[index] = value
  display_board(board)
end

# code your #valid_move? method here
def valid_move?(board, index)
    if index<=8
      if board[index]== " " || board[index]== ""
        move(board, index, value="X")
      elsif board[index]== "X" || board[index]== "O"
      end
    elsif index>8
      puts "INVALID INPUT"
      turn(board)
      return 1
    end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index]== " " || board[index]== ""
    return false
  elsif board[index]== nil
    return false
  elsif board[index]== "X" || board[index]== "O"
    return true
  end


end
