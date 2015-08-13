File.open('input.txt').each_line do |line|
  array = line.split(' ')

  def occurences(numbers)
    numbers.each_with_object(Hash.new(0)) { |number, counts| counts[number] += 1 }
  end

  def unique(numbers)
    occurences(numbers).select do |_, value|
      value == 1
    end
  end

  def result(numbers)
    if unique(numbers).empty?
      '0'
    else
      numbers.index(unique(numbers).keys.min) + 1
    end
  end

  puts result(array)
end
