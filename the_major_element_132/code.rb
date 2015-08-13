File.open('input.txt').each_line do |line|
  array = line.strip.split(',')

  def occurences(numbers)
    numbers.each_with_object(Hash.new(0)) { |number, counts| counts[number] += 1 }
  end

  def unique(numbers)
    occurences(numbers).select do |_, value|
      value >= numbers.length/2
    end
  end

  def result (numbers)
    numbers.empty? ? 'NONE' : numbers.keys.first
  end

  puts result(unique(array))
end
