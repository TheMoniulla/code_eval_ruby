File.open('input.txt').each_line do |line|
  array = line.split(',').map(&:to_i)

  def modulo(numbers)
    numbers[0] = numbers[0] - numbers[1] while numbers[0] > numbers[1]
    numbers[0]
  end

  puts(modulo(array))
end
