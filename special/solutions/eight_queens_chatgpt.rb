class EightQueens
  def initialize
    @board = Array.new(8) { Array.new(8, 0) }
    @queens = 0
  end

  def solve
    if place_queen(0)
      print_solution
    else
      puts "No solution found."
    end
  end

  def place_queen(row)
    if row == 8
      return true
    end

    for col in 0...8
      if is_safe?(row, col)
        @board[row][col] = 1
        @queens += 1

        if place_queen(row + 1)
          return true
        end

        @board[row][col] = 0
        @queens -= 1
      end
    end

    return false
  end

  def is_safe?(row, col)
    for r in 0...row
      if @board[r][col] == 1
        return false
      end
    end

    for r, c in row.downto(0).zip(col.downto(0))
      if @board[r][c] == 1
        return false
      end
    end

    for r, c in row.downto(0).zip(col+1..8)
      if @board[r][c] == 1
        return false
      end
    end

    return true
  end

  def print_solution
    puts "8 Queens problem solution:"
    for row in @board
      puts row.join(" ")
    end
  end
end

# Usage
eight_queens = EightQueens.new
eight_queens.solve