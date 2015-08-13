LETTERS = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h']
NUMBERS = ['1', '2', '3', '4', '5', '6', '7', '8']
VECTORS = [
  [2, 1],
  [2, -1],
  [1, 2],
  [1, -2],
  [-1, 2],
  [-1, -2],
  [-2, 1],
  [-2, -1]
]

File.open('input.txt').each_line do |line|
  val1 = LETTERS.index(line[0])
  val2 = NUMBERS.index(line[1])

  def all_moves(val1, val2)
    VECTORS.map do |vector|
      move(LETTERS, val1, vector[0]) + move(NUMBERS, val2, vector[1])
    end
  end

  def move(array, start, move)
    index = start - move
    index >= 0 && index <= 7 ? array[index] : 'error'
  end

  def right_moves(moves)
    moves.select do |move|
      move.length == 2
    end.join(' ')
  end
  puts right_moves(all_moves(val1, val2))
end
