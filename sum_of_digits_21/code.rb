File.open('input.txt').each_line do |line|
  numbers = line.split('').map(&:to_i)

  def sum_of_digits (array)
    array.inject(0) { |sum, number| sum + number }
  end

  puts sum_of_digits(numbers)
end
