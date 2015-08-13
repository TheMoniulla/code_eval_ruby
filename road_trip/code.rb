File.open('input.txt').each_line do |line|
  line = line.strip.split('; ')

  def array_with_numbers(numbers)
    numbers.map do |number|
      number.match(/\d+/).to_s
    end.map(&:to_i).sort
  end

  def distances(numbers)
    result = []
    array = array_with_numbers(numbers)
    for i in 0..array.length - 2
      result.push(array[i + 1] - array[i])
    end
    result.unshift(array[0]).join(',')
  end

  puts distances(line)
end
