File.open('input.txt').each_line do |line|
  def multiples_of_numbers(num1, num2)
    num2 *= 2 while num2 < num1
    num2
  end

  numbers = line.split(',')
  num1 = numbers[0].to_i
  num2 = numbers[1].to_i
  puts(multiples_of_numbers(num1, num2))
end
