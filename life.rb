require 'pry'

class Life
  attr_accessor :board
  attr_accessor :last_frame

  def initialize()
    # custom width/height
    # starting positions filled
    @board = [
      [0,0,0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0,0,0]
    ]
  end

  def print_board
    board.each_with_index do |row, index|
      row.each_with_index do |cell, index|
        print " #{cell} "
        if index == (row.length - 1)
          print "\n"
        end
      end
    end
  end

  def compute_cell(cell, x, y)
    binding.pry
  end

  def run_generation
    last_frame = board
    y = 0
    y_max = board.length - 1
    x = 0
    x_max = board.first.length - 1

    # cell = board[y][x]
    until y > y_max
      until x > x_max
        compute_cell(board[x][y], x, y)
        x += 1
      end
      x = 0
      y += 1
    end

    # for any given coord, as long as y +/- 1 is greater than zero
    # or less than or equal to y_max, it has neighbors. if not - it's
    # on some border
    #
    # for each cell, check neighbors
    #   - need to know which position i'm at
    #     - then use this to mark new board's same position
    # based on the rules, redraw this cell to board
    #
    #board.each do |row|
    #  row[Range.new(0, board.length-1).to_a.sample] = rand(2)
    #end
  end

  def run_game
    while true do
      system("clear")
      run_generation
      print_board
      sleep 0.1
    end
  end

end
