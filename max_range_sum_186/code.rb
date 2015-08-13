File.open('input.txt').each_line do |line|
  line = line.split(';')
  numbers = line[1].split(' ').map(&:to_i)
  x = line[0].to_i

  def sum_of_numbers(numbers, x)
    numbers.each_with_index.map do |number, index|
      array = numbers.slice(index, x).compact
      if array.length == x
        array.inject { |sum, num| sum + num }
      else
        0
      end
    end.max
  end

  puts sum_of_numbers(numbers, x)
end
