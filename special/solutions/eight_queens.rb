# Place eight chess queens on an 8x8 chessboard so that no two queens threaten each other.
# Thus, a solution requires that no two queens share the same row, column, or diagonal.

def new_board
  [
    [1,2,1,4,5,6,7,8], # H
    [1,2,3,4,1,6,7,8], # G
    [1,2,3,4,6,6,1,8], # F
    [1,1,3,9,5,6,7,8], # E
    [1,2,3,1,5,6,7,8], # D
    [1,2,3,4,5,1,7,8], # C
    [1,2,3,4,5,6,7,1], # B
    [1,2,3,4,5,6,7,8], # A
  ]
end

require'pry'

def diagonal_threath(row, column, board)
  (1..7).each do |x|
    if board[row - x]
      return true if board[row - x][column + x] == :Q
      return true if board[row - x][column - x] == :Q
    end

    if board[row + x]
      return true if board[row + x][column + x] == :Q
      return true if board[row + x][column - x] == :Q
    end
  end
  false
end

def place_queen(row, column, board)
  return false if !board[row] || !board[row][column]
  return false if board[row].include?(:Q)
  8.times { |x| return false if board[x][column] == :Q }
  return false if diagonal_threath(row, column, board)

  board[row][column] = :Q
  true
end

board = new_board
8.times do |row|
  8.times do |column|
    unless place_queen(row, column, board)
      board[row - 1] = [1,2,3,4,5,6,7,8]
      place_queen(row, column, board)
      8.times do |prev_col|
        place_queen(row - 1, prev_col, board)
      end
    end
  end

  puts "row: #{row+1}"
  pp board

  puts
  puts
  puts
end

# puts "i: #{i}, counts: #{counts}"
pp board
