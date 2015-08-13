File.open('input.txt').each_line do |line|
  numbers = line.to_i

  def even_or_odd(number)
    number.even? ? 1 : 0
  end

  puts(even_or_odd(numbers))
end
