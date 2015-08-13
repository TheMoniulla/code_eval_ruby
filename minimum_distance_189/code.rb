File.open('input.txt').each_line do |line|
  numbers = line.split(' ').map(&:to_i)

  def minimum_distance(numbers)
    numbers[1..-1].inject(0) do |sum, number|
      sum += (numbers[0] - number).abs
    end
  end
  
  puts minimum_distance(numbers)
end
