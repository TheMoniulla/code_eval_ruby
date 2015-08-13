File.open('input.txt').each_line do |line|
  numbers = line.scan(/-?\d+/)

  def distance(numbers, index_1, index_2)
    numbers[index_1].to_i - numbers[index_2].to_i
  end

  x = distance(numbers, 0, 2)
  y = distance(numbers, 1, 3)

  puts Math.sqrt((x**2) + (y**2)).to_i
end
