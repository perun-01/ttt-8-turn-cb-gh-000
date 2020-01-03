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
        puts "INVALID INPUT"
        turn(board)
      end
    elsif index>8
      puts "INVALID INPUT"
      turn(board)
    end
end
