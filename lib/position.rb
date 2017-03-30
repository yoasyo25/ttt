class Position

  attr_accessor :board, :turn
  DIM = 3
  SIZE = DIM * DIM

  def initialize(board=nil, turn="x")
    @board = %w(-)*SIZE || board
    @turn = "x"
  end

  def move(idx)
    position = Position.new(@board.dup, xturn("o", "x"))
    position.board[idx] = turn
    position
  end

  def xturn(x,o)
    turn == "x" ? x : o
  end

  def possible_moves
    @board.map.with_index { |p, i| i if p=="-"}.compact
  end

end
