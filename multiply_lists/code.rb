File.open('input.txt').each_line do |line|
  array = line.split('|')

  def numbers(string)
    string.strip.split(' ').map(&:to_i)
  end

  numbers_1 = numbers(array[0])
  numbers_2 = numbers(array[1])

  def multiply(nums_1, nums_2)
    nums_1.each_with_index.map do |num, index|
      num * nums_2[index]
    end
  end

  puts(multiply(numbers_1, numbers_2).join(' '))
end
